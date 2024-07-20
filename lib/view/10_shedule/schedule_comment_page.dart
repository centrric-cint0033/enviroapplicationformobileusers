import 'package:auto_route/annotations.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/schedule_comment_section.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SheduleCommentPage extends StatelessWidget {
  const SheduleCommentPage({
    Key? key,
    required this.id,
    required this.i,
  }) : super(key: key);

  final int id;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: cmnDrawer(context),
        appBar: AppBar(
          title: cmnTitleWidget('Scheduling'),
          actions: [notificationButton(context)],
        ),
        body: Padding(
          padding: screenWidth,
          child: ScheduleCommentSection(id: id, i: i),
        ));
  }
}
