import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_textfield_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/designation_dropdown_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTeamProfileTile extends StatelessWidget {
  const CommonTeamProfileTile({super.key, this.employeeDetatils});
  final TeamProfileEmployeeDetailsResModel? employeeDetatils;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              Stack(
                children: [
                  SizedBox(
                    height: 60.w,
                    width: 60.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade700, shape: BoxShape.circle),
                      child: dpImage(vmTeam.profileImage?.imagePath == null
                          ? employeeDetatils?.dp ?? ""
                          : vmTeam.profileImage?.imageUUID ?? ""),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () async {
                        await vmTeam.dpImageUpdate();
                      },
                      child: SizedBox(
                        height: 20.h,
                        width: 20.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.camera_enhance,
                            size: 13.h,
                          ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Position Title:",
                          style: TextStyle(color: Appthemes.cPrimary),
                        ),
                        sized0wx05,
                        DesignationDownWidget(
                          employeeDetatils: employeeDetatils,
                        ),
                        sized0wx05,
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25.w),
                      child: cmTextField(
                          controller: vmTeam.textEditTeamNameController,
                          showDecoration: true),
                    )
                  ],
                ),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
