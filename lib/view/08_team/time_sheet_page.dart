import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
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
        return Padding(
          padding: screenWidth,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Choose Week :",
                    style: TextStyle(color: Appthemes.cPrimary, fontSize: 10.w),
                  ),
                  cmDatePicker(context, vmTeam.selectedChooseWeekTimesheet,
                      (date) => vmTeam.datePickerFn12(date))
                ],
              ),
              Row(
                children: [
                  Text(
                    "Week Beginning :",
                    style: TextStyle(color: Appthemes.cPrimary, fontSize: 10.w),
                  ),
                  Text(
                    vmTeam.selectedChooseWeekTimesheet != null
                        ? DateFormat('dd-MM-yyyy')
                            .format(vmTeam.selectedChooseWeekTimesheet!)
                        : "",
                    style: TextStyle(color: Appthemes.cPrimary, fontSize: 10.w),
                  ),
                ],
              ),
              sized0hx10,
              if (vmTeam.selectedChooseWeekTimesheet != null)
                _buildTable(context),
            ],
          )),
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
        vmTeam.totalDayFn();
        vmTeam.totalHrsFn();
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width * 3,
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(), // Adds a border to the table
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  defaultColumnWidth: FixedColumnWidth(80.w),
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
                    TableRow(
                      children: [
                        cmTableCell(
                            DateFormat('dd-MM-yyyy').format(weekDates[0]),
                            onTap: () {
                          log("message");
                        }),
                        cmTableCell(DateFormat('EEEE').format(weekDates[0])),
                        cmTableCell("Start"),
                        cmTableCell("Finish"),
                        cmTableCell("Total Hours Worked"),
                        cmTableCell("Normal Hours"),
                        cmTableCell("Time & Half"),
                        cmTableCell("Double Time"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(
                            DateFormat('dd-MM-yyyy').format(weekDates[1])),
                        cmTableCell(DateFormat('EEEE').format(weekDates[1])),
                        cmTableCell("Start"),
                        cmTableCell("Finish"),
                        cmTableCell("Total Hours Worked"),
                        cmTableCell("Normal Hours"),
                        cmTableCell("Time & Half"),
                        cmTableCell("Double Time"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(
                            DateFormat('dd-MM-yyyy').format(weekDates[2])),
                        cmTableCell(DateFormat('EEEE').format(weekDates[2])),
                        cmTableCell("Start"),
                        cmTableCell("Finish"),
                        cmTableCell("Total Hours Worked"),
                        cmTableCell("Normal Hours"),
                        cmTableCell("Time & Half"),
                        cmTableCell("Double Time"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(
                            DateFormat('dd-MM-yyyy').format(weekDates[3])),
                        cmTableCell(DateFormat('EEEE').format(weekDates[3])),
                        cmTableCell("Start"),
                        cmTableCell("Finish"),
                        cmTableCell("Total Hours Worked"),
                        cmTableCell("Normal Hours"),
                        cmTableCell("Time & Half"),
                        cmTableCell("Double Time"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(
                            DateFormat('dd-MM-yyyy').format(weekDates[4])),
                        cmTableCell(DateFormat('EEEE').format(weekDates[4])),
                        cmTableCell("Start"),
                        cmTableCell("Finish"),
                        cmTableCell("Total Hours Worked"),
                        cmTableCell("Normal Hours"),
                        cmTableCell("Time & Half"),
                        cmTableCell("Double Time"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(
                            DateFormat('dd-MM-yyyy').format(weekDates[5])),
                        cmTableCell(DateFormat('EEEE').format(weekDates[5])),
                        cmTableCell("Start"),
                        cmTableCell("Finish"),
                        cmTableCell("Total Hours Worked"),
                        cmTableCell("Normal Hours"),
                        cmTableCell("Time & Half"),
                        cmTableCell("Double Time"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(
                            DateFormat('dd-MM-yyyy').format(weekDates[6])),
                        cmTableCell(DateFormat('EEEE').format(weekDates[6])),
                        cmTableCell("Start"),
                        cmTableCell("Finish"),
                        cmTableCell("Total Hours Worked"),
                        cmTableCell("Normal Hours"),
                        cmTableCell("Time & Half"),
                        cmTableCell("Double Time"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                        cmTableCell("Leave"),
                      ],
                    ),
                    // ...weekDates.map((date) {
                    //   return TableRow(
                    //     children: [
                    //       cmTableCell(DateFormat('dd-MM-yyyy').format(date)),
                    //       cmTableCell(DateFormat('EEEE').format(date)),
                    //       cmTableCell("Start"),
                    //       cmTableCell("Finish"),
                    //       cmTableCell("Total Hours Worked"),
                    //       cmTableCell("Normal Hours"),
                    //       cmTableCell("Time & Half"),
                    //       cmTableCell("Double Time"),
                    //       cmTableCell("Leave"),
                    //       cmTableCell("Leave"),
                    //       cmTableCell("Leave"),
                    //       cmTableCell("Leave"),
                    //     ],
                    //   );
                    // }).toList(),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  DateTime getLastFriday(DateTime date) {
    int daysToSubtract = (date.weekday + 1) % 7 + 1;
    return date.subtract(Duration(days: daysToSubtract));
  }

  List<DateTime> getWeekDates(DateTime startOfWeek) {
    return List.generate(7, (index) => startOfWeek.add(Duration(days: index)));
  }

  Widget cmDatePicker(BuildContext context, DateTime? selectedDate,
      Function(DateTime date) pickedDate) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedDate != null
              ? DateFormat('dd-MM-yyyy').format(selectedDate)
              : "",
          style: TextStyle(fontSize: 9.w, color: Colors.grey.shade700),
        ),
        sized0wx10,
        datePicker(context, selectedDate, pickedDate),
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
          height: 45.w,
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
