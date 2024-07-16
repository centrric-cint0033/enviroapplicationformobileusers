// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/Schedule_list_by_date.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/calender_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class CalenderPage extends StatelessWidget {
  const CalenderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: cmnTitleWidget('Scheduling'),
            actions: [notificationButton(context)]),
        body: Observer(builder: (context) {
          return Padding(
            padding: screenWidth,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  calenderWidget(),
                  sized0hx10,
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Schedule List',
                        style: TextStyle(fontSize: 14.h),
                      )),
                  sized0hx05,
                  WWResponseHandler(
                      data: vmSchedule.shedulecardByDateResponse,
                      isEmpty:
                          vmSchedule.shedulecardByDateResponse.data?.isEmpty ??
                              true,
                      onTap: () =>
                          vmSchedule.shedulecardviewmodelfunctionByDate(
                            fromDate:
                                DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          ),
                      child: const ScheduleListByDate()),
                  sized0hx20,
                ],
              ),
            ),
          );
        }));
  }
}
