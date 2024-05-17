import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_widget.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';

import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';

import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Routepage/approutes.gr.dart';
import '../../view_model/11_shedule/shedule_page_view_model.dart';
import '../../widgets/drawer.dart';

@RoutePage()
class SchedulePage extends StatelessWidget {
  SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Schedule'),
        actions: [notificationButton(context)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Today's Schedule",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      calenderfunction(context);
                    },
                    child: const Text('Calender'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 420,
                width: 300,
                child: Observer(
                  builder: (_) {
                    return WWResponseHandler(
                      data: vmJobcard.shedulecardResponse,
                      isEmpty:
                          vmJobcard.shedulecardResponse.data?.isEmpty ?? true,
                      onTap: () => vmJobcard.shedulecardviewmodelfunction(),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            vmJobcard.shedulecardResponse.data?.length ?? 0,
                        itemBuilder: (BuildContext context, int i) {
                          return SizedBox(
                            width: 380,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.blue, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Observer(builder: (_) {
                                        return Row(
                                          children: [
                                            const SizedBox(width: 8),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13.0),
                                              child: CircleAvatar(
                                                radius: 14,
                                                child: vmJobcard
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .client
                                                            ?.dp !=
                                                        null
                                                    ? Image.network(
                                                        "${vmJobcard.shedulecardResponse.data![i].client?.dp}",
                                                        fit: BoxFit.cover,
                                                      )
                                                    : Container(),
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 18.0),
                                        child: Observer(builder: (_) {
                                          return Text(
                                            vmJobcard.shedulecardResponse
                                                    .data?[i].salesPerson
                                                    ?.toString() ??
                                                '',
                                          );
                                        }),
                                      ),
                                      Column(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              nextjobfnction(context);
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.blue,
                                              onPrimary: Colors.black,
                                            ),
                                            child: const Text(
                                              'Next job',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => openMap(
                                                vmJobcard
                                                        .shedulecardResponse
                                                        .data?[i]
                                                        .client
                                                        ?.locationLatitude ??
                                                    "",
                                                vmJobcard
                                                        .shedulecardResponse
                                                        .data?[i]
                                                        .client
                                                        ?.locationLogitude ??
                                                    ""),
                                            child: Image.asset(
                                              'assets/images/googlemap.jpg',
                                              width: 60.0,
                                              height: 60.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Observer(builder: (_) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 22),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          expandedRowShowText2(
                                              "Day",
                                              DateFormat.yMMMMd().format(
                                                  vmJobcard.shedulecardResponse
                                                      .data![i].startDate!)),
                                          expandedRowShowText2(
                                            "Tme",
                                            vmJobcard.shedulecardResponse
                                                    .data?[i].startTime ??
                                                '',
                                          ),
                                          expandedRowShowText2(
                                            "Type",
                                            vmJobcard.shedulecardResponse
                                                    .data?[i].wasteTypeStr ??
                                                '',
                                          ),
                                          expandedRowShowText2(
                                            "Company",
                                            vmJobcard
                                                    .shedulecardResponse
                                                    .data?[i]
                                                    .client
                                                    ?.clientName ??
                                                '',
                                          ),
                                          (vmJobcard.shedulecardResponse.data !=
                                                      null &&
                                                  vmJobcard.shedulecardResponse
                                                          .data?[i].status !=
                                                      null)
                                              ? expandedRowShowText2(
                                                  "Status", "finished Job")
                                              : Container()
                                        ],
                                      ),
                                    );
                                  }),
                                  const SizedBox(height: 25),
                                  Expanded(
                                    child: Card(
                                      color: Colors.blue,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          const Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Drivers and vehicles',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          SizedBox(
                                            height: 94,
                                            child: Observer(builder: (_) {
                                              return ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: (vmJobcard
                                                        .shedulecardResponse
                                                        .data?[i]
                                                        .drivers
                                                        ?.length ??
                                                    0),
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int driverIndex) {
                                                  return Card(
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Observer(
                                                              builder: (_) {
                                                            return Row(
                                                              children: [
                                                                const SizedBox(
                                                                    width: 8),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              8.0,
                                                                          right:
                                                                              8),
                                                                  child:
                                                                      CircleAvatar(
                                                                    radius: 14,
                                                                    child: vmJobcard.shedulecardResponse.data?[i].drivers?[driverIndex].dp !=
                                                                            null
                                                                        ? Image
                                                                            .network(
                                                                            vmJobcard.shedulecardResponse.data![i].drivers![driverIndex].dp!,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          )
                                                                        : Container(),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  vmJobcard
                                                                          .shedulecardResponse
                                                                          .data?[
                                                                              i]
                                                                          .drivers?[
                                                                              driverIndex]
                                                                          .name ??
                                                                      '',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ],
                                                            );
                                                          }),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 43.0),
                                                            child: Text(
                                                              vmJobcard
                                                                      .shedulecardResponse
                                                                      .data?[i]
                                                                      .drivers?[
                                                                          driverIndex]
                                                                      .registration ??
                                                                  '',
                                                              style:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          15),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Schedule List for this week",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text(
                  //     'Week',
                  //     style: TextStyle(color: Colors.green),
                  //   ),
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.white,
                  //     onPrimary: Colors.black,
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                sheduledetailfunction4(
                  context,
                );
              },
              child: SizedBox(
                height: 310,
                child: Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            vmJobcard.sheduleweekResponse.data?.length ?? 0,
                        itemBuilder: (BuildContext context, int i) {
                          return SizedBox(
                            width: 400,
                            child: SingleChildScrollView(
                              child: WWResponseHandler(
                                data: vmJobcard.sheduleweekResponse,
                                isEmpty: vmJobcard
                                        .sheduleweekResponse.data?.isEmpty ??
                                    true,
                                onTap: () => vmJobcard
                                    .shedulecardviewmodelweekfunction(),
                                child: GestureDetector(
                                  onTap: () {
                                    sheduledetailfunction(
                                      context,
                                      vmJobcard.sheduleweekResponse.data?[i]
                                              .id ??
                                          '',
                                    );
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
                                                  vmJobcard
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
                                                    left: 8.0,
                                                    top: 8,
                                                    right: 8),
                                                child: Text(
                                                  'job ${vmJobcard.sheduleweekResponse.data?[i].job ?? ''}',
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
                                                    vmJobcard
                                                            .sheduleweekResponse
                                                            .data?[i]
                                                            .startTime ??
                                                        '',
                                                  );
                                                }),
                                              );
                                            }),
                                            ElevatedButton(
                                              onPressed: () {
                                                sheduledetailfunction(
                                                  context,
                                                  vmJobcard.sheduleweekResponse
                                                          .data?[i].id ??
                                                      '',
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white,
                                                onPrimary: Colors.black,
                                              ),
                                              child: const Text('pending'),
                                            ),
                                          ],
                                        ),
                                        Observer(builder: (_) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Observer(builder: (_) {
                                              return Text(DateFormat.yMMMMd()
                                                  .format(vmJobcard
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
                                          child: Flexible(
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
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0),
                                                        child: Text(
                                                          'Drivers',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 8.0),
                                                        child: Text(
                                                          'Vehicle assigned',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
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
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 8.0),
                                                          child: Observer(
                                                              builder: (_) {
                                                            return Text(
                                                              vmJobcard
                                                                      .shedulecardResponse
                                                                      .data?[i]
                                                                      .drivers?[
                                                                          0]
                                                                      .name ??
                                                                  '',
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            );
                                                          }),
                                                        ),
                                                        const Divider(
                                                          color: Colors.black,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 8.0),
                                                          child: Observer(
                                                              builder: (_) {
                                                            return Text(
                                                              vmJobcard
                                                                      .shedulecardResponse
                                                                      .data?[i]
                                                                      .drivers?[
                                                                          0]
                                                                      .registration ??
                                                                  '',
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
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
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Observer(
                                                              builder: (_) {
                                                            return Text(
                                                              vmJobcard
                                                                      .shedulecardResponse
                                                                      .data?[i]
                                                                      .jobCardKeys
                                                                      ?.weighBridgeRequiredMultipleFile
                                                                      ?.firstOrNull
                                                                      ?.name ??
                                                                  '',
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            );
                                                          }),
                                                        );
                                                      }),
                                                      Observer(builder: (_) {
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Text(
                                                            vmJobcard
                                                                    .sheduleweekResponse
                                                                    .data?[i]
                                                                    .vehicle
                                                                    ?.toString() ??
                                                                '',
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.white,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => sheduledetailsfunction2(context),
              child: const Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 4,
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
  print('calenderclicked');
  vmJobcard.shedulecardviewmodelfunction();
}

void sheduledetailfunction4(BuildContext context) {
  print('calenderclicked');

  context.router.pushNamed(RouteNames.rsheduledetail2page);
}

void calenderfunction(BuildContext context) {
  print('calenderclicked');
  context.router.pushNamed(RouteNames.rcalenderpage);
}

void sheduledetailfunction(BuildContext context, id) {
  print('mmmmmmmmmmmmmmmmmmmm$id');
  context.router.push(SheduledetailRoute(id: id));
}

void sheduledetailsfunction2(BuildContext context) {
  print('ssssspendingclicked');
  context.router.pushNamed(RouteNames.rsheduledetail2page);
}
