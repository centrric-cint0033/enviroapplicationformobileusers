import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/time_sheet_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class TimeSheetPage extends StatelessWidget {
  const TimeSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('TimeSheet'),
      ),
      body: Observer(builder: (context) {
        final res = vmTeam.timeSheetResponse;
        return Padding(
          padding: screenWidth,
          child: res.loading
              ? Center(child: wwCustomLoader())
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Choose Week :",
                            style: TextStyle(
                                color: Appthemes.cPrimary, fontSize: 10.w),
                          ),
                          cmDatePicker(
                              context,
                              vmTeam.selectedChooseWeekTimesheet,
                              (date) => vmTeam.datePickerFn12(date, context))
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Week Beginning :",
                            style: TextStyle(
                                color: Appthemes.cPrimary, fontSize: 10.w),
                          ),
                          Text(
                            vmTeam.selectedChooseWeekTimesheet != null
                                ? DateFormat('dd-MM-yyyy')
                                    .format(vmTeam.selectedChooseWeekTimesheet!)
                                : "",
                            style: TextStyle(
                                color: Appthemes.cPrimary, fontSize: 10.w),
                          ),
                        ],
                      ),
                      sized0hx10,
                      _buildTable(context),
                    ],
                  ),
                ),
        );
      }),
    );
  }

  Widget _buildTable(BuildContext context) {
    DateTime lastFriday = getLastFriday(vmTeam.selectedChooseWeekTimesheet!);
    List<DateTime> weekDates = getWeekDates(lastFriday);

    return Scrollbar(
      controller: vmTeam.timesheetScrCntrller,
      child: Observer(builder: (context) {
        final res = vmTeam.timeSheetResponse;
        TimeSheetResModel? timeSheet = res.data;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Table(
                  border: TableBorder.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      children: [
                        cmTableCell("Date", fromHeading: true),
                        cmTableCell("Day", fromHeading: true),
                        cmTableCell("Start", fromHeading: true),
                        cmTableCell("Finish", fromHeading: true),
                        cmTableCell("Total Hours Worked", fromHeading: true),
                        cmTableCell("Normal Hours", fromHeading: true),
                        cmTableCell("Time & Half", fromHeading: true),
                        cmTableCell("Double Time", fromHeading: true),
                        cmTableCell("Leave", fromHeading: true),
                        cmTableCell("Leave", fromHeading: true),
                        cmTableCell("Leave", fromHeading: true),
                        cmTableCell("Leave", fromHeading: true),
                      ],
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount:
                      timeSheet?.weeklyReport?.week?.length ?? weekDates.length,
                  itemBuilder: (context, index) {
                    final data = timeSheet?.weeklyReport?.week?[index];

                    return InkWell(
                      onTap: () {
                        if (data != null) {
                          if (data.start != "") {
                            vmTeam.selectedStartTime =
                                timeOfDayFromString(data.start ?? "");
                            vmTeam.selectedEndTime =
                                timeOfDayFromString(data.finish ?? "");
                          } else {
                            vmTeam.selectedStartTime = null;
                            vmTeam.selectedEndTime = null;
                          }

                          context.router
                              .push(EditTimeSheetRoute(timesheetWeek: data));
                        } else {
                          context.router.push(EditTimeSheetRoute(
                            date: DateFormat('dd-MM-yyyy')
                                .format(weekDates[index]),
                            day: DateFormat('EEEE').format(weekDates[index]),
                          ));
                        }
                      },
                      child: Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        defaultColumnWidth: FixedColumnWidth(80.w),
                        children: [
                          TableRow(
                            children: [
                              cmTableCell(
                                data != null
                                    ? data.date ?? ""
                                    : DateFormat('dd-MM-yyyy')
                                        .format(weekDates[index]),
                                onTap: () {},
                              ),
                              cmTableCell(
                                data != null
                                    ? data.day ?? ""
                                    : DateFormat('EEEE')
                                        .format(weekDates[index]),
                              ),
                              cmTableCell(data?.start ?? ""),
                              cmTableCell(data?.finish ?? ""),
                              cmTableCell("${data?.totalHoursWorked ?? ""}"),
                              cmTableCell(data?.normalHours ?? ""),
                              cmTableCell(data?.fullTime ?? ""),
                              cmTableCell(data?.halfTime ?? ""),
                              cmTableCell(data?.publicHolidays ?? ""),
                              cmTableCell(data?.annual ?? ""),
                              cmTableCell(data?.sick ?? ""),
                              cmTableCell(data?.otherDays ?? ""),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Table(
                  border: TableBorder.all(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: {
                    0: FlexColumnWidth(160.w),
                    1: FixedColumnWidth(160.w),
                    2: FlexColumnWidth(80.w),
                    3: FlexColumnWidth(80.w),
                    4: FlexColumnWidth(80.w),
                    5: FlexColumnWidth(80.w),
                    6: FlexColumnWidth(80.w),
                    7: FlexColumnWidth(80.w),
                    8: FlexColumnWidth(80.w),
                    9: FlexColumnWidth(80.w),
                    10: FlexColumnWidth(80.w),
                  },
                  children: [
                    TableRow(
                      children: [
                        cmTableCell(""),
                        cmTableCell("Total Worked Hours"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeHoursTotalWorked?.totalHoursWorked}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeHoursTotalWorked?.normalHours}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeHoursTotalWorked?.halfTime}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeHoursTotalWorked?.fullTime}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeHoursTotalWorked?.publicHolidays}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeHoursTotalWorked?.annual}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeHoursTotalWorked?.sick}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeHoursTotalWorked?.otherDays}"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(""),
                        cmTableCell("Minus Breaks"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeWeekMinus?.totalHoursWorked}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeWeekMinus?.normalHours}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeWeekMinus?.halfTime}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeWeekMinus?.fullTime}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeWeekMinus?.publicHolidays}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeWeekMinus?.annual}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeWeekMinus?.sick}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholeWeekMinus?.otherDays}"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(""),
                        cmTableCell("Paid Hours"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholePaidHours?.totalHoursWorked}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholePaidHours?.normalHours}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholePaidHours?.halfTime}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholePaidHours?.fullTime}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholePaidHours?.publicHolidays}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholePaidHours?.annual}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholePaidHours?.sick}"),
                        cmTableCell(
                            "${timeSheet?.weeklyReport?.wholePaidHours?.otherDays}"),
                      ],
                    ),
                  ],
                ),
                sized0hx10,
                Text(
                  "Comment",
                  style: TextStyle(fontSize: 9.w, fontWeight: FontWeight.bold),
                ),
                sized0hx05,
                Container(
                  height: 45.h,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: TextField(
                    controller: vmTeam.timesheetCommentController,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 9.w),
                    decoration: InputDecoration(
                      hintText: 'Type Here...',
                      hintStyle: TextStyle(
                          fontSize: 9.w, fontWeight: FontWeight.normal),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                sized0hx05,
              ],
            ),
          ),
        );
      }),
    );
  }

  DateTime getLastFriday(DateTime date) {
    int daysToSubtract = (date.weekday + 1) % 7 + 1;
    if (date.weekday >= DateTime.friday) {
      daysToSubtract = date.weekday - DateTime.friday;
    } else {
      daysToSubtract = date.weekday + 2;
    }
    return date.subtract(Duration(days: daysToSubtract));
  }

  List<DateTime> getWeekDates(DateTime startOfWeek) {
    return List.generate(7, (index) => startOfWeek.add(Duration(days: index)));
  }

  Widget cmDatePicker(BuildContext context, DateTime? selectedDate,
      Function(DateTime date) pickedDate) {
    DateTime? displayDate;

    // Show last Friday if selectedDate is null
    if (selectedDate == null) {
      displayDate = getLastFriday(DateTime.now());
    } else {
      displayDate = getLastFriday(selectedDate);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          // ignore: unnecessary_null_comparison
          displayDate != null
              ? DateFormat('dd-MM-yyyy').format(displayDate)
              : "",
          style: TextStyle(fontSize: 10.w, color: Colors.grey.shade700),
        ),
        sized0wx10,
        datePicker(context, selectedDate ?? DateTime.now(), (pickedDate) {
          DateTime lastFriday = getLastFriday(pickedDate);
          vmTeam.datePickerFn12(lastFriday, context);
        }),
      ],
    );
  }

  TableCell cmTableCell(String cellValue,
      {bool fromHeading = false, VoidCallback? onTap}) {
    return TableCell(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: fromHeading ? Appthemes.cPrimary : Colors.white,
          height: 42.w,
          child: Center(
            child: Text(
              cellValue,
              style: TextStyle(
                fontSize: 10.w,
                color: fromHeading ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TimeOfDay timeOfDayFromString(String time) {
  try {
    // Split the time string into hours and minutes
    List<String> parts = time.split(':');
    int hour = int.parse(parts[0]);
    int minute = int.parse(parts[1]);

    return TimeOfDay(hour: hour, minute: minute);
  } catch (e) {
    print('Error parsing time string: $e');
    return TimeOfDay.now(); // Fallback to current time on error
  }
}

String formatTimeOfDay(TimeOfDay time) {
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}
