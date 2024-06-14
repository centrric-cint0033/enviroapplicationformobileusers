import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/todays_schedule_list.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

@RoutePage()
class WasteTab extends StatelessWidget {
  const WasteTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sized0hx15,
            cmRowText("Today's Schedule", "Calender", () {
              calenderfunction(context);
            }, Colors.black, FontWeight.bold),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Observer(
                builder: (_) {
                  return WWResponseHandler(
                      data: vmSchedule.shedulecardResponse,
                      isEmpty:
                          vmSchedule.shedulecardResponse.data?.isEmpty ?? true,
                      onTap: () => vmSchedule.shedulecardviewmodelfunction(),
                      child: const TodaysScheduleList());
                },
              ),
            ),
            sized0hx10,
            cmRowText("Schedule List", "week", () {
              //  sheduledetailfunction4(
              //       context,
              //     );
            }, Appthemes.cPrimary, FontWeight.normal),
            sized0hx20,
            GestureDetector(
              onTap: () {
                sheduledetailfunction4(
                  context,
                );
              },
              child: Observer(builder: (_) {
                return WWResponseHandler(
                  data: vmSchedule.sheduleweekResponse,
                  isEmpty: vmSchedule.sheduleweekResponse.data?.isEmpty ?? true,
                  onTap: () => vmSchedule.shedulecardviewmodelweekfunction(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 400,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              vmSchedule.sheduleweekResponse.data?.length ?? 0,
                          itemBuilder: (BuildContext context, int i) {
                            return SingleChildScrollView(
                              child: GestureDetector(
                                onTap: () {
                                  sheduledetailfunction(
                                      context,
                                      vmSchedule.sheduleweekResponse.data?[i]
                                              .id ??
                                          '',
                                      i);
                                },
                                child: Card(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  elevation: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Observer(builder: (_) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, top: 8),
                                              child: Text(
                                                vmSchedule
                                                        .sheduleweekResponse
                                                        .data?[i]
                                                        .client
                                                        ?.clientName ??
                                                    '',
                                              ),
                                            );
                                          }),
                                          Observer(builder: (_) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, top: 8, right: 8),
                                              child: Text(
                                                'job ${vmSchedule.sheduleweekResponse.data?[i].job ?? ''}',
                                              ),
                                            );
                                          }),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Observer(builder: (_) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, top: 8),
                                              child: Observer(builder: (_) {
                                                return Text(
                                                  vmSchedule.sheduleweekResponse
                                                          .data?[i].startTime ??
                                                      '',
                                                );
                                              }),
                                            );
                                          }),
                                          ElevatedButton(
                                            onPressed: () {
                                              sheduledetailfunction(
                                                  context,
                                                  vmSchedule.sheduleweekResponse
                                                          .data?[i].id ??
                                                      '',
                                                  i);
                                            },
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.black,
                                              backgroundColor: Colors.white,
                                            ),
                                            child: const Text('pending'),
                                          ),
                                        ],
                                      ),
                                      Observer(builder: (_) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Observer(builder: (_) {
                                            return Text(DateFormat.yMMMMd()
                                                .format(vmSchedule
                                                    .shedulecardResponse
                                                    .data![i]
                                                    .startDate!));
                                          }),
                                        );
                                      }),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Card(
                                        color: Colors.blue,
                                        child: Column(),
                                      ),
                                      SizedBox(
                                        width: 500,
                                        child: Card(
                                          color: const Color.fromRGBO(
                                              33, 150, 243, 1),
                                          child: Column(
                                            children: [
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      'Drivers',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 8.0),
                                                    child: Text(
                                                      'Vehicle assigned',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                color: Colors.white,
                                                thickness: 1,
                                              ),
                                              Observer(builder: (_) {
                                                return Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Observer(
                                                          builder: (_) {
                                                        return Text(
                                                          vmSchedule
                                                                  .shedulecardResponse
                                                                  .data?[i]
                                                                  .drivers?[0]
                                                                  .name ??
                                                              '',
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                    const Divider(
                                                      color: Colors.black,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Observer(
                                                          builder: (_) {
                                                        return Text(
                                                          vmSchedule
                                                                  .shedulecardResponse
                                                                  .data?[i]
                                                                  .drivers?[0]
                                                                  .registration ??
                                                              '',
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  ],
                                                );
                                              }),
                                              const Divider(
                                                color: Colors.white,
                                                thickness: 1,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Observer(builder: (_) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Observer(
                                                          builder: (_) {
                                                        return Text(
                                                          vmSchedule
                                                                  .shedulecardResponse
                                                                  .data?[i]
                                                                  .jobCardKeys
                                                                  ?.weighBridgeRequiredMultipleFile
                                                                  ?.firstOrNull
                                                                  ?.name ??
                                                              '',
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  }),
                                                  Observer(builder: (_) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        vmSchedule
                                                                .sheduleweekResponse
                                                                .data?[i]
                                                                .vehicle
                                                                ?.toString() ??
                                                            '',
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                ],
                                              ),
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                );
              }),
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
  context.router.push(SheduledetailRoute2());
}

void calenderfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.rcalenderpage);
}

void sheduledetailfunction(BuildContext context, id, i) {
  context.router.push(SheduledetailRoute(id: id, i: i));
}

void sheduledetailsfunction2(BuildContext context) {
  context.router.pushNamed(RouteNames.rsheduledetail2page);
}
