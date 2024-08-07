import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_tabs_screen/02_ohs_notification_tab.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_tabs_screen/01_ohs_news_tab.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/common_tabbar.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OhsMainPage extends StatelessWidget {
  const OhsMainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: cmnDrawer(context),
        appBar: AppBar(
            title: cmnTitleWidget('OH&S'),
            actions: [notificationButton(context)]),
        body: Padding(
          padding: screenWidth,
          child: const Column(
            children: [
              WWcommonTabBar(value1: 'News', value2: 'Notifications'),
              Expanded(
                child: TabBarView(
                  children: [NewsOhsTab(), NotificationTab()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
