import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_tab_screens/current_employee_tab.dart';
import 'package:enviro_mobile_application/view/08_team/team_tab_screens/terminated_employee_tab.dart';
import 'package:enviro_mobile_application/widgets/cmappbar.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/common_tababr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../view_model/08_team/team_view_model.dart';

@RoutePage()
class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          leading: const cmn_leading_icon(),
          title: cmnTitleWidget('Team'),
          actions: [
            CmButton(
              onPressed: () {
                vmTeam.getTeamDesignationsApi();
                context.router.push(AddTeamRoute());
              },
              text: 'Add a team member',
              color: Appthemes.cPrimary,
              buttonTextStyle:
                  TextStyle(color: Appthemes.cWhite, fontSize: 10.sp),
            ),
            notificationButton(context)
          ],
        ),
        body: Padding(
          padding: screenWidth,
          child: Column(
            children: [
              sized0hx05,
              const WWcommonTabBar(
                value1: 'Current Employee',
                value2: 'Terminated Employees',
              ),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    CurrentEmployeeTab(),
                    TerminatedEmployeeTab()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
