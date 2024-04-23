import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../widgets/drawer.dart';

@RoutePage()
class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(left: 18.0),
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
            SizedBox(
              height: 400,
              width: 400,
              child: Observer(builder: (_) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: vmJobcard.shedulecardResponse.data?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 68.0),
                                      child: Text(
                                        vmJobcard.shedulecardResponse
                                                .data?[index].salesPerson
                                                .toString() ??
                                            '',
                                      ),
                                    ),
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
                                  ],
                                ),
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
                                        (vmJobcard.shedulecardResponse
                                                    .data?[index].startDate ??
                                                '')
                                            .toString(),
                                      ),
                                      expandedRowShowText2(
                                        "Time",
                                        vmJobcard.shedulecardResponse
                                                .data?[index].startTime ??
                                            '',
                                      ),
                                      expandedRowShowText2(
                                        "Type",
                                        vmJobcard.shedulecardResponse
                                                .data?[index].wasteTypeStr ??
                                            '',
                                      ),
                                      expandedRowShowText2(
                                        "Company",
                                        vmJobcard
                                                .shedulecardResponse
                                                .data?[index]
                                                .outsourcedCompanyName ??
                                            '',
                                      ),
                                      expandedRowShowText2(
                                        "Status",
                                        vmJobcard.shedulecardResponse
                                                .data?[index].status ??
                                            '',
                                      ),
                                    ],
                                  ),
                                );
                              }),
                              const SizedBox(height: 10),
                              Card(
                                color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    const Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        'Drivers and vehicles',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Observer(builder: (_) {
                                            return ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: vmJobcard
                                                      .shedulecardResponse
                                                      .data
                                                      ?.length ??
                                                  0,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Card(
                                                    color: Colors.white,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Observer(builder: (_) {
                                                          return Text(
                                                            vmJobcard
                                                                    .shedulecardResponse
                                                                    .data?[
                                                                        index]
                                                                    .status ??
                                                                '',
                                                          );
                                                        }),
                                                        Text("vghadxcsdgjhacb"),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          }),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Schedule List",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Week',
                      style: TextStyle(color: Colors.green),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => sheduledetailfunction(context),
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Some Text Here'),
                        ElevatedButton(
                          onPressed: () {
                            sheduledetailfunction(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                          ),
                          child: const Text('pending'),
                        ),
                      ],
                    ),
                    const Text('Some Text Herwwwe'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Card(
                      color: Colors.blue,
                      child: Column(),
                    ),
                    const SizedBox(
                      child: Flexible(
                        child: Card(
                          color: Color.fromRGBO(33, 150, 243, 1),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'New Card Title 2',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'job765',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
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
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => sheduledetailsfunction2(context),
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Some Text Here'),
                        ElevatedButton(
                          onPressed: () {
                            sheduledetailsfunction2(context);
                          },
                          child: const Text('pending'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Text('Some Text Here'),
                    const SizedBox(
                      height: 10,
                      child: Card(
                        color: Colors.blue,
                        child: Column(),
                      ),
                    ),
                    const SizedBox(
                      child: Flexible(
                        child: Card(
                          color: Color.fromRGBO(33, 150, 243, 1),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'New Card Title 2',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'job765',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
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
        ),
      ),
    );
  }
}

void nextjobfnction(BuildContext context) {
  print('calenderclicked');
  vmJobcard.shedulecardviewmodelfunction();
}

void calenderfunction(BuildContext context) {
  print('calenderclicked');
  context.router.pushNamed(RouteNames.rcalenderpage);
}

void sheduledetailfunction(BuildContext context) {
  print('ssssspendingclicked');
  context.router.pushNamed(RouteNames.rsheduledetailpage);
}

void sheduledetailsfunction2(BuildContext context) {
  print('ssssspendingclicked');
  context.router.pushNamed(RouteNames.rsheduledetail2page);
}
