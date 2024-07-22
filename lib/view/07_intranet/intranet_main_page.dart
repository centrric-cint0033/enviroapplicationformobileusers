import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_title.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class IntranetMainPage extends StatelessWidget {
  const IntranetMainPage({super.key, this.vehicleId, this.vehicleType});
  final int? vehicleId;
  final String? vehicleType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Inranet'),
      ),
      body: SingleChildScrollView(child: Observer(builder: (context) {
        final res = vmIntranet.intranetFoldersResponse;
        FolderListModel? folderList = res.data;
        return Padding(
          padding: screenWidth,
          child: Column(
            children: [
              sized0hx10,
              cmTitle('Intranet Folder', fontWeight: FontWeight.bold),
              sized0hx10,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Folders'),
                ),
                CmButton(
                    text: 'Add folders+',
                    onPressed: () {
                      showCreateEditDialog(context, createEditTap: (v) {
                        vmIntranet.addIntranetFolder(
                          context: context,
                          name: v,
                          parentfolder: 1,
                        );
                      });
                    }),
              ]),
              sized0hx10,
              WWTextField(
                controller: vmIntranet.folderSearchCntrlr,
                onChanged: (v) => vmTeam.onTextChanged(() {
                  v.isEmpty
                      ? vmIntranet.getIntranetFoldersApi(parentFolderId: 1)
                      : vmIntranet.folderSearchIntranetApi(
                          v,
                          1,
                          vmIntranet.searchType ?? "general",
                        );
                }),
                suffixTap: () {},
                hintText: 'Search by Folder Name',
              ),
              sized0hx10,
              folderList?.folders != null && folderList!.folders!.isNotEmpty
                  ? res.loading
                      ? wwCustomLoader()
                      : ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (BuildContext context, int index) =>
                              sized0hx10,
                          itemCount:
                              folderList.folders?[0].folders?.length ?? 0,
                          itemBuilder: (context, index) {
                            var data = folderList.folders?[0].folders?[index];
                            if (data != null) {
                              return WWFolderCard(
                                  folder: data,
                                  onTap: () async {
                                    vmIntranet.folderNames.clear();
                                    vmIntranet.getIntranetFoldersApi(
                                        parentFolderId: data.id ?? 1);
                                    vmIntranet.folderNames.add("${data.name}");
                                    vmIntranet.parentFolderId = data.id ?? 1;
                                    vmIntranet.searchType =
                                        folderList.folders?[0].type;
                                    vmIntranet.folderSearchCntrlr.text = "";
                                    vmIntranet.fileFolderSearchCntrlr.text = "";
                                    context.router.push(
                                        IntranetFolderDetailRoute(
                                            folderName: data.name,
                                            searchType: data.type));
                                  },
                                  folderName: data.name,
                                  editTap: (s) =>
                                      vmIntranet.editIntranetFolderApi(
                                        name: s,
                                        folderId: data.id ?? 0,
                                        parentFolderId: 1,
                                        context: context,
                                      ),
                                  deleteTap: () =>
                                      vmIntranet.deleteIntranetFolderApi(
                                          folderId: data.id ?? 0,
                                          context: context,
                                          parentFolderId: 1));
                            } else {
                              return Container();
                            }
                          },
                        )
                  : Center(
                      child: SvgPicture.asset(
                        "assets/images/empty1.svg",
                      ),
                    ),
            ],
          ),
        );
      })),
    );
  }
}
