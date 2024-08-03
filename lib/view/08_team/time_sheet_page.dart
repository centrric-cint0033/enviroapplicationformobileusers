import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/time_sheet_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
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
                                color: Appthemes.cPrimary, fontSize: 10.sp),
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
                                color: Appthemes.cPrimary, fontSize: 10.sp),
                          ),
                          Text(
                            vmTeam.selectedChooseWeekTimesheet != null
                                ? DateFormat('dd-MM-yyyy')
                                    .format(vmTeam.selectedChooseWeekTimesheet!)
                                : "",
                            style: TextStyle(
                                color: Appthemes.cPrimary, fontSize: 10.sp),
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
        vmTeam.calculateNormalHoursSum(timeSheet);
        vmTeam.calculateTotalWorkedHrs(timeSheet);
        vmTeam.calculateHalfTimeHoursSum(timeSheet);
        vmTeam.calculateDoubleTimeHoursSum(timeSheet);
        vmTeam.calculatePublicHolidayHoursSum(timeSheet);
        vmTeam.calculateAnnualHoursSum(timeSheet);
        vmTeam.calculateSickHoursSum(timeSheet);
        vmTeam.calculateOtherHoursSum(timeSheet);
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
                        cmTableCell("Time & Half",
                            fromHeading: true,
                            showDivider: true,
                            cellValue2: "X 1.5"),
                        cmTableCell("Double Time",
                            fromHeading: true,
                            showDivider: true,
                            cellValue2: "X 2"),
                        cmTableCell("Leave",
                            fromHeading: true,
                            showDivider: true,
                            cellValue2: "Public Holiday"),
                        cmTableCell("Leave",
                            fromHeading: true,
                            showDivider: true,
                            cellValue2: "Annual"),
                        cmTableCell("Leave",
                            fromHeading: true,
                            showDivider: true,
                            cellValue2: "Sick"),
                        cmTableCell("Leave",
                            fromHeading: true,
                            showDivider: true,
                            cellValue2: "Other"),
                      ],
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 7, // Always 7 items
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final week = timeSheet?.weeklyReport?.week;
                    final data = (week != null && index < week.length)
                        ? week[index]
                        : null;
                    String inputweekStartDate = data?.date ??
                        DateFormat('dd-MM-yyyy').format(weekDates[0]);
                    DateTime parsedDate =
                        DateFormat('dd-MM-yyyy').parse(inputweekStartDate);
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(parsedDate);
                    vmTeam.weekStartDate =
                        data?.date != null ? inputweekStartDate : formattedDate;
                    double totalHoursWorked =
                        parseTimeString(data?.totalHoursWorked ?? "0");
                    String formattedTotalHoursWorked =
                        formatDouble(totalHoursWorked);
                    return InkWell(
                      onTap: () {
                        vmTeam.totalHrsController.text =
                            "${data?.totalHoursWorked ?? "0"}";
                        vmTeam.normalHourController.text =
                            "${data?.normalHours ?? ""}";
                        vmTeam.timehalfController.text =
                            "${data?.halfTime ?? ""}";
                        vmTeam.doubleTimeController.text =
                            "${data?.fullTime ?? ""}";
                        vmTeam.publicHolidayController.text =
                            "${data?.publicHolidays ?? ""}";
                        vmTeam.annualController.text = "${data?.annual ?? ""}";
                        vmTeam.sickController.text = "${data?.sick ?? ""}";
                        vmTeam.otherController.text =
                            "${data?.otherDays ?? ""}";

                        if (data != null) {
                          if (data.start != "") {
                            vmTeam.selectedStartTime =
                                timeOfDayFromString(data.start.toString());
                            vmTeam.selectedEndTime =
                                timeOfDayFromString(data.finish.toString());
                          } else {
                            vmTeam.selectedStartTime = null;
                            vmTeam.selectedEndTime = null;
                          }

                          context.router.push(EditTimeSheetRoute(
                              timesheetWeek: data,
                              weekStartDate: vmTeam.weekStartDate));
                        } else {
                          vmTeam.selectedStartTime = null;
                          vmTeam.selectedEndTime = null;
                          context.router.push(EditTimeSheetRoute(
                              date: DateFormat('dd-MM-yyyy')
                                  .format(weekDates[index]),
                              day: DateFormat('EEEE').format(weekDates[index]),
                              weekStartDate: vmTeam.weekStartDate));
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
                                data?.date ??
                                    DateFormat('dd-MM-yyyy')
                                        .format(weekDates[index]),
                                onTap: () {},
                              ),
                              cmTableCell(
                                data?.day ??
                                    DateFormat('EEEE').format(weekDates[index]),
                              ),
                              cmTableCell(data != null
                                  ? formatTimeOfDay(data.start!)
                                  : "-"),
                              cmTableCell(data != null
                                  ? formatTimeOfDay(data.finish!)
                                  : "-"),
                              cmTableCell(formattedTotalHoursWorked),
                              cmTableCell("${data?.normalHours ?? "0"}"),
                              cmTableCell(
                                  "${data?.halfTime != "" && data?.halfTime != null ? data?.halfTime : "0"}"),
                              cmTableCell(
                                  "${data?.fullTime != "" && data?.fullTime != null ? data?.fullTime : "0"}"),
                              cmTableCell(
                                  "${data?.publicHolidays != "" && data?.publicHolidays != null ? data?.publicHolidays : "0"}"),
                              cmTableCell(
                                  "${data?.annual != "" && data?.annual != null ? data?.annual : "0"}"),
                              cmTableCell(
                                  "${data?.sick != "" && data?.sick != null ? data?.sick : "0"}"),
                              cmTableCell(
                                  "${data?.otherDays != "" && data?.otherDays != null ? data?.otherDays : "0"}"),
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
                        cmTableCell(removeTrailingZeros(
                          vmTeam.totalWorkedHrs ?? "0",
                        )),
                        cmTableCell(removeTrailingZeros(
                            vmTeam.totalNormalHoursSum ?? "0")),
                        cmTableCell(removeTrailingZeros(
                            vmTeam.totalHalfTimeHrs ?? "0")),
                        cmTableCell(removeTrailingZeros(
                            vmTeam.totalDoubleTimeHrs ?? "0")),
                        cmTableCell(removeTrailingZeros(
                            vmTeam.totalPublicHoliday ?? "0")),
                        cmTableCell(
                            removeTrailingZeros(vmTeam.totalAnnual ?? "0")),
                        cmTableCell(
                            removeTrailingZeros(vmTeam.totalSick ?? "0")),
                        cmTableCell(
                            removeTrailingZeros(vmTeam.totalOther ?? "0")),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(""),
                        cmTableCell("Minus Breaks"),
                        cmTableCellTextField(
                          vmTeam.minusBrkstotalHrsController,
                          onChanged: (e) {
                            vmTeam.paidHrsFn1(removeTrailingZeros(
                              vmTeam.totalWorkedHrs ?? "0",
                            ));
                          },
                        ),
                        cmTableCellTextField(
                            vmTeam.minusBrksnormalHourController,
                            onChanged: (e) {
                          vmTeam.paidHrsFn2(removeTrailingZeros(
                              vmTeam.totalNormalHoursSum ?? "0"));
                        }),
                        cmTableCellTextField(vmTeam.minusBrkstimehalfController,
                            onChanged: (e) {
                          vmTeam.paidHrsFn3(removeTrailingZeros(
                              vmTeam.totalHalfTimeHrs ?? "0"));
                        }),
                        cmTableCellTextField(
                            vmTeam.minusBrksdoubleTimeController,
                            onChanged: (e) {
                          vmTeam.paidHrsFn4(removeTrailingZeros(
                              vmTeam.totalDoubleTimeHrs ?? "0"));
                        }),
                        cmTableCellTextField(
                            vmTeam.minusBrkspublicHolidayController,
                            onChanged: (e) {
                          vmTeam.paidHrsFn5(removeTrailingZeros(
                              vmTeam.totalPublicHoliday ?? "0"));
                        }),
                        cmTableCellTextField(vmTeam.minusBrksannualController,
                            onChanged: (e) {
                          vmTeam.paidHrsFn6(
                              removeTrailingZeros(vmTeam.totalAnnual ?? "0"));
                        }),
                        cmTableCellTextField(vmTeam.minusBrkssickController,
                            onChanged: (e) {
                          vmTeam.paidHrsFn7(
                              removeTrailingZeros(vmTeam.totalSick ?? "0"));
                        }),
                        cmTableCellTextField(vmTeam.minusBrksotherController,
                            onChanged: (e) {
                          vmTeam.paidHrsFn8(removeTrailingZeros(
                            vmTeam.totalWorkedHrs ?? "0",
                          ));
                        }),
                        // cmTableCell(
                        //     "${timeSheet?.weeklyReport?.wholeWeekMinus?.totalHoursWorked ?? "0"}"),
                        // cmTableCell(
                        //     "${timeSheet?.weeklyReport?.wholeWeekMinus?.normalHours ?? "0"}"),
                        // cmTableCell(
                        //     "${timeSheet?.weeklyReport?.wholeWeekMinus?.halfTime ?? "0"}"),
                        // cmTableCell(
                        //     "${timeSheet?.weeklyReport?.wholeWeekMinus?.fullTime ?? "0"}"),
                        // cmTableCell(
                        //     "${timeSheet?.weeklyReport?.wholeWeekMinus?.publicHolidays ?? "0"}"),
                        // cmTableCell(
                        //     "${timeSheet?.weeklyReport?.wholeWeekMinus?.annual ?? "0"}"),
                        // cmTableCell(
                        //     "${timeSheet?.weeklyReport?.wholeWeekMinus?.sick ?? "0"}"),
                        // cmTableCell(
                        //     "${timeSheet?.weeklyReport?.wholeWeekMinus?.otherDays ?? "0"}"),
                      ],
                    ),
                    TableRow(
                      children: [
                        cmTableCell(""),
                        cmTableCell("Paid Hours"),
                        cmTableCellTextField(vmTeam.paidHrstotalHrsController,
                            hintText: "0",
                            enabled: false,
                            textColor: Appthemes.cPrimary),
                        cmTableCellTextField(vmTeam.paidHrsnormalHourController,
                            hintText: "0",
                            enabled: false,
                            textColor: Appthemes.cPrimary),
                        cmTableCellTextField(vmTeam.paidHrstimehalfController,
                            hintText: "0",
                            enabled: false,
                            textColor: Appthemes.cPrimary),
                        cmTableCellTextField(vmTeam.paidHrsdoubleTimeController,
                            hintText: "0",
                            enabled: false,
                            textColor: Appthemes.cPrimary),
                        cmTableCellTextField(
                            vmTeam.paidHrspublicHolidayController,
                            hintText: "0",
                            enabled: false,
                            textColor: Appthemes.cPrimary),
                        cmTableCellTextField(vmTeam.paidHrsannualController,
                            hintText: "0",
                            enabled: false,
                            textColor: Appthemes.cPrimary),
                        cmTableCellTextField(vmTeam.paidHrssickController,
                            hintText: "0",
                            enabled: false,
                            textColor: Appthemes.cPrimary),
                        cmTableCellTextField(vmTeam.paidHrsotherController,
                            hintText: "0",
                            enabled: false,
                            textColor: Appthemes.cPrimary),
                      ],
                    ),
                  ],
                ),
                sized0hx10,
                Text(
                  "Comment",
                  style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold),
                ),
                sized0hx05,
                Container(
                  height: 45.h,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: TextField(
                    controller: vmTeam.timesheetCommentController,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 9.sp),
                    decoration: InputDecoration(
                      hintText: 'Type Here...',
                      hintStyle: TextStyle(
                          fontSize: 9.sp, fontWeight: FontWeight.normal),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                sized0hx05,
                CmButton(
                  width: 120.w,
                  text: "Save",
                  onPressed: () {
                    vmTeam.minusBrkstotalHrsController.text =
                        vmTeam.minusBrkstotalHrsController.text;
                  },
                )
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
          style: TextStyle(fontSize: 10.sp, color: Colors.grey.shade700),
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
      {bool showDivider = false,
      bool fromHeading = false,
      VoidCallback? onTap,
      String? cellValue2}) {
    return TableCell(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            color: fromHeading ? Appthemes.cPrimary : Colors.white,
            height: 46.w,
            child: showDivider == false
                ? Center(
                    child: Text(
                      cellValue,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: fromHeading ? Colors.white : Colors.black,
                      ),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cellValue,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: fromHeading ? Colors.white : Colors.black,
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      Text(
                        cellValue2 ?? "",
                        style: TextStyle(
                          fontSize: 9.sp,
                          color: fromHeading ? Colors.white : Colors.black,
                        ),
                      )
                    ],
                  )),
      ),
    );
  }
}

