import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/10_team/team_folder_req_model/team_create_folder_req_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_folder_resp_model/folder.dart';
import 'package:enviro_mobile_application/model/10_team/team_folder_resp_model/team_folder_resp_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/custom_container_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_show_folder_dialoque.dart';
import 'package:enviro_mobile_application/widgets/cm_title.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class TeamProfileScreen extends StatelessWidget {
  TeamProfileScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Team Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Observer(
          builder: (context) {
            final res = vmTeam.teamProfileEmployeeDetailListResponse;
            TeamProfileEmployeeDetailsResModel? employeeDetails = res.data;
            final ress = vmTeam.teamFoldersResponse;
            TeamFolderRespModel? folderList = ress.data;
            return res.loading
                ? Center(child: wwCustomLoader())
                : SingleChildScrollView(
                    child: Column(children: [
                      gapField,
                      Container(
                        height: 82.h,
                        decoration: BoxDecoration(
                            color: Appthemes.cLightGrey,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    dpImage(employeeDetails?.dp ?? ""),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          employeeDetails?.userType ?? "",
                                        ),
                                        Text(employeeDetails?.name ?? ""),
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 26.h,
                                              child: customButton(() {},
                                                  Appthemes.cPrimary, "Delete"),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            SizedBox(
                                              height: 26.h,
                                              child: customButton(() {},
                                                  Appthemes.cPrimary, "Edit"),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      gapField,
                      listData(employeeDetails),
                      gapField,
                      cmTitle('Employees Folder'),
                      gapField,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Folders'),
                            ),
                            TextButton(
                              onPressed: () {
                                showMyfolderDialog(
                                    context, vmTeam.textFolderAddController,
                                    () {
                                  String folderName =
                                      vmTeam.textFolderAddController.text;
                                  log(folderName);
                                  vmTeam.addTeamFolder(
                                      context: context,
                                      employee: employeeDetails?.id ?? 0,
                                      name: folderName,
                                      parentfolder: 1);
                                });
                              },
                              style: ButtonStyle(
                                side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(color: Appthemes.cPrimary),
                                ),
                                // backgroundColor:
                                //     MaterialStateProperty.all<Color>(
                                //   const Color.fromARGB(255, 188, 209, 228),
                                // ),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Add folder+',
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ]),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) =>
                            sized0hx10,
                        itemCount: folderList?.folders?[0].folders?.length ?? 0,
                        itemBuilder: (context, index) {
                          var data = vmTeam.teamFoldersResponse.data
                              ?.folders?[0].folders?[index];

                          if (data != null) {
                            return _buildCard(context,
                                data: data, id: employeeDetails?.id ?? 0);
                          } else {
                            return Container();
                          }
                        },
                      )
                    ]),
                  );
          },
        ),
      ),
    );
  }

  Widget listData(TeamProfileEmployeeDetailsResModel? data) {
    return buildCardDataOrder(
      [
        expandedRowShowText('Address', ': ${data?.address ?? ""}'),
        gapField,
        expandedRowShowText('Date of Birth', ': ${data?.dateOfBirth ?? ""}'),
        gapField,
        expandedRowShowText('Joining Date', ': ${data?.dateJoined ?? ""}'),
        gapField,
        expandedRowShowText('Email Address', ': ${data?.personalEmail ?? ""}'),
        gapField,
        expandedRowShowText('Contact Number', ': ${data?.contactNumber ?? ""}'),
        gapField,
        expandedRowShowText(
            'Termination Date', ': ${data?.terminationDate ?? ""}'),
        gapField,
        expandedRowShowText(
            'Employment Status', ': ${data?.employementStatus ?? ""}'),
        gapField,
        expandedRowShowText('Work Email Address', ': ${data?.email ?? ""}'),
        gapField,
        expandedRowShowText(
            'Emergency Contact', ': ${data?.emergencyContactName ?? ""}'),
        gapField,
        expandedRowShowText(
            'Emergency Contact No', ': ${data?.emergencyContact ?? ""}'),
      ],
    );
  }

  Widget _buildCard(BuildContext context,
      {required Folder data, required num id}) {
    return GestureDetector(
      onTap: () {
        // print('cdvfsdg $id');
        // newsfolderclickfunction(context, id);
      },
      child: SizedBox(
        height: 57.h,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Icon(Icons.folder, color: Colors.black26),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        data.name ?? "",
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Rename'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const SizedBox(height: 17),
                                        SizedBox(
                                          height: 30,
                                          child: TextField(
                                            controller:
                                                vmTeam.textFolderEditController,
                                            decoration: const InputDecoration(
                                              labelText: 'Untitled folder',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    Observer(builder: (_) {
                                      vmTeam.textFolderEditController.text =
                                          data.name ?? "";
                                      return TextButton(
                                        child: const Text(
                                          'Rename', 
                                        ),
                                        onPressed: () {
                                          String folderName = vmTeam
                                              .textFolderEditController.text;
                                          if (folderName.isNotEmpty) {
                                            vmTeam.editTeamFolderApi(
                                                name: folderName,
                                                folder: data,
                                                context: context,
                                                employeeID: id);
                                            // Navigator.of(context).pop();
                                            // vmOhs.folderrenameviewmodelfunction(
                                            //     folderName, id);
                                          } else {}
                                        },
                                      );
                                    }),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Icon(Icons.edit, color: Colors.black26),
                        ),
                        GestureDetector(
                          onTap: () {
                            // customPrint(content: id);
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  title: const Text("Delete"),
                                  content: const Text("Are you sure"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        vmTeam.deleteTeamFolderApi(
                                            folder: data,
                                            context: context,
                                            employeeID: id);
                                      },
                                      child: const Text(
                                        "Delete",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child:
                              const Icon(Icons.delete, color: Colors.black26),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
