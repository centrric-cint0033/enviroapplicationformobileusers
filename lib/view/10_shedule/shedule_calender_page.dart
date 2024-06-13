// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_page.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/calender_widget.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/common_tababr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class CalenderPage extends StatelessWidget {
  const CalenderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
              title: cmnTitleWidget('Sheduling'),
              actions: [notificationButton(context)]),
          body: Observer(builder: (context) {
            return Padding(
              padding: screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const WWcommonTabBar(
                      value1: 'Waste',
                      value2: 'Pumbs',
                      value3: 'Hills',
                      value4: 'Destruction',
                      value5: 'All',
                    ),
                    sized0hx05,
                    calenderWidget(),
                    sized0hx10,
                    SizedBox(
                      height: 400,
                      child: TabBarView(children: [
                        Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Schedule List',
                                  style: TextStyle(fontSize: 14.h),
                                )),
                            sized0hx05,
                            Expanded(
                              child: Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'New Card Title 2',
                                        ),
                                        Text(
                                          'job7654',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Some Text Here'),
                                        ElevatedButton(
                                          onPressed: () {
                                            sheduledetailsfunction2(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            onPrimary: Colors.black,
                                          ),
                                          child: const Text('pending'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: GestureDetector(
                                        onTap: () {
                                          sheduledetailsfunction2(context);
                                        },
                                        child: const Card(
                                          color: Appthemes.cPrimary,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'New Card Title 2',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    'job7654',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                color: Colors.white,
                                                thickness: 1,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'New Card Title 2',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Divider(
                                                    color: Colors.black,
                                                  ),
                                                  Text(
                                                    'job7654',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                color: Colors.white,
                                                thickness: 1,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'New Card Title 2',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    'job7654',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                color: Colors.white,
                                                thickness: 1,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'New Card Title 2',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    'job7654',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                color: Colors.white,
                                                thickness: 1,
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
                          ],
                        )
                      ]),
                    ),
                    sized0hx20,
                  ],
                ),
              ),
            );
          })),
    );
  }
}