TableCell cmTableCellTextField(TextEditingController controller,
    {bool enabled = true,
    String? hintText,
    void Function(String)? onChanged,
    Color? textColor}) {
  return TableCell(
    child: Padding(
        padding: EdgeInsets.only(left: 32.w),
        child: TextField(
          controller: controller,
          style: TextStyle(
              fontSize: 9.sp, color: textColor ?? Appthemes.blackColor),
          enabled: enabled,
          onChanged: onChanged,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: hintText ?? '---',
            hintStyle: TextStyle(fontSize: 9.sp, color: Colors.grey.shade400),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
        )),
  );
}

TimeOfDay timeOfDayFromString(String time) {
  try {
    List<String> parts = time.split(':');
    int hour = int.parse(parts[0]);
    int minute = int.parse(parts[1]);

    return TimeOfDay(hour: hour, minute: minute);
  } catch (e) {
    return TimeOfDay.now();
  }
}

String formatTimeOfDay(TimeOfDay time) {
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}

String convertToRailwayTime(String timestamp) {
  DateTime dateTime = DateTime.parse(timestamp);
  DateFormat formatter =
      DateFormat.Hm(); // Hm stands for hours and minutes in 24-hour format
  return formatter.format(dateTime);
}

String removeTrailingZeros(dynamic value) {
  return value.toStringAsFixed(value.truncateToDouble() == value ? 0 : 1);
}

String formatDouble(double value) {
  if (value == value.toInt().toDouble()) {
    return value.toInt().toString(); // No decimal part
  } else {
    return value.toStringAsFixed(2); // Two decimal places if needed
  }
}

double parseTimeString(String timeString) {
  // Split the string into hours and minutes
  List<String> parts = timeString.split(':');
  if (parts.length == 2) {
    // Convert hours and minutes to double
    double hours = double.tryParse(parts[0]) ?? 0;
    double minutes = double.tryParse(parts[1]) ?? 0;
    // Convert minutes to a fraction of an hour
    return hours + (minutes / 60);
  }
  return 0;
}
