import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_list.dart';
import 'package:enviro_mobile_application/view/10_shedule/todays_schedule_list.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ScheduleMainPage extends StatelessWidget {
  const ScheduleMainPage({super.key});
  Future<void> _refreshContent() async {
    vmSchedule.shedulecardviewmodelfunction();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        vmSchedule.scheduleJobsPagination();
        vmSchedule.scheduleJobsPagination2();
      },
    );
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: RefreshIndicator(
          onRefresh: _refreshContent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sized0hx15,
              cmRowText("Today's Schedule", "Calender", () {
                vmSchedule.selectedDay = null;
                vmSchedule.shedulecardviewmodelfunctionByDate(
                  fromDate: DateFormat('yyyy-MM-dd').format(DateTime.now()),
                );
                context.router.pushNamed(RouteNames.rcalenderpage);
              }, Colors.black, FontWeight.bold),
              sized0hx05,
              Observer(
                builder: (_) {
                  return WWResponseHandler(
                      data: vmSchedule.shedulecardResponse,
                      isEmpty:
                          vmSchedule.shedulecardResponse.data?.isEmpty ?? true,
                      onTap: () => vmSchedule.shedulecardviewmodelfunction(),
                      child: const TodaysScheduleList());
                },
              ),
              sized0hx10,
              Text(
                "Schedule List",
                style: TextStyle(
                  fontSize: 13.sp,
                ),
              ),
              sized0hx10,
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: vmSchedule.scheduleJobsController2,
                  child: Column(
                    children: [
                      Observer(
                        builder: (_) {
                          return WWResponseHandler(
                              data: vmSchedule.shedulecardResponse,
                              isEmpty: vmSchedule
                                      .shedulecardResponse.data?.isEmpty ??
                                  true,
                              onTap: () =>
                                  vmSchedule.shedulecardviewmodelfunction(),
                              child: const ScheduleList());
                        },
                      ),
                    ],
                  ),
                ),
              ),
              if (vmSchedule.shedulecardResponse.data != null)
                if (vmSchedule.shedulecardResponse.data!.length <= 1) ...[
                  sized0hx50,
                  sized0hx50,
                  sized0hx50,
                  sized0hx50,
                  sized0hx50,
                  sized0hx20
                ] else ...[
                  sized0hx50,
                  sized0hx50,
                ]
            ],
          ),
        ),
      ),
    );
  }
}

Widget cmRowText(String text, String buttonText, Function()? onPressed,
    Color? buttonTextColor, FontWeight fontWeight) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
          fontSize: 13.h,
          fontWeight: fontWeight,
        ),
      ),
      InkWell(
        onTap: onPressed,
        child: Container(
          height: 26.h,
          width: 68.w,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(15.w)),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: buttonTextColor,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
    ],
  );
}

Future<void> openMap(String latitude, String longitude) async {
  String googleUrl =
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  if (await canLaunch(googleUrl)) {
    await launch(googleUrl);
  } else {
    throw 'Could not open the map.';
  }
}

void nextjobfnction(BuildContext context) {
  vmSchedule.shedulecardviewmodelfunction();
}

void sheduledetailsfunction2(BuildContext context) {
  context.router.pushNamed(RouteNames.rsheduledetail2page);
}
