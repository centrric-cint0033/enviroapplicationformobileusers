import 'package:enviro_mobile_application/view/loginpage/common/appbar/Appthemes/Appthemes.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_small_card.dart';

import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

Padding calander_page() {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: SingleChildScrollView(
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
  );
}
