import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_list.dart';
import 'package:enviro_mobile_application/view/10_shedule/todays_schedule_list.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ScheduleMainPage extends StatelessWidget {
  const ScheduleMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Sheduling'),
        actions: [notificationButton(context)],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              sized0hx15,
              cmRowText("Today's Schedule", "Calender", () {
                calenderfunction(context);
              }, Colors.black, FontWeight.bold),
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
              cmRowText("Schedule List", "week", () {
                //  sheduledetailfunction4(
                //       context,
                //     );
              }, Appthemes.cPrimary, FontWeight.normal),
              sized0hx20,
              Observer(
                builder: (_) {
                  return WWResponseHandler(
                      data: vmSchedule.sheduleweekResponse,
                      isEmpty:
                          vmSchedule.sheduleweekResponse.data?.isEmpty ?? true,
                      onTap: () =>
                          vmSchedule.shedulecardviewmodelweekfunction(),
                      child: const ScheduleList());
                },
              ),
              sized0hx20,
              GestureDetector(
                onTap: () => sheduledetailsfunction2(context),
                child: const Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                      ]),
                ),
              ),
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
      ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          minimumSize: Size(90.h, 25.h),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
              color: buttonTextColor,
              fontSize: 12.h,
              fontWeight: FontWeight.normal),
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

void sheduledetailfunction4(
  BuildContext context,
) {
  context.router.push(const SheduledetailRoute2());
}

void calenderfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.rcalenderpage);
}


void sheduledetailsfunction2(BuildContext context) {
  context.router.pushNamed(RouteNames.rsheduledetail2page);
}
