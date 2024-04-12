import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_textfield_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/designation_dropdown_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AddTeamPage extends StatelessWidget {
  const AddTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                      ),
                                      sized0wx05,
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 25.w),
                                    child: cmTextField(
                                        controller:
                                            vmTeam.textAddeamNameController,
                                        showDecoration: true),
                                  )
                                ],
                              ),
                            )
                          ],
                        ))
                      ]),
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
