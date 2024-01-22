import 'package:enviro_mobile_application/view/loginpage/common/appbar/Appthemes/Appthemes.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';
import 'package:enviro_mobile_application/view/loginpage/homepage/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:provider/provider.dart';

import '../homepage/widgets/common_small_card.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonTabbar(),
                const SizedBox(height: 20),
                Observer(builder: (_) {
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Appthemes.textfieldbcColor),
                        child: TableCalendar(
                          focusedDay: vmcalender.focusedDay,
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          calendarStyle: const CalendarStyle(
                              defaultTextStyle: TextStyle(color: Colors.blue)),
                        ),
                      ),
                    ),
                  );
                }),
                const SizedBox(height: 68),
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
                const common_card(),
                SizedBox(
                  height: 18.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
