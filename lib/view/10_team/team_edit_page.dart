import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_elevated_button.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_textfield_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/common_team_profile_tile.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/employment_status_dropdown_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class TeamEditPage extends StatelessWidget {
  final TeamProfileEmployeeDetailsResModel employeeDetatils;
  TeamEditPage({
    super.key,
    required this.employeeDetatils,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        vmTeam.selectedJoiningDate = null;
        vmTeam.selectedDob = null;
        vmTeam.selectedTerminationDate = null;
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: cmnTitleWidget('Edit Team'),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SingleChildScrollView(
              child: Column(children: [
                gapField,
                CommonTeamProfileTile(
                  employeeDetatils: employeeDetatils,
                ),
                gapField,
                listEditData(context, employeeDetatils),
                gapField,
                cmElevatedButton(() {}, Appthemes.cPrimary, "EDIT")
              ]),
            )),
      ),
    );
  }

  Widget listEditData(BuildContext context,
      TeamProfileEmployeeDetailsResModel? employeeDetatils) {
    return buildCardDataOrder(
      [
        expandedRowShowWidget('Address: ',
            cmTextField(controller: vmTeam.textEditTeamAddressController)),
        expandedRowShowWidget(
            'Joining Date: ',
            Observer(
              builder: (context) => cmDatePicker(
                  context,
                  employeeDetatils?.dateJoined,
                  vmTeam.selectedJoiningDate,
                  (date) => vmTeam.datePickerFn1(date)),
            )),
        expandedRowShowWidget('Email Address: ',
            cmTextField(controller: vmTeam.textEditTeamEmailController)),
        expandedRowShowWidget('Employment Status: ',
            EmploymentStatusDropDown(employeeDetatils: employeeDetatils)),
        expandedRowShowWidget(
            'Termination Date: ',
            Observer(
                builder: (context) => cmDatePicker(
                    context,
                    employeeDetatils?.terminationDate,
                    vmTeam.selectedTerminationDate,
                    (date) => vmTeam.datePickerFn2(date)))),
        expandedRowShowWidget(
            'Date of Birth: ',
            Observer(
                builder: (context) => cmDatePicker(
                    context,
                    employeeDetatils?.dateOfBirth,
                    vmTeam.selectedDob,
                    (date) => vmTeam.datePickerFn3(date)))),
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
}
