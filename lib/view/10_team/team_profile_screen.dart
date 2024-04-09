import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/10_team/team_folder_resp_model/team_folder_resp_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/folder_list_card_widget.dart';
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
  const TeamProfileScreen({
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
                                            Observer(
                                              builder: (context) => SizedBox(
                                                height: 26.h,
                                                child: customButton(() {
                                                  vmTeam
                                                      .getTeamDesignationsApi();
                                                  addingDataToControllerEdit(
                                                      employeeDetails);
                                                  try {
                                                    vmTeam.selectedJoiningDate =
                                                        DateTime.parse(
                                                            employeeDetails
                                                                    ?.dateJoined ??
                                                                "");
                                                  } catch (e) {}
                                                  try {
                                                    vmTeam.selectedTerminationDate =
                                                        DateTime.parse(
                                                            employeeDetails
                                                                    ?.terminationDate ??
                                                                "");
                                                  } catch (e) {}
                                                  try {
                                                    vmTeam.selectedDob = DateTime
                                                        .parse(employeeDetails
                                                                ?.dateOfBirth ??
                                                            "");
                                                  } catch (e) {}
                                                  context.router.push(
                                                      TeamEditRoute(
                                                          employeeDetatils:
                                                              employeeDetails!));
                                                }, Appthemes.cPrimary, "Edit"),
                                              ),
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
                            return buildCard(context,
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

  addingDataToControllerEdit(
      TeamProfileEmployeeDetailsResModel? employeeDetails) {
    vmTeam.textEditTeamNameController.text = employeeDetails?.name ?? "";
    vmTeam.textEditTeamAddressController.text = employeeDetails?.address ?? "";
    vmTeam.textEditTeamEmailController.text =
        employeeDetails?.personalEmail ?? "";
    vmTeam.textEditTeamContactNumberController.text =
        employeeDetails?.contactNumber ?? "";
    vmTeam.textEditTeamWorkEmailController.text = employeeDetails?.email ?? "";
    vmTeam.textEditTeamEmergencyContactController.text =
        employeeDetails?.emergencyContactName ?? "";
    vmTeam.textEditTeamEmergencyContactNumberController.text =
        employeeDetails?.emergencyContact ?? "";
  }
}
