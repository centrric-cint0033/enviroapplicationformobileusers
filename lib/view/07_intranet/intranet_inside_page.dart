import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/07_intranet/intraner_widgets/intranet_widgets.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class IntranetInsidePage extends StatelessWidget {
  final String folderName;
  final int parentId;

  const IntranetInsidePage(
      {Key? key, required this.parentId, required this.folderName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget(folderName),
        actions: [notificationButton(context)],
      ),
      body: Padding(
        padding: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WWTextField(
              controller: TextEditingController(),
              hintText: 'Search',
              suffixTap: () {},
            ),
            gapFieldIntra,
            Row(
              children: [
                CmButton(
                    text: 'Add folder+',
                    onPressed: () => showCreateEditDialog(context,
                        createEditTap: (v) =>
                            vmOhs.ohsfoldercreationviewmodelfunction(
                                v, 1))), //_showMyfolderDialog(context)),
                const SizedBox(width: 8),
                CmButton(text: 'Files +', onPressed: () {}),
              ],
            ),
            gapFieldIntra,
            Expanded(
              child: Observer(builder: (_) {
                var response = vmIntranet.intranetfolderinsideResponse;
                var data = response.data;
                bool isEmpty = (data?.folders?.isEmpty ?? true)
                    ? true
                    : data?.folders![0].folders?.isEmpty ?? true;

                return WWResponseHandler(
                    data: response,
                    isEmpty: isEmpty,
                    onTap: () =>
                        vmIntranet.intranetfolderinsidefunction(parentId),
                    child: InsideFolderList(parentId: parentId));
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class InsideFolderList extends StatelessWidget {
  final int parentId;
  const InsideFolderList({super.key, required this.parentId});

  @override
  Widget build(BuildContext context) {
    final List<FolderModel>? subFolders =
        vmIntranet.intranetfolderinsideResponse.data?.folders![0].folders;
    return ListView.separated(
      shrinkWrap: true,
      itemCount: subFolders?.length ?? 0,
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => gapFieldIntra,
      itemBuilder: (BuildContext context, int index) {
        return WWFolderCard(
            folder: subFolders![index],
            editTap: (v) {
              vmOhs.ohsFolerRenameApi(context, v, subFolders[index].id!);
            },
            deleteTap: () {
              vmOhs.folderdeleteviewmodelfunction(
                  'folders', subFolders[index].id!, parentId);
            },
            onTap: () {});
      },
    );
  }
}
