import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_tab_screens/waste_tab_screen.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScheduleMainPage extends StatelessWidget {
  const ScheduleMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: cmnDrawer(context),
        appBar: AppBar(
          title: cmnTitleWidget('Sheduling'),
          actions: [notificationButton(context)],
        ),
        body: Padding(
          padding: screenWidth,
          child: Column(
            children: [
              sized0hx05,
              const WWcommonTabBar(
                value1: 'Waste',
                value2: 'Pumbs',
                value3: 'Hills',
                value4: 'Destruction',
                value5: 'All',
              ),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    WasteTab(),
                    WasteTab(),
                    WasteTab(),
                    WasteTab(),
                    WasteTab(),
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
