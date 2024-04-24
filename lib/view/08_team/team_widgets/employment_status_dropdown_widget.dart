import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// ignore: must_be_immutable
class EmploymentStatusDropDown extends StatelessWidget {
  final TeamProfileEmployeeDetailsResModel? employeeDetatils;
  bool? fromAddTeam;
  EmploymentStatusDropDown(
      {super.key, required this.employeeDetatils, this.fromAddTeam = false});

  @override
  Widget build(BuildContext context) {
    vmTeam.selectedEmploymentStatus = employeeDetatils?.employementStatus ?? "";
    return Observer(
      builder: (context) {
        return DropdownButton<String>(
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          items: vmTeam.employmentStatusList.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          isExpanded: true,
          value: fromAddTeam == true
              ? vmTeam.selectedAddEmploymentStatus
              : vmTeam.selectedEmploymentStatus,
          onChanged: (String? newValue) {
            fromAddTeam == true
                ? vmTeam.employmentStatusonChanged(newValue)
                : vmTeam.employmentStatusonChangedEditPage(newValue);
          },
        );
      },
    );
  }
}
