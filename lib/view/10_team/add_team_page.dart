import 'dart:developer';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/10_team/create_team_req_model/create_team_req_model.dart';
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
  AddTeamPage({super.key});
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        vmTeam.textControllersClearFn();
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
              child: Form(
                key: formkey,
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
                              InkWell(
                                onTap: () async {
                                  await vmTeam.dpImageUpdate();
                                },
                                child: SizedBox(
                                  height: 60.w,
                                  width: 60.w,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          shape: BoxShape.circle),
                                      child: vmTeam.profileImage?.imagePath ==
                                              null
                                          ? Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                            )
                                          : DecoratedBox(
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                                child: Image.file(
                                                  File(vmTeam.profileImage
                                                          ?.imagePath ??
                                                      ""),
                                                ),
                                              ))),
                                ),
                              ),
                              sized0wx15,
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                                            padding:
                                                EdgeInsets.only(right: 25.w),
                                            child: cmTextFormField(
                                                hintText: 'Name',
                                                hintStyle: TextStyle(
                                                    color:
                                                        Colors.grey.shade400),
                                                controller: vmTeam
                                                    .textAddteamNameController,
                                                showDecoration: true,
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return "Name is required";
                                                  }
                                                  return null;
                                                }),
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
                    cmTitle('ID Poofs', fontWeight: FontWeight.bold),
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
                    cmTitle('Credentials For Enviro',
                        fontWeight: FontWeight.bold),
                    sized0hx10,
                    cmCredentialsForEnviro(context),
                    sized0hx10,
                    cmElevatedButton(() {
                      cmOnpressedFnCreateTeam(context);
                    }, Appthemes.cPrimary, "CREATE"),
                    sized0hx40,
                  ],
                ),
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
                child: cmTextFormField(
                    controller: vmTeam.textAddTeamEmpIdController,
                    hintText: "Emp Id",
                    keyboardType: const TextInputType.numberWithOptions(),
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Emp Id is required";
                      }
                      return null;
                    }),
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
                  child: cmTextFormField(
                      controller: vmTeam.textAddTeamAddressController,
                      hintText: "Address",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Address is required";
                        }
                        return null;
                      }))
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
                  child: cmTextFormField(
                      controller: vmTeam.textAddTeamEmailController,
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email is required";
                        }
                        return null;
                      }))
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
                  child: cmTextFormField(
                      controller: vmTeam.textAddTeamContactNumberController,
                      hintText: "Number",
                      keyboardType: const TextInputType.numberWithOptions(),
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Number is required";
                        }
                        return null;
                      }))
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
                child: cmTextFormField(
                    controller: vmTeam.textAddTeamEmergencyContactController,
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name is required";
                      }
                      return null;
                    }),
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
                child: cmTextFormField(
                    controller:
                        vmTeam.textAddTeamEmergencyContactNumberController,
                    hintText: "Number",
                    keyboardType: const TextInputType.numberWithOptions(),
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Number dis required";
                      }
                      return null;
                    }),
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

  cmOnpressedFnCreateTeam(BuildContext context) {
    if (formkey.currentState!.validate() &&
        vmTeam.selectedDobAddTeam != null &&
        vmTeam.selectedJoiningDateAddTeam != null) {
      if (vmTeam.showRequredTextLicense == true &&
          vmTeam.selectedFilePathLicense == null &&
          vmTeam.selectedLicenceExpiryDate == null &&
          vmTeam.selectedLicenceAlertDate == null) {
        if (vmTeam.selectedFilePathLicense == null) {
          showToast(context, msg: "Please Select License File");
        } else if (vmTeam.selectedLicenceExpiryDate == null) {
          showToast(context, msg: "Please Select License Expiry");
        } else if (vmTeam.selectedLicenceAlertDate == null) {
          showToast(context, msg: "Please Select License Alert");
        }
      } else {
        log("kkw");
        vmTeam.createTeamApi(
            data: CreateTeamReqModel(
                dp: vmTeam.profileImage?.imagePath ?? "",
                name: vmTeam.textAddteamNameController.text,
                employee_id: vmTeam.textAddTeamEmpIdController.text,
                address: vmTeam.textAddTeamAddressController.text,
                user_type: vmTeam.selectedDesignationAddTeam2 ?? "",
                date_of_birth:
                    DateFormat('yyyy-MM-dd').format(vmTeam.selectedDobAddTeam!),
                date_joined: DateFormat('yyyy-MM-dd')
                    .format(vmTeam.selectedJoiningDateAddTeam!),
                email: vmTeam.textAddTeamEmailController.text,
                contact_number: vmTeam.textAddTeamContactNumberController.text,
                driving_license: vmTeam.selectedFilePathLicense ?? "",
                expiry_date: vmTeam.selectedLicenceExpiryDate,
                alert_before: vmTeam.selectedLicenceAlertDate,
                username: vmTeam.textAddTeamEmailController.text,
                password: vmTeam.textAddTeamPasswordController.text,
                employement_status: vmTeam.selectedAddEmploymentStatus,
                emergency_contact:
                    vmTeam.textAddTeamEmergencyContactNumberController.text,
                emergency_contact_name:
                    vmTeam.textAddTeamEmergencyContactController.text),
            context: context);
      }
    } else if (formkey.currentState!.validate() &&
        vmTeam.selectedDobAddTeam == null) {
      showToast(context, msg: "Please Select Date of Birth", color: Colors.red);
    } else if (formkey.currentState!.validate() &&
        vmTeam.selectedJoiningDateAddTeam == null) {
      showToast(context, msg: "Please Select Joining Date", color: Colors.red);
    } else {
      showToast(context,
          msg: "Please Fill All Required Fields", color: Colors.red);
    }
  }

  cmValidatorFn(value) {
    if (value!.isEmpty) {
      return "Name is required";
    }
    return null;
  }
}
