import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_widget.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../model/12_shedulecard/shedule_card_resp_model.dart';
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
              width: 300,
              child: Observer(
                builder: (_) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: vmJobcard.shedulecardResponse.data?.length ?? 0,
                    itemBuilder: (BuildContext context, int i) {
                      return SizedBox(
                        width: 380,
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
                                    Text(
                                      vmJobcard.shedulecardResponse.data?[i]
                                              .salesPerson
                                              ?.toString() ??
                                          '',
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
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 22),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    expandedRowShowText2(
                                      "Day",
                                      (vmJobcard.shedulecardResponse.data?[i]
                                                  .startDate ??
                                              '')
                                          .toString(),
                                    ),
                                    expandedRowShowText2(
                                      "Time",
                                      vmJobcard.shedulecardResponse.data?[i]
                                              .startTime ??
                                          '',
                                    ),
                                    expandedRowShowText2(
                                      "Type",
                                      vmJobcard.shedulecardResponse.data?[i]
                                              .wasteTypeStr ??
                                          '',
                                    ),
                                    expandedRowShowText2(
                                      "Company",
                                      vmJobcard.shedulecardResponse.data?[i]
                                              .outsourcedCompanyName ??
                                          '',
                                    ),
                                    expandedRowShowText2(
                                      "Status",
                                      vmJobcard.shedulecardResponse.data?[i]
                                              .status ??
                                          '',
                                    ),
                                  ],
                                ),
                              ),
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
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      height: 94,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: (vmJobcard
                                                .shedulecardResponse
                                                .data?[i]
                                                .drivers
                                                ?.length ??
                                            0),
                                        itemBuilder: (BuildContext context,
                                            int driverIndex) {
                                          return Card(
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Observer(builder: (_) {
                                                    return Row(
                                                      children: [
                                                        const SizedBox(
                                                            width: 8),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 8.0,
                                                                  right: 8),
                                                          child: CircleAvatar(
                                                            radius: 14,
                                                            child: vmJobcard
                                                                        .shedulecardResponse
                                                                        .data?[
                                                                            i]
                                                                        .drivers?[
                                                                            driverIndex]
                                                                        .dp !=
                                                                    null
                                                                ? Image.network(
                                                                    vmJobcard
                                                                        .shedulecardResponse
                                                                        .data![
                                                                            i]
                                                                        .drivers![
                                                                            driverIndex]
                                                                        .dp!,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  )
                                                                : Container(),
                                                          ),
                                                        ),
                                                        Text(
                                                          vmJobcard
                                                                  .shedulecardResponse
                                                                  .data?[i]
                                                                  .drivers?[
                                                                      driverIndex]
                                                                  .name ??
                                                              '',
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 15),
                                                        ),
                                                      ],
                                                    );
                                                  }),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 43.0),
                                                    child: Text(
                                                      vmJobcard
                                                              .shedulecardResponse
                                                              .data?[i]
                                                              .drivers?[
                                                                  driverIndex]
                                                              .registration ??
                                                          '',
                                                      style: const TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
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
                    const Text('Some Text Here'),
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
