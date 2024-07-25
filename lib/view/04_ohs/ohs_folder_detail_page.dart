import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
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
class OhsFolderDetailPage extends StatelessWidget {
  const OhsFolderDetailPage({
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
            title: cmnTitleWidget('OH&S Folder'),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Observer(
              builder: (context) {
                final res = vmOhs.ohsFoldersResponse2;
                FolderListModel? folderList = res.data;
                FolderListModel? fileList = res.data;
                final editResponse = vmOhs.ohsEditFileResponse;
                final addFolderResponse = vmOhs.addFolderResponse;
                final addFileResponse = vmOhs.ohsAddFileResponse;
                final editFolderResponse = vmOhs.ohsEditFolderResponse;
                return res.loading
                    ? Center(child: wwCustomLoader())
                    : SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sized0hx10,
                              Text(vmOhs.folderNames.join(' > ')),
                              sized0hx10,
                              Row(
                                children: [
                                  Expanded(
                                    child: WWTextField(
                                      controller: vmOhs.filefolderSearchCntrlr,
                                      onChanged: (v) =>
                                          vmTeam.onTextChanged(() {
                                        v.isEmpty
                                            ? vmOhs.getFoldersOhs(
                                                parentFolderId:
                                                    vmOhs.parentFolderId ?? 1)
                                            : vmOhs.ohsfileFolderSearchApi(
                                                v,
                                                vmOhs.parentFolderId ?? 1,
                                                vmOhs.searchType ?? "general",
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
                                      vmOhs.addFolderOhs(
                                          context: context,
                                          name: v,
                                          parentfolder:
                                              vmOhs.parentFolderId ?? 1);
                                    });
                                  }, Appthemes.cPrimary, "Folder +"),
                                  sized0wx10,
                                  customButton(() async {
                                    FilePickerResult? result =
                                        await FilePicker.platform.pickFiles();
                                    if (result != null) {
                                      String fileName =
                                          result.files.single.name;
                                      vmOhs.selectedFileName = fileName;
                                      PlatformFile file = result.files.single;
                                      vmOhs.selectedFilePath = file.path!;
                                      // ignore: use_build_context_synchronously
                                      vmOhs.ohsAddFile(
                                          context: context,
                                          name: vmOhs.selectedFileName ?? "",
                                          files: vmOhs.selectedFilePath,
                                          parentfolder:
                                              vmOhs.parentFolderId ?? 1);
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
                                            var data = vmOhs
                                                .ohsFoldersResponse2
                                                .data
                                                ?.folders?[0]
                                                .folders?[index];
                                            if (data != null) {
                                              return res.loading
                                                  ? const CupertinoActivityIndicator()
                                                  : WWFolderCard(
                                                      folder: data,
                                                      onTap: () async {
                                                        await vmOhs
                                                            .getFoldersOhs(
                                                          parentFolderId:
                                                              data.id ?? 0,
                                                        );
                                                        vmOhs.parentFolderId =
                                                            data.id;
                                                        vmOhs.folderNames.add(
                                                            "${data.name}");
                                                        context.router.push(
                                                            OhsFolderDetailRoute(
                                                                folderName:
                                                                    data.name,
                                                                searchType:
                                                                    data.type));
                                                      },
                                                      folderName: data.name,
                                                      loading: editFolderResponse
                                                              .loading &&
                                                          vmOhs.loadinIndexFolder ==
                                                              index,
                                                      editTap: (s) {
                                                        vmOhs.loadinIndexFolder =
                                                            index;
                                                        vmOhs.editFolderOhsApi(
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
                                                        vmOhs.ohsDeleteFolderApi(
                                                            folderId:
                                                                data.id ?? 0,
                                                            context: context,
                                                            parentFolderId:
                                                                vmOhs.parentFolderId ??
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
                                            var data = vmOhs
                                                .ohsFoldersResponse2
                                                .data
                                                ?.folders?[0]
                                                .files?[index];
                                            if (data != null) {
                                              return WWFileCard(
                                                  fromOhs: true,
                                                  parentFolderId:
                                                      vmOhs.parentFolderId ?? 1,
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
                                                      vmOhs.loadinIndexFile ==
                                                          index,
                                                  editTap: (s) {
                                                    vmOhs.loadinIndexFile =
                                                        index;
                                                    vmOhs.editFileOhsApi(
                                                      name: s,
                                                      fileId: data.id ?? 0,
                                                      parentFolderId: vmOhs
                                                              .parentFolderId ??
                                                          1,
                                                      context: context,
                                                    );
                                                  },
                                                  deleteTap: () {
                                                    vmOhs.deleteFilesOhsApi(
                                                        fileId: data.id ?? 0,
                                                        context: context,
                                                        parentFolderId: vmOhs
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
