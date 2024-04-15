import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/current_employee_screen.dart';
import 'package:enviro_mobile_application/view/10_team/terminated_employee_screen.dart';
import 'package:enviro_mobile_application/widgets/cmappbar.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/team_tab_bar.dart';
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
          actions: [notificationButton(context)],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: CmButton(
                  onPressed: () {
                    vmTeam
                        .getTeamDesignationsApi();
                    context.router.push(const AddTeamRoute());
                  },
                  text: 'Add a team member',
                  color: Appthemes.cPrimary,
                  height: ScreenUtil().screenWidth / 10,
                  width: ScreenUtil().screenWidth / 2.6,
                ),
              ),
              gapField,
              const TeamTabbar(),
              gapField,
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    CurrentEmployeeScreen(),
                    TerminatedEmployeeScreen()
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
