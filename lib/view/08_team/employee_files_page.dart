import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_button.dart';
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
class EmployeeFilesPage extends StatelessWidget {
  const EmployeeFilesPage({
    super.key,
    this.employeeId,
    this.folderName,
    this.folderId,
    this.searchType,
  });
  final num? employeeId;
  final String? folderName;
  final num? folderId;
  final String? searchType;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: cmnTitleWidget('Employee Files'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Observer(
            builder: (context) {
              final res = vmTeam.teamFoldersResponse2;
              FolderListModel? folderList = res.data;
              FolderListModel? fileList = res.data;
              final editResponse = vmTeam.editFileResponse;
              final addFolderResponse = vmTeam.addFolderResponse;
              final addFileResponse = vmTeam.addFileResponse;
              final editFolderResponse = vmTeam.editFolderResponse;
              return res.loading
                  ? Center(child: wwCustomLoader())
                  : SingleChildScrollView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sized0hx10,
                            Text(vmTeam.folderNames.join(' > ')),
                            sized0hx10,
                            Row(
                              children: [
                                Expanded(
                                  child: WWTextField(
                                    controller: vmTeam.fileFolderSearchCntrlr,
                                    onChanged: (v) => vmTeam.onTextChanged(() =>
                                        v.isEmpty
                                            ? vmTeam.getTeamFolders(
                                                id: employeeId ?? 0,
                                                parentFolderId: folderId ?? 0)
                                            : vmTeam.fileFolderSearchApi(
                                                v,
                                                folderId!,
                                                searchType!,
                                                employeeId!)),
                                    suffixTap: () {},
                                    hintText: 'Search',
                                  ),
                                ),
                                sized0wx10,
                                customButton(() {
                                  showCreateEditDialog(context,
                                      createEditTap: (v) {
                                    vmTeam.addTeamFolder(
                                        context: context,
                                        employee: employeeId ?? 0,
                                        name: v,
                                        parentfolder: folderId ?? 1);
                                  });
                                }, Appthemes.cPrimary, "Folder +"),
                                sized0wx10,
                                customButton(() async {
                                  FilePickerResult? result =
                                      await FilePicker.platform.pickFiles();
                                  if (result != null) {
                                    String fileName = result.files.single.name;
                                    vmTeam.selectedFileName = fileName;
                                    PlatformFile file = result.files.single;
                                    vmTeam.selectedFilePath = file.path!;
                                    // ignore: use_build_context_synchronously
                                    vmTeam.addTeamFile(
                                        context: context,
                                        employee: employeeId ?? 0,
                                        files: vmTeam.selectedFilePath,
                                        parentfolder: folderId ?? 1);
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
                                            (BuildContext context, int index) =>
                                                sized0hx10,
                                        itemCount: folderList
                                                .folders?[0].folders?.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          var data = vmTeam
                                              .teamFoldersResponse2
                                              .data
                                              ?.folders?[0]
                                              .folders?[index];
                                          if (data != null) {
                                            return res.loading
                                                ? const CupertinoActivityIndicator()
                                                : WWFolderCard(
                                                    folder: data,
                                                    onTap: () async {
                                                      await vmTeam
                                                          .getTeamFolders(
                                                        id: employeeId ?? 0,
                                                        parentFolderId:
                                                            data.id ?? 0,
                                                      );
                                                      vmTeam.folderNames
                                                          .add("${data.name}");
                                                      context.router.push(
                                                          EmployeeFilesRoute(
                                                              employeeId:
                                                                  employeeId,
                                                              folderName:
                                                                  data.name,
                                                              folderId: data.id,
                                                              searchType:
                                                                  data.type));
                                                    },
                                                    folderName: data.name,
                                                    loading: editFolderResponse
                                                            .loading &&
                                                        vmTeam.loadinIndexFolder ==
                                                            index,
                                                    editTap: (s) {
                                                      vmTeam.loadinIndexFolder =
                                                          index;
                                                      vmTeam.editTeamFolderApi(
                                                          name: s,
                                                          folderId:
                                                              data.id ?? 0,
                                                          parentFolderId:
                                                              int.parse(
                                                                  "$folderId"),
                                                          context: context,
                                                          employeeID:
                                                              employeeId ?? 0);
                                                    },
                                                    deleteTap: () => vmTeam
                                                        .deleteTeamFolderApi(
                                                            folderId:
                                                                data.id ?? 0,
                                                            context: context,
                                                            employeeID:
                                                                employeeId ?? 0,
                                                            parentFolderId:
                                                                folderId ?? 1));
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
                            sized0hx30,
                            cmTitle('Files', fontWeight: FontWeight.bold),
                            sized0hx10,
                            addFileResponse.loading
                                ? const Center(
                                    child: CupertinoActivityIndicator())
                                : fileList?.folders?[0].files != null &&
                                        fileList!.folders![0].files!.isNotEmpty
                                    ? ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder:
                                            (BuildContext context, int index) =>
                                                sized0hx10,
                                        itemCount: folderList
                                                ?.folders?[0].files?.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          var data = vmTeam.teamFoldersResponse2
                                              .data?.folders?[0].files?[index];
                                          if (data != null) {
                                            return WWFileCard(
                                                employeeID: employeeId ?? 0,
                                                parentFolderId: folderId ?? 1,
                                                file: data,
                                                onTap: () async {
                                                  if (await canLaunch(
                                                      "${data.url}")) {
                                                    await launch("${data.url}");
                                                  } else {
                                                    throw 'Could not launch ${data.url}';
                                                  }
                                                },
                                                fileName: data.name,
                                                loading: editResponse.loading &&
                                                    vmTeam.loadinIndexFile ==
                                                        index,
                                                editTap: (s) {
                                                  vmTeam.loadinIndexFile =
                                                      index;
                                                  vmTeam.editTeamFilesApi(
                                                      name: s,
                                                      filesId: data.id ?? 0,
                                                      parentFolderId: int.parse(
                                                          "$folderId"),
                                                      context: context,
                                                      employeeID:
                                                          employeeId ?? 0);
                                                },
                                                deleteTap: () =>
                                                    vmTeam.deleteTeamFilesApi(
                                                        fileId: data.id ?? 0,
                                                        context: context,
                                                        employeeID:
                                                            employeeId ?? 0,
                                                        parentFolderId:
                                                            folderId ?? 1));
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
    );
  }
}
