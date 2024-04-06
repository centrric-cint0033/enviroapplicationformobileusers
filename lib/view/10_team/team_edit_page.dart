import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_elevated_button.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/designation_dropdown_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class TeamEditPage extends StatelessWidget {
  final TeamProfileEmployeeDetailsResModel employeeDetatils;
  const TeamEditPage({
    super.key,
    required this.employeeDetatils,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Edit Team'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Observer(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(children: [
                gapField,
                Container(
                  height: 82.h,
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
                        Stack(
                          children: [
                            dpImage(vmTeam.profileImage?.imagePath == null
                                ? employeeDetatils.dp ?? ""
                                : vmTeam.profileImage?.imageUUID ?? ""),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 10.h,
                                backgroundColor: Colors.grey.shade400,
                                child: IconButton(
                                  onPressed: () {
                                    vmTeam.dpImageUpdate();
                                  },
                                  icon: Icon(
                                    Icons.camera_enhance,
                                    size: 13.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Position Title:",
                                      style:
                                          TextStyle(color: Appthemes.cPrimary),
                                    ),
                                  ),
                                  DesignationDownWidget()
                                ],
                              ),
                              cmTextField(
                                  controller: vmTeam.textEditTeamNameController,
                                  showDecoration: true)
                            ],
                          ),
                        )
                      ],
                    ))
                  ]),
                ),
                gapField,
                listEditData(context),
                gapField,
                cmElevatedButton(() {}, Appthemes.cPrimary)
              ]),
            );
          },
        ),
      ),
    );
  }

  Widget listEditData(BuildContext context) {
    return buildCardDataOrder(
      [
        expandedRowShowWidget('Address: ',
            cmTextField(controller: vmTeam.textEditTeamAddressController)),
        expandedRowShowWidget('Joining Date: ',
            cmDatePicker(context, vmTeam.selectedJoiningDate)),
        expandedRowShowWidget('Email Address: ',
            cmTextField(controller: vmTeam.textEditTeamEmailController)),
        expandedRowShowWidget(
            'Employment Status: ',
            DropdownButton(
              items: [],
              onChanged: (value) {},
            )),
        expandedRowShowWidget('Termination Date: ',
            cmDatePicker(context, vmTeam.selectedTerminationDate)),
        expandedRowShowWidget(
            'Date of Birth: ', cmDatePicker(context, vmTeam.selectedDob)),
        expandedRowShowWidget(
            'Contact Number: ',
            cmTextField(
                controller: vmTeam.textEditTeamContactNumberController)),
        expandedRowShowWidget('Work Email Address: ',
            cmTextField(controller: vmTeam.textEditTeamWorkEmailController)),
        expandedRowShowWidget(
            'Emergency Contact: ',
            cmTextField(
                controller: vmTeam.textEditTeamEmergencyContactController)),
        expandedRowShowWidget(
            'Emergency Contact No: ',
            cmTextField(
                controller:
                    vmTeam.textEditTeamEmergencyContactNumberController)),
      ],
    );
  }

  Expanded expandedShowWidget(Widget value) => Expanded(flex: 3, child: value);

  Row expandedRowShowWidget(String firsValue, Widget secondValue) => Row(
        children: [
          expandedShowText(firsValue),
          expandedShowWidget(secondValue)
        ],
      );
  Widget cmTextField(
      {TextEditingController? controller,
      Function(String)? onChanged,
      bool? showDecoration}) {
    return TextField(
      controller: controller,
      decoration: showDecoration == true
          ? const InputDecoration()
          : const InputDecoration(
              border: InputBorder.none,
            ),
      onChanged: (value) {
        onChanged!(value);
      },
    );
  }

  Widget cmDatePicker(BuildContext context, DateTime selectedDate) {
    log(selectedDate.toString());
    return Row(
      children: [
        Observer(
            builder: (context) =>
                Text(DateFormat('dd-MM-yyyy').format(selectedDate))),
        datePicker(context, selectedDate)
      ],
    );
  }
}
