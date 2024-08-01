import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_title.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class VehicleFolderPage extends StatelessWidget {
  const VehicleFolderPage({super.key, this.vehicleId, this.vehicleType});
  final int? vehicleId;
  final String? vehicleType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Vehicle'),
      ),
      body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Observer(builder: (context) {
            final res = vmVehicle.vehicleFoldersResponse;
            FolderListModel? folderList = res.data;
            return Column(
              children: [
                sized0hx10,
                cmTitle('Vehicle Folder', fontWeight: FontWeight.bold),
                sized0hx10,
                Padding(
                  padding: screenWidth,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Folders'),
                        ),
                        CmButton(
                            height: 35.w,
                            text: 'Add folders+',
                            onPressed: () {
                              showCreateEditDialog(context, createEditTap: (v) {
                                vmVehicle.addVehicleFolder(
                                    context: context,
                                    vehicleId: vehicleId ?? 0,
                                    name: v,
                                    parentfolder: vmVehicle.folder ?? 1,
                                    vehicleType: vehicleType ?? "");
                              });
                            }),
                      ]),
                ),
                sized0hx10,
                Padding(
                  padding: screenWidth,
                  child: WWTextField(
                    controller: vmVehicle.folderSearchCntrlr,
                    onChanged: (v) => vmTeam.onTextChanged(() {
                      v.isEmpty
                          ? vmVehicle.getVehicleFoldersApi(
                              vehicleId: vehicleId ?? 0,
                              parentFolderId: vmVehicle.folder ?? 1)
                          : vmVehicle.folderSearchVehicleApi(
                              context,
                              v,
                              vmVehicle.folder ?? 1,
                              // vmVehicle.searchType,
                              vehicleType == "truck"
                                  ? "truck"
                                  : vehicleType == "car"
                                      ? "car"
                                      : "fork-lift",
                              vehicleId ?? 0,
                              vehicleType ?? "");
                    }),
                    suffixTap: () {},
                    hintText: 'Search by Folder Name',
                  ),
                ),
                sized0hx10,
                res.loading
                    ? wwCustomLoader()
                    : folderList?.folders != null &&
                            folderList!.folders!.isNotEmpty
                        ? Padding(
                            padding: screenWidth,
                            child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      sized0hx10,
                              itemCount:
                                  folderList.folders?[0].folders?.length ?? 0,
                              itemBuilder: (context, index) {
                                var data =
                                    folderList.folders?[0].folders?[index];
                                if (data != null) {
                                  return WWFolderCard(
                                      folder: data,
                                      onTap: () {
                                        vmVehicle.folderNames.clear();
                                        vmVehicle.getVehicleFoldersApi(
                                          vehicleId: vehicleId ?? 0,
                                          parentFolderId: data.id ?? 0,
                                        );
                                        vmVehicle.parentFolderId = data.id;
                                        vmVehicle.folderNames
                                            .add("${data.name}");
                                        context.router
                                            .push(VehicleFolderDetailRoute(
                                          folderName: data.name,
                                          searchType: vehicleType,
                                          vehicleId: vehicleId,
                                          vehicleType: vehicleType,
                                        ));
                                      },
                                      folderName: data.name,
                                      editTap: (s) =>
                                          vmVehicle.editVehicleFolderApi(
                                              name: s,
                                              folderId: data.id ?? 0,
                                              parentFolderId:
                                                  vmVehicle.folder ?? 1,
                                              context: context,
                                              vehicleId: vehicleId ?? 0),
                                      deleteTap: () {
                                        vmVehicle.deleteVehicleFolderApi(
                                            folderId: data.id ?? 0,
                                            context: context,
                                            vehicleId: vehicleId ?? 0,
                                            parentFolderId:
                                                vmVehicle.folder ?? 1);
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
              ],
            );
          })),
    );
  }
}
