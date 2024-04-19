import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/designation.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// ignore: must_be_immutable
class DesignationDownWidget extends StatelessWidget {
  final TeamProfileEmployeeDetailsResModel? employeeDetatils;
  bool? fromAddTeam;
  DesignationDownWidget(
      {super.key, this.employeeDetatils, this.fromAddTeam = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (context) {
          final res = vmTeam.designationsResponse;
          List<Designation>? designations = res.data?.designations ?? [];
          vmTeam.selectedDesignation = designations.firstWhere(
            (designation) => designation.userType == employeeDetatils?.userType,
            orElse: () => Designation(userType: ""),
          );
          vmTeam.selectedDesignationAddTeam = designations.firstWhere(
            (designation) => designation.userType == "accounts-manager",
            orElse: () => Designation(userType: ""),
          );

          return DropdownButtonFormField<Designation>(
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            items: designations.map(
              (Designation designation) {
                return DropdownMenuItem(
                  value: designation,
                  child: Text(
                    designation.userType ?? "",
                  ),
                );
              },
            ).toList(),
            isExpanded: true,
            value: fromAddTeam == true
                ? vmTeam.selectedDesignationAddTeam
                : vmTeam.selectedDesignation,
            onChanged: (newValue) {
              vmTeam.selectedDesignationAddTeam = newValue;
              vmTeam.cmFunction(vmTeam.selectedDesignationAddTeam?.userType);
              if (newValue?.userType == "driver-factory-hand" ||
                  newValue?.userType == "driver-liquid-waste-technician") {
                vmTeam.showRequredTextLicense = true;
              } else {
                vmTeam.showRequredTextLicense = false;
              }
            },
            // value: selectedTax,
            decoration: const InputDecoration.collapsed(hintText: ''),
          );
        },
      ),
    );
  }
}
