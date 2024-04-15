import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SheduledetailPage extends StatelessWidget {
  const SheduledetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
          title: cmnTitleWidget('Sheduling'),
          actions: [notificationButton(context)]),
      body: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 26),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Jobcard'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
