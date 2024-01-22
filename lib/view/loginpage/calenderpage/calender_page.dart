import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:provider/provider.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingImage: Image.asset(ImageConstant.imagePath),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            iconSize: 32,
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Observer(builder: (_) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TableCalendar(
                      focusedDay: vmcalender.focusedDay,
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                    ),
                  ),
                );
              }),
              const SizedBox(height: 28),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'Schedule List',
                    style: TextStyle(),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Card with details
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Suresh Ramakrishnan',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Job ID: 3117',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '12:00 AM - 12:00 AM',
                            style: TextStyle(fontSize: 16),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Completed'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Divider(thickness: 1, color: Colors.white),
                      Container(
                        width: 600,
                        child: const Card(
                          color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Drivers',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      'Vehicele Assigned',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Amobile testerHehe',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      'Staging vehicles',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Apisamirewsalato',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      'Enviro textcaesw',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'brettdyson',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      'cdevferftbg',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
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
      ),
    );
  }
}
