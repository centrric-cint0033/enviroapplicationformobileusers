import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/week.dart';
import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/weekly_report.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/time_picker.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class EditTimeSheetPage extends StatelessWidget {
  const EditTimeSheetPage(
      {super.key, this.timesheetWeek, this.date, this.day, this.weekStartDate});
  final Week? timesheetWeek;
  final String? date;
  final String? day;
  final String? weekStartDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Edit New'),
      ),
      body: Observer(builder: (context) {
        vmTeam.showSubmitEditTimesheetFn();
        return SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: screenWidth,
            child: Text(
              "${timesheetWeek?.date ?? "$date"} -${timesheetWeek?.day ?? "$day"}",
              style: TextStyle(fontSize: 12.w, fontWeight: FontWeight.bold),
            ),
          ),
          sized0hx10,
          cmGreyContainer("Duration"),
          sized0hx10,
          cmTimerRow(
              "Start Time",
              context,
              Observer(
                  builder: (context) => cmTimePicker(
                      context,
                      vmTeam.selectedStartTime,
                      (time) => vmTeam.timePickerFn1(time))),
              vmTeam.selectedStartTime),
          cmTimerRow(
              "End Time",
              context,
              Observer(
                  builder: (context) => cmTimePicker(
                      context,
                      vmTeam.selectedEndTime,
                      (time) => vmTeam.timePickerFn2(time))),
              vmTeam.selectedEndTime),
          cmRowTextfield("Total Hours Worked", vmTeam.totalHrsController, "",
              enable: false),
          cmRowTextfield(
              "Normal Hours", vmTeam.normalHourController, "Normal Hour"),
          cmGreyContainer("Time"),
          cmRowTextfield(
              "Time & Half(x 1.5)", vmTeam.timehalfController, "Hour"),
          cmRowTextfield(
              "Double Time(x 2)", vmTeam.doubleTimeController, "Hour"),
          cmGreyContainer("Leave Hours"),
          cmRowTextfield(
              "Public Holyday", vmTeam.publicHolidayController, "Hour"),
          cmRowTextfield("Annual", vmTeam.annualController, "Hour"),
          cmRowTextfield("Sick", vmTeam.sickController, "Hour"),
          cmRowTextfield("Other", vmTeam.otherController, "Hour"),
          sized0hx20,
          Center(
            child: CmButton(
              text: "Save",
              color: vmTeam.showSubmitEditTimesheet == true
                  ? Appthemes.cPrimary
                  : const Color.fromARGB(255, 153, 197, 214),
              width: 140.w,
              loading: vmTeam.editTimeSheetResponse.loading,
              indicatorColor: Colors.white,
              onPressed: () {
                if (vmTeam.showSubmitEditTimesheet == true) {
                  String inputDate = timesheetWeek?.date ?? "$date";
                  DateTime parsedDate =
                      DateFormat('dd-MM-yyyy').parse(inputDate);
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(parsedDate);

                  List<Week> weeksToEdit = [
                    Week(
                      date: timesheetWeek?.date != null
                          ? inputDate
                          : formattedDate,
                      day: timesheetWeek?.day ?? "$day",
                      start: vmTeam.selectedStartTime!,
                      finish: vmTeam.selectedEndTime!,
                      totalHoursWorked: vmTeam.totalHrsController.text,
                      normalHours: vmTeam.normalHourController.text,
                      halfTime: vmTeam.timehalfController.text,
                      fullTime: vmTeam.doubleTimeController.text,
                      publicHolidays: vmTeam.publicHolidayController.text,
                      annual: vmTeam.annualController.text,
                      sick: vmTeam.sickController.text,
                      otherDays: vmTeam.otherController.text,
                    ),
                  ];

                  vmTeam.editTimeSheetApi(
                      date: vmTeam.weekStartDate ?? "",
                      weeklyReport: WeeklyReport(
                        employeeId:
                            "${vmProfile.profilepageResponse.data?.employeeId}",
                        comments: vmTeam.commentsControllerr.text,
                        week: weeksToEdit,
                      ),
                      context: context);
                }
              },
            ),
          ),
          sized0hx50
        ]));
      }),
    );
  }
}

Widget cmGreyContainer(String text) {
  return Container(
    height: 30.w,
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.grey.shade300),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "     $text",
        style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w800,
            color: Colors.grey.shade700),
      ),
    ),
  );
}

Widget cmTimePicker(BuildContext context, TimeOfDay? selectedTime,
    Function(TimeOfDay time) pickedTime) {
  return timePicker(context, selectedTime ?? TimeOfDay.now(), pickedTime);
}

Widget cmTimerRow(
  String text,
  BuildContext context,
  Widget widget,
  TimeOfDay? selectedTime,
) {
  return Padding(
    padding: screenWidth,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 11.w,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            ":   ${selectedTime != null ? formatTimeOfDay(selectedTime) : ""}",
            style: TextStyle(fontSize: 10.sp, color: Colors.grey.shade700),
          ),
        ),
        widget
      ],
    ),
  );
}

Widget cmRowTextfield(
    String text, TextEditingController controller, String hintText,
    {bool enable = true}) {
  return Padding(
    padding: screenWidth,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 11.w,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Text(
                ":  ",
                style: TextStyle(fontSize: 10.sp, color: Colors.grey.shade700),
              ),
              Expanded(
                child: TextField(
                  style:
                      TextStyle(fontSize: 10.sp, color: Colors.grey.shade700),
                  controller: controller,
                  onChanged: (value) {
                    vmTeam.showSubmitEditTimesheetFn();
                  },
                  enabled: enable,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "  $hintText",
                      hintStyle: TextStyle(
                          fontSize: 10.sp, color: Colors.grey.shade400)),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

String formatTimeOfDay(TimeOfDay time) {
  final now = DateTime.now();
  final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
  final format = DateFormat.jm();
  return format.format(dt);
}

String formatTimeOfDay24hrFormat(TimeOfDay time) {
  return "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
}
