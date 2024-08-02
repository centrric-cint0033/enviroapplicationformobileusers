import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
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
class SiteFolderDetailPage extends StatelessWidget {
  const SiteFolderDetailPage({
    super.key,
    this.folderName,
    this.searchType,
    this.siteId,
  });

  final String? folderName;
  final String? searchType;
  final int? siteId;

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
            title: cmnTitleWidget('Site Folder'),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Observer(
              builder: (context) {
                final res = vmSite.siteFoldersResponse2;
                FolderListModel? folderList = res.data;
                FolderListModel? fileList = res.data;
                final editResponse = vmSite.editSiteFileResponse;
                final addFolderResponse = vmSite.addSiteFolderResponse;
                final addFileResponse = vmSite.addSiteFileResponse;
                final editFolderResponse = vmSite.editSiteFolderResponse;
                return res.loading
                    ? Center(child: wwCustomLoader())
                    : SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sized0hx10,
                              Text(vmSite.folderNames.join(' > ')),
                              sized0hx10,
                              Row(
                                children: [
                                  Expanded(
                                    child: WWTextField(
                                      controller: vmSite.fileFolderSearchCntrlr,
                                      onChanged: (v) =>
                                          vmTeam.onTextChanged(() {
                                        v.isEmpty
                                            ? vmSite.getSiteFolderss(
                                                id: siteId ?? 0,
                                                parentFolderId:
                                                    vmSite.parentFolderId ?? 1)
                                            : vmSite.fileFolderSearchApi(
                                                v,
                                                vmSite.parentFolderId ?? 1,
                                                vmSite.searchType ?? "",
                                                siteId ?? 0);
                                      }),
                                      suffixTap: () {},
                                      hintText: 'Search',
                                    ),
                                  ),
                                  sized0wx10,
                                  customButton(() {
                                    showCreateEditDialog(context,
                                        createEditTap: (v) {
                                      vmSite.addSiteFolderApi(
                                          siteId: siteId ?? 0,
                                          context: context,
                                          name: v,
                                          parentfolder:
                                              vmSite.parentFolderId ?? 1);
                                    });
                                  }, Appthemes.cPrimary, "Folder +"),
                                  sized0wx10,
                                  customButton(() async {
                                    FilePickerResult? result =
                                        await FilePicker.platform.pickFiles();
                                    if (result != null) {
                                      String fileName =
                                          result.files.single.name;
                                      vmSite.selectedFileName = fileName;
                                      PlatformFile file = result.files.single;
                                      vmSite.selectedFilePath = file.path!;
                                      // ignore: use_build_context_synchronously
                                      vmSite.addSiteFileApi(
                                          context: context,
                                          siteId: siteId ?? 0,
                                          files: vmSite.selectedFilePath,
                                          parentfolder:
                                              vmSite.parentFolderId ?? 1);
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
                                            var data = vmSite
                                                .siteFoldersResponse2
                                                .data
                                                ?.folders?[0]
                                                .folders?[index];
                                            if (data != null) {
                                              return res.loading
                                                  ? const CupertinoActivityIndicator()
                                                  : WWFolderCard(
                                                      folder: data,
                                                      onTap: () async {
                                                        await vmSite
                                                            .getSiteFolderss(
                                                          id: siteId ?? 0,
                                                          parentFolderId:
                                                              data.id ?? 0,
                                                        );
                                                        vmSite.parentFolderId =
                                                            data.id;
                                                        vmSite.searchType =
                                                            data.type;
                                                        vmSite.folderNames.add(
                                                            "${data.name}");

                                                        vmSite
                                                            .fileFolderSearchCntrlr
                                                            .text = "";
                                                        context.router.push(
                                                            SiteFolderDetailRoute(
                                                                folderName:
                                                                    data.name,
                                                                searchType:
                                                                    data.type,
                                                                siteId:
                                                                    siteId ??
                                                                        0));
                                                      },
                                                      folderName: data.name,
                                                      loading: editFolderResponse
                                                              .loading &&
                                                          vmSite.loadinIndexFolder ==
                                                              index,
                                                      editTap: (s) {
                                                        vmSite.loadinIndexFolder =
                                                            index;
                                                        vmSite
                                                            .editSiteFolderApi(
                                                          siteId: siteId ?? 0,
                                                          name: s,
                                                          folderId:
                                                              data.id ?? 0,
                                                          parentFolderId: vmSite
                                                                  .parentFolderId ??
                                                              1,
                                                          context: context,
                                                        );
                                                      },
                                                      deleteTap: () {
                                                        vmSite.deleteSiteFolderApi(
                                                            siteId: siteId ?? 0,
                                                            folderId:
                                                                data.id ?? 0,
                                                            context: context,
                                                            parentFolderId:
                                                                vmSite.parentFolderId ??
                                                                    1);
                                                      });
                                            } else {
                                              return Container();
                                            }
                                          },
                                        )
                                      : SizedBox(
                                          height: 120.w,
                                          child: Center(
                                            child: SvgPicture.asset(
                                              "assets/images/empty1.svg",
                                            ),
                                          ),
                                        ),
                              sized0hx30,
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
                                            var data = vmSite
                                                .siteFoldersResponse2
                                                .data
                                                ?.folders?[0]
                                                .files?[index];
                                            if (data != null) {
                                              return WWFileCard(
                                                  fromSite: true,
                                                  siteId: siteId,
                                                  parentFolderId:
                                                      vmSite.parentFolderId ??
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
                                                      vmSite.loadinIndexFile ==
                                                          index,
                                                  editTap: (s) {
                                                    vmSite.loadinIndexFile =
                                                        index;
                                                    vmSite.editSiteFilesApi(
                                                      context: context,
                                                      name: s,
                                                      siteId: siteId ?? 0,
                                                      filesId: data.id ?? 0,
                                                      parentFolderId: vmSite
                                                              .parentFolderId ??
                                                          1,
                                                    );
                                                  },
                                                  deleteTap: () {
                                                    vmSite.deleteSiteFilesApi(
                                                      context: context,
                                                      fileId: data.id ?? 0,
                                                      siteId: siteId ?? 0,
                                                      parentFolderId: vmSite
                                                              .parentFolderId ??
                                                          1,
                                                    );
                                                  });
                                            } else {
                                              return Container();
                                            }
                                          },
                                        )
                                      : SizedBox(
                                          height: 120.w,
                                          child: Center(
                                            child: SvgPicture.asset(
                                              "assets/images/empty1.svg",
                                            ),
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
