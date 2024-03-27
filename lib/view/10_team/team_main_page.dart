import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/widgets/cmappbar.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/team_tab_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          leading: const cmn_leading_icon(),
          title: cmnTitleWidget('Team'),
          actions: cmn_action_icon,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Colors.blue),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Add a team member',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            const TeamTabbar(),
            // Expanded(
            //   child: TabBarView(
            //     children: <Widget>[
            //       MasterTruckPage(),
            //       MasterCarpage(),
            //       SemiTrailorPage()
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
