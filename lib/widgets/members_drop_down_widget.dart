import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MembersDownWidget extends StatelessWidget {
  MembersDownWidget({super.key});
  final TeamResModel addMemberPlaceholder = TeamResModel(
    name: "Add Member",
  );
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
// import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
// import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MembersDownWidget extends StatelessWidget {
//   MembersDownWidget({super.key});
//   final TeamResModel addMemberPlaceholder = TeamResModel(
//     name: "Add Member",
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Observer(
//       builder: (context) {
//         final res = vmTeam.allEmployeeResponse;
//         List<TeamResModel>? employees = res.data ?? [];
//         if (employees.isEmpty || employees.first != addMemberPlaceholder) {
//           employees.insert(0, addMemberPlaceholder);
//         }

//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width:
//                   double.infinity, // Ensures the dropdown takes the full width
//               child: DropdownButtonFormField<TeamResModel>(
//                 icon: const Icon(Icons.keyboard_arrow_down_outlined),
//                 items: employees.map((TeamResModel employee) {
//                   return DropdownMenuItem(
//                     value: employee,
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 5.w),
//                       child: Text(
//                         employee.name ?? "",
//                         style: TextStyle(fontSize: 11.sp),
//                       ),
//                     ),
//                   );
//                 }).toList(),
//                 isExpanded: true,
//                 value: addMemberPlaceholder,
//                 onChanged: (newValue) {
//                   if (newValue != null && newValue != addMemberPlaceholder) {
//                     vmTeam.addSelectedMember(newValue);
//                   }
//                 },
//                 selectedItemBuilder: (BuildContext context) {
//                   return employees.map<Widget>((TeamResModel employee) {
//                     if (employee == addMemberPlaceholder &&
//                         vmTeam.selectedMembers.isEmpty) {
//                       return Padding(
//                         padding: EdgeInsets.only(left: 5.w),
//                         child: Text(
//                           "Select Members",
//                           style: TextStyle(fontSize: 11.sp),
//                         ),
//                       );
//                     } else {
//                       return Padding(
//                         padding: EdgeInsets.only(left: 5.w),
//                         child: Text(
//                           vmTeam.selectedMembers
//                               .map((member) => member.name)
//                               .join(', '),
//                           style: TextStyle(fontSize: 11.sp),
//                           overflow: TextOverflow
//                               .ellipsis, // Ensures text does not overflow
//                         ),
//                       );
//                     }
//                   }).toList();
//                 },
//                 decoration: const InputDecoration.collapsed(hintText: ''),
//               ),
//             ),
//             SizedBox(height: 10.h),
//           ],
//         );
//       },
//     );
//   }
// }
