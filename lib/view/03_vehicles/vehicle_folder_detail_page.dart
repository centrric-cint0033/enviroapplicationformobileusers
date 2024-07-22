import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
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
class VehicleFolderDetailPage extends StatelessWidget {
  const VehicleFolderDetailPage({
    super.key,
    this.folderName,
    this.searchType,
    this.vehicleId,
    this.vehicleType,
    this.folder,
  });
  final int? vehicleId;
  final int? folder;
  final String? folderName;
  final String? searchType;
  final String? vehicleType;
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
            title: vmVehicle.vehicleStatusType == VehicleActionType.vehicleList
                ? cmnTitleWidget('Vehicle Folder Detail')
                : cmnTitleWidget('Folders'),
          ),
          body: vmVehicle.vehicleStatusType == VehicleActionType.vehicleList
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Observer(
                    builder: (context) {
                      final res = vmVehicle.vehicleFoldersResponse2;
                      FolderListModel? folderList = res.data;
                      FolderListModel? fileList = res.data;
                      final editResponse = vmVehicle.editVehicleFileResponse;
                      final addFolderResponse = vmVehicle.addFolderResponse;
                      final addFileResponse = vmVehicle.addVehicleFileResponse;
                      final editFolderResponse =
                          vmVehicle.editVehicleFolderResponse;
                      return res.loading
                          ? Center(child: wwCustomLoader())
                          : SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    sized0hx10,
                                    Text(vmVehicle.folderNames.join(' > ')),
                                    sized0hx10,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: WWTextField(
                                            controller: vmVehicle
                                                .fileFolderSearchCntrlr,
                                            onChanged: (v) =>
                                                vmTeam.onTextChanged(() {
                                              v.isEmpty
                                                  ? vmVehicle.getVehicleFoldersApi(
                                                      vehicleId: vehicleId ?? 0,
                                                      parentFolderId: vmVehicle
                                                              .parentFolderId ??
                                                          1)
                                                  : vmVehicle.fileFolderSearchApi(
                                                      context,
                                                      v,
                                                      vmVehicle
                                                              .parentFolderId ??
                                                          1,
                                                      searchType ?? "",
                                                      vehicleId ?? 0,
                                                      vehicleType ?? "");
                                            }),
                                            suffixTap: () {},
                                            hintText: 'Search',
                                          ),
                                        ),
                                        sized0wx10,
                                        customButton(() {
                                          showCreateEditDialog(context,
                                              createEditTap: (v) {
                                            vmVehicle.addVehicleFolder(
                                                context: context,
                                                name: v,
                                                vehicleId: vehicleId ?? 0,
                                                vehicleType: vehicleType ?? "",
                                                parentfolder:
                                                    vmVehicle.parentFolderId ??
                                                        1);
                                          });
                                        }, Appthemes.cPrimary, "Folder +"),
                                        sized0wx10,
                                        customButton(() async {
                                          FilePickerResult? result =
                                              await FilePicker.platform
                                                  .pickFiles();
                                          if (result != null) {
                                            String fileName =
                                                result.files.single.name;
                                            vmVehicle.selectedFileName =
                                                fileName;
                                            PlatformFile file =
                                                result.files.single;
                                            vmVehicle.selectedFilePath =
                                                file.path!;
                                            // ignore: use_build_context_synchronously
                                            vmVehicle.addVehicleFileApi(
                                                context: context,
                                                vehicleId: vehicleId ?? 0,
                                                files:
                                                    vmVehicle.selectedFilePath,
                                                parentfolder:
                                                    vmVehicle.parentFolderId ??
                                                        1);
                                          }
                                        }, Appthemes.cPrimary, "Files +")
                                      ],
                                    ),
                                    sized0hx20,
                                    addFolderResponse.loading
                                        ? const Center(
                                            child: CupertinoActivityIndicator())
                                        : folderList?.folders?[0].folders !=
                                                    null &&
                                                folderList!.folders![0].folders!
                                                    .isNotEmpty
                                            ? ListView.separated(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (BuildContext context,
                                                            int index) =>
                                                        sized0hx10,
                                                itemCount: folderList
                                                        .folders?[0]
                                                        .folders
                                                        ?.length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  var data = vmVehicle
                                                      .vehicleFoldersResponse2
                                                      .data
                                                      ?.folders?[0]
                                                      .folders?[index];
                                                  if (data != null) {
                                                    return res.loading
                                                        ? const CupertinoActivityIndicator()
                                                        : WWFolderCard(
                                                            folder: data,
                                                            onTap: () async {
                                                              await vmVehicle
                                                                  .getVehicleFoldersApi(
                                                                vehicleId:
                                                                    vehicleId ??
                                                                        0,
                                                                parentFolderId:
                                                                    data.id ??
                                                                        0,
                                                              );
                                                              vmVehicle
                                                                  .folderSearchCntrlr
                                                                  .text = "";
                                                              vmVehicle
                                                                  .fileFolderSearchCntrlr
                                                                  .text = "";
                                                              vmVehicle
                                                                      .parentFolderId =
                                                                  data.id;
                                                              vmVehicle
                                                                  .folderNames
                                                                  .add(
                                                                      "${data.name}");
                                                              context.router.push(VehicleFolderDetailRoute(
                                                                  folderName:
                                                                      data.name,
                                                                  searchType:
                                                                      data.type,
                                                                  vehicleId:
                                                                      vehicleId,
                                                                  vehicleType:
                                                                      vehicleType));
                                                            },
                                                            folderName:
                                                                data.name,
                                                            loading: editFolderResponse
                                                                    .loading &&
                                                                vmVehicle
                                                                        .loadinIndexFolder ==
                                                                    index,
                                                            editTap: (s) {
                                                              vmVehicle
                                                                      .loadinIndexFolder =
                                                                  index;
                                                              vmVehicle.editVehicleFolderApi(
                                                                  name: s,
                                                                  folderId:
                                                                      data.id ??
                                                                          0,
                                                                  parentFolderId:
                                                                      vmOhs.parentFolderId ??
                                                                          1,
                                                                  context:
                                                                      context,
                                                                  vehicleId:
                                                                      vehicleId ??
                                                                          0);
                                                            },
                                                            deleteTap: () {
                                                              vmVehicle.deleteVehicleFolderApi(
                                                                  folderId:
                                                                      data.id ??
                                                                          0,
                                                                  context:
                                                                      context,
                                                                  vehicleId:
                                                                      vehicleId ??
                                                                          0,
                                                                  parentFolderId:
                                                                      vmVehicle
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
                                    cmTitle('Files',
                                        fontWeight: FontWeight.bold),
                                    sized0hx10,
                                    addFileResponse.loading
                                        ? const Center(
                                            child: CupertinoActivityIndicator())
                                        : fileList?.folders?[0].files != null &&
                                                fileList!.folders![0].files!
                                                    .isNotEmpty
                                            ? ListView.separated(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (BuildContext context,
                                                            int index) =>
                                                        sized0hx10,
                                                itemCount: folderList
                                                        ?.folders?[0]
                                                        .files
                                                        ?.length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  var data = vmVehicle
                                                      .vehicleFoldersResponse2
                                                      .data
                                                      ?.folders?[0]
                                                      .files?[index];
                                                  if (data != null) {
                                                    return WWFileCard(
                                                        fromVehicle: true,
                                                        employeeID: 0,
                                                        parentFolderId: vmVehicle
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
                                                            vmVehicle
                                                                    .loadinIndexFile ==
                                                                index,
                                                        editTap: (s) {
                                                          vmVehicle
                                                                  .loadinIndexFile =
                                                              index;
                                                          vmVehicle.editVehicleFilesApi(
                                                              name: s,
                                                              filesId:
                                                                  data.id ?? 0,
                                                              parentFolderId:
                                                                  vmVehicle
                                                                          .parentFolderId ??
                                                                      1,
                                                              context: context,
                                                              vehicleId:
                                                                  vehicleId ??
                                                                      0);
                                                        },
                                                        deleteTap: () {
                                                          vmVehicle.deleteVehicleFilesApi(
                                                              fileId:
                                                                  data.id ?? 0,
                                                              context: context,
                                                              parentFolderId:
                                                                  vmVehicle
                                                                          .parentFolderId ??
                                                                      1,
                                                              vehicleId:
                                                                  vehicleId ??
                                                                      0);
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
                )
              : Padding(
                  padding: screenWidth,
                  child: Observer(builder: (context) {
                    final res = vmVehicle.maintenanceFoldersResponse;
                    FolderListModel? folderList = res.data;
                    FolderListModel? fileList = res.data;
                    final editResponse = vmVehicle.editVehicleFileResponse;
                    return SingleChildScrollView(
                        child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            customButton(() async {
                              FilePickerResult? result =
                                  await FilePicker.platform.pickFiles();
                              if (result != null) {
                                String fileName = result.files.single.name;
                                vmVehicle.selectedFileName = fileName;
                                PlatformFile file = result.files.single;
                                vmVehicle.selectedFilePath = file.path!;
                                // ignore: use_build_context_synchronously
                                vmVehicle.addVehicleFileApi(
                                    context: context,
                                    vehicleId: vehicleId ?? 0,
                                    files: vmVehicle.selectedFilePath,
                                    parentfolder: vmVehicle.folder ?? 0,
                                    fromMaintenance: true);
                              }
                            }, Appthemes.cPrimary, "Files +"),
                          ],
                        ),
                        sized0hx10,
                        cmTitle('Files', fontWeight: FontWeight.bold),
                        sized0hx10,
                        fileList?.folders?[0].files != null &&
                                fileList!.folders![0].files!.isNotEmpty
                            ? Expanded(
                                child: res.loading
                                    ? const Center(
                                        child: CircularProgressIndicator())
                                    : ListView.separated(
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
                                          var data = res
                                              .data?.folders?[0].files?[index];
                                          if (data != null) {
                                            return WWFileCard(
                                                vehicleId: vehicleId,
                                                fromVehicle: true,
                                                fromMaintenance: true,
                                                employeeID: 0,
                                                parentFolderId:
                                                    vmVehicle.parentFolderId ??
                                                        1,
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
                                                    vmVehicle.loadinIndexFile ==
                                                        index,
                                                editTap: (s) {
                                                  vmVehicle.loadinIndexFile =
                                                      index;
                                                  vmVehicle.editVehicleFilesApi(
                                                      name: s,
                                                      filesId: data.id ?? 0,
                                                      parentFolderId: vmVehicle
                                                              .parentFolderId ??
                                                          1,
                                                      context: context,
                                                      vehicleId: vehicleId ?? 0,
                                                      folder: vmVehicle.folder,
                                                      fromMaintenance: true);
                                                },
                                                deleteTap: () {
                                                  vmVehicle.deleteVehicleFilesApi(
                                                      fileId: data.id ?? 0,
                                                      context: context,
                                                      parentFolderId: vmVehicle
                                                              .parentFolderId ??
                                                          1,
                                                      vehicleId: vehicleId ?? 0,
                                                      folder: vmVehicle.folder,
                                                      fromMaintenance: true);
                                                });
                                          } else {
                                            return Container();
                                          }
                                        },
                                      ),
                              )
                            : Center(
                                child: SvgPicture.asset(
                                  "assets/images/empty1.svg",
                                ),
                              ),
                      ]),
                    ));
                  }),
                ),
        ),
      ),
    );
  }
}
