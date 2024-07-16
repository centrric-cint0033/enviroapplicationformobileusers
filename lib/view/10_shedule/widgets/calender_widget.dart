import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

Widget calenderWidget() {
  return Container(
    decoration: BoxDecoration(color: Colors.grey.shade200),
    child: TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2050, 3, 14),
      focusedDay: vmSchedule.focusedDay,
      calendarFormat: CalendarFormat.month,
      selectedDayPredicate: (day) {
        return isSameDay(vmSchedule.selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        vmSchedule.dateSelectionFn(selectedDay, focusedDay);
        vmSchedule.shedulecardviewmodelfunctionByDate(
          fromDate: DateFormat('yyyy-MM-dd').format(selectedDay),
        );
      },
      calendarStyle: CalendarStyle(
          cellMargin: const EdgeInsets.all(8.0),
          cellPadding: const EdgeInsets.all(6.0),
          todayDecoration: const BoxDecoration(
            color: Appthemes.cPrimary,
            shape: BoxShape.circle,
          ),
          selectedDecoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          defaultTextStyle: TextStyle(
            fontSize: 10.h,
          ),
          weekendTextStyle: TextStyle(
            fontSize: 10.h,
          ),
          outsideDaysVisible: false),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: 10.h,
        ),
        weekendStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: 10.h,
        ),
        dowTextFormatter: (date, locale) {
          final daysOfWeek = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
          return daysOfWeek[date.weekday % 7];
        },
      ),
      headerStyle:
          const HeaderStyle(formatButtonVisible: false, titleCentered: true),
    ),
  );
}
