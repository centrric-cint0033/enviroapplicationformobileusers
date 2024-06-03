import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MembersDownWidget extends StatelessWidget {
  MembersDownWidget({super.key});
  final TeamResModel addMemberPlaceholder = TeamResModel(name: "Add Member",);
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final res = vmTeam.allEmployeeResponse;
        List<TeamResModel>? employees = res.data ?? [];
        if (employees.isEmpty || employees.first != addMemberPlaceholder) {
          employees.insert(0, addMemberPlaceholder);
        }
        return DropdownButtonFormField<TeamResModel>(
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          items: employees.map(
            (TeamResModel employee) {
              return DropdownMenuItem(
                value: employee,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Text(
                    employee.name ?? "",
                  ),
                ),
              );
            },
          ).toList(),
          isExpanded: true,
          value: vmTeam.selectedMember ?? addMemberPlaceholder,
          onChanged: (newValue) {
            vmTeam.selectedMember = newValue;
          },
          decoration: const InputDecoration.collapsed(hintText: ''),
        );
      },
    );
  }
}
