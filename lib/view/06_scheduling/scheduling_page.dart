import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';

import 'package:enviro_mobile_application/widgets/cmappbar.dart';

import 'package:enviro_mobile_application/widgets/calender_page.dart';

import 'package:flutter/material.dart';

@RoutePage()
class SchedulingPage extends StatelessWidget {
  const SchedulingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          leading: cmn_leading_icon(),
          title: cmnTitleWidget('Schedule'),
          actions: cmn_action_icon,
        ),
        body: calander_page(),
      ),
    );
  }
}