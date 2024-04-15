import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_credentials_enviro_card.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_elevated_button.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_id_proofs_card_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_required_text.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_textfield_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/designation_dropdown_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/employment_status_dropdown_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../widgets/cm_title.dart';

@RoutePage()
class AddTeamPage extends StatelessWidget {
  const AddTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        vmTeam.selectedJoiningDateAddTeam = null;
        vmTeam.selectedDobAddTeam = null;
        vmTeam.selectedLicenceExpiryDate = null;
        vmTeam.selectedLicenceAlertDate = null;
        vmTeam.showRequredText = false;
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: cmnTitleWidget('Add Team'),
        ),
        body: Observer(builder: (context) {
          final res = vmTeam.teamProfileEmployeeDetailListResponse;
          TeamProfileEmployeeDetailsResModel? employeeDetails = res.data;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  gapField,
                  SizedBox(
                    height: 82.h,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Appthemes.cLightGrey,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: Column(children: [
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 15.w,
                            ),
                            SizedBox(
                              height: 60.w,
                              width: 60.w,
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade700,
                                      shape: BoxShape.circle),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Add Image",
                                        style: TextStyle(
                                            fontSize: 10.w,
                                            color: Colors.white),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Position Title:",
                                        style: TextStyle(
                                            color: Appthemes.cPrimary),
                                      ),
                                      sized0wx05,
                                      DesignationDownWidget(
                                        employeeDetatils: employeeDetails,
                                        fromAddTeam: true,
                                      ),
                                      sized0wx05,
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '*',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                      sized0wx05,
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 25.w),
                                          child: cmTextField(
                                              hintText: 'Name',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey.shade400),
                                              controller: vmTeam
                                                  .textAddteamNameController,
                                              showDecoration: true),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      ]),
                    ),
                  ),
                  sized0hx10,
                  listAddData(context, employeeDetails),
                  sized0hx10,
                  cmTitle('ID Poofs'),
                  sized0hx10,
                  cmIdProofCard(
                      context,
                      Observer(
                          builder: (context) => cmDatePicker(
                              context,
                              "",
                              vmTeam.selectedLicenceExpiryDate,
                              (date) => vmTeam.datePickerFn6(date))),
                      Observer(
                          builder: (context) => cmDatePicker(
                              context,
                              "",
                              vmTeam.selectedLicenceAlertDate,
                              (date) => vmTeam.datePickerFn7(date)))),
                  sized0hx10,
                  cmTitle('Credentials For Enviro'),
                  sized0hx10,
                  cmCredentialsForEnviro(context),
                  sized0hx10,
                  cmElevatedButton(() {
                    cmOnpressedFn(context);
                  }, Appthemes.cPrimary, "CREATE"),
                  sized0hx40,
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget listAddData(BuildContext context,
      TeamProfileEmployeeDetailsResModel? employeeDetatils) {
    return buildCardDataOrder(
      [
        expandedRowShowWidget(
            Row(
              children: [
                showText('Emp Id'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Expanded(
                child: cmTextField(
                    controller: vmTeam.textAddTeamEmpIdController,
                    hintText: "Emp Id",
                    hintStyle: TextStyle(color: Colors.grey.shade400)),
              )
            ])),
        expandedRowShowWidget(
            Row(
              children: [
                showText('Address'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Expanded(
                  child: cmTextField(
                      controller: vmTeam.textAddTeamAddressController,
                      hintText: "Address",
                      hintStyle: TextStyle(color: Colors.grey.shade400)))
            ])),
        expandedRowShowWidget(
            Row(
              children: [
                showText('Date of Birth'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Observer(
                builder: (context) => cmDatePicker(
                    context,
                    "",
                    vmTeam.selectedDobAddTeam,
                    (date) => vmTeam.datePickerFn4(date)),
              )
            ])),
        expandedRowShowWidget(
            Row(
              children: [
                showText('Joining Date'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Observer(
                  builder: (context) => cmDatePicker(
                      context,
                      "",
                      vmTeam.selectedJoiningDateAddTeam,
                      (date) => vmTeam.datePickerFn5(date)))
            ])),
        expandedRowShowWidget(
            Row(
              children: [
                showText('Email Address'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Expanded(
                  child: cmTextField(
                      controller: vmTeam.textAddTeamEmailController,
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.grey.shade400)))
            ])),
        expandedRowShowWidget(
            Row(
              children: [
                showText('Contact Number'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Expanded(
                  child: cmTextField(
                      controller: vmTeam.textAddTeamContactNumberController,
                      hintText: "Number",
                      hintStyle: TextStyle(color: Colors.grey.shade400)))
            ])),
        expandedRowShowWidget(
            Row(
              children: [
                showText('Employment Status'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Expanded(
                  child: EmploymentStatusDropDown(
                      employeeDetatils: employeeDetatils, fromAddTeam: true))
            ])),
        expandedRowShowWidget(
            Row(
              children: [
                showText('Emergency Contact'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Expanded(
                child: cmTextField(
                    controller: vmTeam.textAddTeamEmergencyContactController,
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey.shade400)),
              )
            ])),
        expandedRowShowWidget(
            Row(
              children: [
                showText('Emergency Contact No'),
                sized0wx05,
                cmRequiredText(),
              ],
            ),
            Row(children: [
              const Text(': '),
              Expanded(
                child: cmTextField(
                    controller:
                        vmTeam.textAddTeamEmergencyContactNumberController,
                    hintText: "Number",
                    hintStyle: TextStyle(color: Colors.grey.shade400)),
              )
            ])),
      ],
    );
  }

  Widget expandedShowWidget(Widget value) => value;

  Row expandedRowShowWidget(Widget firsValue, Widget secondValue) => Row(
        children: [
          Expanded(flex: 3, child: expandedShowWidget(firsValue)),
          Expanded(flex: 2, child: expandedShowWidget(secondValue))
        ],
      );

  Widget cmDatePicker(BuildContext context, String? date,
      DateTime? selectedDate, Function(DateTime date) pickedDate) {
    return Row(
      children: [
        Text(
          selectedDate != null
              ? DateFormat('dd-MM-yyyy').format(selectedDate)
              : "",
          style: TextStyle(fontSize: 10.w),
        ),
        datePicker(context, selectedDate, pickedDate),
      ],
    );
  }

  cmOnpressedFn(BuildContext context) {
    if (vmTeam.textAddteamNameController.text.isNotEmpty ||
        vmTeam.textAddTeamEmpIdController.text.isNotEmpty ||
        vmTeam.textAddTeamAddressController.text.isNotEmpty ||
        vmTeam.selectedDobAddTeam != null ||
        vmTeam.selectedJoiningDateAddTeam != null ||
        vmTeam.textAddTeamEmailController.text.isNotEmpty ||
        vmTeam.textAddTeamContactNumberController.text.isNotEmpty ||
        vmTeam.textAddTeamEmergencyContactController.text.isNotEmpty ||
        vmTeam.textAddTeamEmergencyContactNumberController.text.isNotEmpty ||
        vmTeam.textAddTeamPasswordController.text.isNotEmpty) {
    } else {
      showToast(context, msg: "Fields Required", color: Colors.red);
    }
  }
}
