import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CmnDrawer(context),
        appBar: AppBar(
            title: cmnTitleWidget('Home'),
            actions: [notificationButton(context)]),
        body: const SizedBox() //notification_page(context),
        );
  }
}
