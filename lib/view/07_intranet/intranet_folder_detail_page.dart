import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_title.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_file_card.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class IntranetFolderDetailPage extends StatelessWidget {
  const IntranetFolderDetailPage({
    super.key,
    this.folderName,
    this.searchType,
  });

  final String? folderName;
  final String? searchType;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // context.router.push(TeamProfileRoute(id: employeeId));
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: cmnTitleWidget('Intranet Folder'),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Observer(
              builder: (context) {
                final res = vmIntranet.intranetFoldersResponse2;
                FolderListModel? folderList = res.data;
                FolderListModel? fileList = res.data;
                final editResponse = vmIntranet.editIntranetFileResponse;
                final addFolderResponse = vmIntranet.addFolderResponse;
                final addFileResponse = vmIntranet.addIntranetFileResponse;
                final editFolderResponse =
                    vmIntranet.editIntranetFolderResponse;
                return res.loading
                    ? Center(child: wwCustomLoader())
                    : SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sized0hx10,
                              Text(vmIntranet.folderNames.join(' > ')),
                              sized0hx10,
                              Row(
                                children: [
                                  Expanded(
                                    child: WWTextField(
                                      controller:
                                          vmIntranet.fileFolderSearchCntrlr,
                                      onChanged: (v) =>
                                          vmTeam.onTextChanged(() {
                                        v.isEmpty
                                            ? vmIntranet.getIntranetFoldersApi(
                                                parentFolderId:
                                                    vmIntranet.parentFolderId ??
                                                        1)
                                            : vmIntranet.fileFolderSearchApi(
                                                v,
                                                vmIntranet.parentFolderId ?? 1,
                                                vmIntranet.searchType ?? "",
                                              );
                                      }),
                                      suffixTap: () {},
                                      hintText: 'Search',
                                    ),
                                  ),
                                  sized0wx10,
                                  customButton(() {
                                    showCreateEditDialog(context,
                                        createEditTap: (v) {
                                      vmIntranet.addIntranetFolder(
                                          context: context,
                                          name: v,
                                          parentfolder:
                                              vmIntranet.parentFolderId ?? 1);
                                    });
                                  }, Appthemes.cPrimary, "Folder +"),
                                  sized0wx10,
                                  customButton(() async {
                                    FilePickerResult? result =
                                        await FilePicker.platform.pickFiles();
                                    if (result != null) {
                                      String fileName =
                                          result.files.single.name;
                                      vmIntranet.selectedFileName = fileName;
                                      PlatformFile file = result.files.single;
                                      vmIntranet.selectedFilePath = file.path!;
                                      // ignore: use_build_context_synchronously
                                      vmIntranet.addIntranetFileApi(
                                          context: context,
                                          files: vmIntranet.selectedFilePath,
                                          parentfolder:
                                              vmIntranet.parentFolderId ?? 1);
                                    }
                                  }, Appthemes.cPrimary, "Files +")
                                ],
                              ),
                              sized0hx20,
                              addFolderResponse.loading
                                  ? const Center(
                                      child: CupertinoActivityIndicator())
                                  : folderList?.folders?[0].folders != null &&
                                          folderList!
                                              .folders![0].folders!.isNotEmpty
                                      ? ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder:
                                              (BuildContext context,
                                                      int index) =>
                                                  sized0hx10,
                                          itemCount: folderList.folders?[0]
                                                  .folders?.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            var data = vmIntranet
                                                .intranetFoldersResponse2
                                                .data
                                                ?.folders?[0]
                                                .folders?[index];
                                            if (data != null) {
                                              return res.loading
                                                  ? const CupertinoActivityIndicator()
                                                  : WWFolderCard(
                                                      folder: data,
                                                      onTap: () async {
                                                        await vmIntranet
                                                            .getIntranetFoldersApi(
                                                          parentFolderId:
                                                              data.id ?? 0,
                                                        );
                                                        vmIntranet
                                                                .parentFolderId =
                                                            data.id;
                                                        vmIntranet.folderNames
                                                            .add(
                                                                "${data.name}");
                                                        context.router.push(
                                                            IntranetFolderDetailRoute(
                                                          folderName: data.name,
                                                          searchType: data.type,
                                                        ));
                                                      },
                                                      folderName: data.name,
                                                      loading: editFolderResponse
                                                              .loading &&
                                                          vmIntranet
                                                                  .loadinIndexFolder ==
                                                              index,
                                                      editTap: (s) {
                                                        vmIntranet
                                                                .loadinIndexFolder =
                                                            index;
                                                        vmIntranet
                                                            .editIntranetFolderApi(
                                                          name: s,
                                                          folderId:
                                                              data.id ?? 0,
                                                          parentFolderId: vmOhs
                                                                  .parentFolderId ??
                                                              1,
                                                          context: context,
                                                        );
                                                      },
                                                      deleteTap: () {
                                                        vmIntranet
                                                            .deleteIntranetFolderApi(
                                                                folderId:
                                                                    data.id ??
                                                                        0,
                                                                context:
                                                                    context,
                                                                parentFolderId:
                                                                    vmIntranet
                                                                            .parentFolderId ??
                                                                        1);
                                                      });
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
                              sized0hx10,
                              cmTitle('Files', fontWeight: FontWeight.bold),
                              sized0hx10,
                              addFileResponse.loading
                                  ? const Center(
                                      child: CupertinoActivityIndicator())
                                  : fileList?.folders?[0].files != null &&
                                          fileList!
                                              .folders![0].files!.isNotEmpty
                                      ? ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder:
                                              (BuildContext context,
                                                      int index) =>
                                                  sized0hx10,
                                          itemCount: folderList
                                                  ?.folders?[0].files?.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            var data = vmIntranet
                                                .intranetFoldersResponse2
                                                .data
                                                ?.folders?[0]
                                                .files?[index];
                                            if (data != null) {
                                              return WWFileCard(
                                                  fromIntranet: true,
                                                  parentFolderId: vmIntranet
                                                          .parentFolderId ??
                                                      1,
                                                  file: data,
                                                  onTap: () async {
                                                    if (await canLaunch(
                                                        "${data.url}")) {
                                                      await launch(
                                                          "${data.url}");
                                                    } else {
                                                      throw 'Could not launch ${data.url}';
                                                    }
                                                  },
                                                  fileName: data.name,
                                                  loading: editResponse
                                                          .loading &&
                                                      vmIntranet
                                                              .loadinIndexFile ==
                                                          index,
                                                  editTap: (s) {
                                                    vmIntranet.loadinIndexFile =
                                                        index;
                                                    vmIntranet
                                                        .editIntranetFilesApi(
                                                      name: s,
                                                      filesId: data.id ?? 0,
                                                      parentFolderId: vmVehicle
                                                              .parentFolderId ??
                                                          1,
                                                      context: context,
                                                    );
                                                  },
                                                  deleteTap: () {
                                                    vmIntranet
                                                        .deleteIntranetFilesApi(
                                                      fileId: data.id ?? 0,
                                                      context: context,
                                                      parentFolderId: vmVehicle
                                                              .parentFolderId ??
                                                          1,
                                                    );
                                                  });
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
                            ]),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
