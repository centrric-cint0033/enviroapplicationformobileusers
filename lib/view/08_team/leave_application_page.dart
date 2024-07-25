import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/10_team/leave_res_model/leave_res_model/leave_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as p;

@RoutePage()
class LeaveApplicationPage extends StatelessWidget {
  const LeaveApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        vmTeam.clearLeaveDatas();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: cmnTitleWidget('Leave Application'),
        ),
        body: Observer(builder: (context) {
          String imagePath = vmTeam.addFileLeave ?? "";
          String fileName = p.basename(imagePath);
          bool isImage = imagePath.endsWith('.jpg') ||
              imagePath.endsWith('.jpeg') ||
              imagePath.endsWith('.png');
          vmTeam.submitButtonValidation();
          return Padding(
            padding: screenWidth,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I wish to apply for the following leave:(Tick the appropriate leave)",
                  style: TextStyle(fontSize: 9.sp, color: Colors.grey.shade600),
                ),
                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    List<String> checkboxTexts = [
                      'Annual Leave',
                      'Leave Without Pay',
                      'Personal Leave(Give Reason)',
                      'Long Service Leave'
                    ];
                    if (index == 2) {
                      return Column(
                        children: [
                          Observer(
                            builder: (_) => Row(
                              children: [
                                Checkbox(
                                  value: vmTeam.selectedCheckboxIndex == index,
                                  onChanged: (bool? value) {
                                    if (value == true) {
                                      vmTeam.selectCheckbox(index);
                                    } else {
                                      vmTeam.selectCheckbox(null);
                                    }
                                  },
                                ),
                                Text(
                                  checkboxTexts[index],
                                  style: TextStyle(fontSize: 9.sp),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 45.h,
                            decoration:
                                BoxDecoration(color: Colors.grey.shade200),
                            child: TextField(
                              controller: vmTeam.reasonController,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 9.sp),
                              decoration: InputDecoration(
                                hintText: 'Type your Reason...',
                                hintStyle: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.normal),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Observer(
                        builder: (_) => Row(
                          children: [
                            Checkbox(
                              value: vmTeam.selectedCheckboxIndex == index,
                              checkColor: Appthemes.cWhite,
                              activeColor: Appthemes.cPrimary,
                              onChanged: (bool? value) {
                                if (value == true) {
                                  vmTeam.selectCheckbox(index);
                                } else {
                                  vmTeam.selectCheckbox(null);
                                }
                              },
                            ),
                            Text(
                              checkboxTexts[index],
                              style: TextStyle(fontSize: 9.sp),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
                sized0hx05,
                CmButton(
                  text: "Add File",
                  width: 80.w,
                  color: Appthemes.cPrimary,
                  onPressed: () {
                    vmTeam.addFileLeavedFn();
                  },
                ),
                if (vmTeam.addFileLeave != "") ...[
                  sized0hx05,
                  InkWell(
                    onTap: () async {
                      OpenFile.open(
                        vmTeam.addFileLeave,
                      );
                    },
                    onLongPress: () {
                      showConfirmationAlert(
                          context: context,
                          onSubmit: () {
                            vmTeam.addFileLeave = "";
                          },
                          content: "Are you sure you want to delete?",
                          submitText: "Yes",
                          submitText2: "No");
                    },
                    child: Container(
                      height: 80.h,
                      width: 80.h, // Width of each item
                      foregroundDecoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        children: [
                          sized0hx05,
                          Expanded(
                            child: isImage
                                ? Image.file(
                                    File(imagePath),
                                    fit: BoxFit.cover,
                                  )
                                : Icon(
                                    Icons.file_copy,
                                    size: 20.w,
                                    color: Colors.red,
                                  ),
                          ),
                          Expanded(
                              child: Text(
                            fileName,
                            style: TextStyle(
                                fontSize: 9.sp,
                                overflow: TextOverflow.ellipsis),
                          ))
                        ],
                      ),
                    ),
                  )
                ],
                sized0hx05,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Leave From:",
                      style: TextStyle(
                          fontSize: 9.sp, color: Colors.grey.shade700),
                    ),
                    cmDatePicker(context, vmTeam.selectedLeaveFromdate,
                        (date) => vmTeam.datePickerFn8(date))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Leave To:",
                      style: TextStyle(
                          fontSize: 9.sp, color: Colors.grey.shade700),
                    ),
                    cmDatePicker(context, vmTeam.selectedLeaveTodate,
                        (date) => vmTeam.datePickerFn9(date))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Last Day of Work:",
                      style: TextStyle(
                          fontSize: 9.sp, color: Colors.grey.shade700),
                    ),
                    cmDatePicker(context, vmTeam.selectedLastDayofWork,
                        (date) => vmTeam.datePickerFn10(date))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Return to Work on",
                      style: TextStyle(
                          fontSize: 9.sp, color: Colors.grey.shade700),
                    ),
                    cmDatePicker(context, vmTeam.selectedReturnToWorkDate,
                        (date) => vmTeam.datePickerFn11(date))
                  ],
                ),
                Text(
                  "Number of Days and Hours:",
                  style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold),
                ),
                Observer(builder: (context) {
                  vmTeam.totalDayFn();
                  vmTeam.totalHrsFn();
                  return Table(
                    border: TableBorder.all(), // Adds a border to the table
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: {
                      0: FlexColumnWidth(160.w),
                      1: FixedColumnWidth(80.w),
                      2: FlexColumnWidth(80.w),
                    },
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Normal Working Days',
                                style: TextStyle(fontSize: 9.sp),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Center(
                                child: TextField(
                              controller: vmTeam.dayController1,
                              style: TextStyle(fontSize: 9.sp),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                vmTeam.totalDayFn();
                              },
                              decoration: InputDecoration(
                                hintText: 'Day',
                                hintStyle: TextStyle(fontSize: 9.sp),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: TextField(
                              keyboardType: TextInputType.number,
                              controller: vmTeam.hrsController1,
                              style: TextStyle(fontSize: 9.sp),
                              onChanged: (value) {
                                vmTeam.totalHrsFn();
                              },
                              decoration: InputDecoration(
                                hintText: 'Hrs',
                                hintStyle: TextStyle(fontSize: 9.sp),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            )),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Public Holidays',
                                    style: TextStyle(fontSize: 9.sp))),
                          ),
                          TableCell(
                            child: Center(
                                child: TextField(
                              controller: vmTeam.dayController2,
                              style: TextStyle(fontSize: 9.sp),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                vmTeam.totalDayFn();
                              },
                              decoration: InputDecoration(
                                hintText: 'Day',
                                hintStyle: TextStyle(fontSize: 9.sp),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: TextField(
                              controller: vmTeam.hrsController2,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 9.sp),
                              onChanged: (value) {
                                vmTeam.totalHrsFn();
                              },
                              decoration: InputDecoration(
                                hintText: 'Hrs',
                                hintStyle: TextStyle(fontSize: 9.sp),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            )),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Other',
                                    style: TextStyle(fontSize: 9.sp))),
                          ),
                          TableCell(
                            child: Center(
                                child: TextField(
                              controller: vmTeam.dayController3,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 9.sp),
                              onChanged: (value) {
                                vmTeam.totalDayFn();
                              },
                              decoration: InputDecoration(
                                hintText: 'Day',
                                hintStyle: TextStyle(fontSize: 9.sp),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: TextField(
                              controller: vmTeam.hrsController3,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 9.sp),
                              onChanged: (value) {
                                vmTeam.totalHrsFn();
                              },
                              decoration: InputDecoration(
                                hintText: 'Hrs',
                                hintStyle: TextStyle(fontSize: 9.sp),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            )),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Total',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: Appthemes.cPrimary))),
                          ),
                          TableCell(
                            child: Center(
                                child: TextField(
                              controller: vmTeam.totalDayController,
                              style: TextStyle(
                                  fontSize: 9.sp, color: Appthemes.cPrimary),
                              keyboardType: TextInputType.number,
                              enabled: false,
                              decoration: InputDecoration(
                                hintText: 'Day',
                                hintStyle: TextStyle(fontSize: 9.sp),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: TextField(
                              controller: vmTeam.totalHrsController,
                              style: TextStyle(
                                  fontSize: 9.sp, color: Appthemes.cPrimary),
                              keyboardType: TextInputType.number,
                              enabled: false,
                              decoration: InputDecoration(
                                hintText: 'Hrs',
                                hintStyle: TextStyle(fontSize: 9.sp),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            )),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
                sized0hx05,
                Text(
                  "Comments:",
                  style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold),
                ),
                sized0hx05,
                Container(
                  height: 45.h,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: TextField(
                    controller: vmTeam.commentsControllerr,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Date : ${DateFormat('dd-MM-yyyy').format(DateTime.now())}",
                    style:
                        TextStyle(fontSize: 9.sp, color: Colors.grey.shade700),
                  ),
                ),
                sized0hx05,
                CmButton(
                  text: "Apply Leave",
                  loading: vmTeam.addLeaveResponse.loading,
                  onPressed: () {
                    cmSubmitFn(context);
                  },
                  color: Appthemes.cPrimary,
                ),
                Text(
                  "* Annual Leave must be applied for at least 2 weeks before leave is to be taken",
                  style: TextStyle(
                      fontSize: 8.w,
                      color: const Color.fromARGB(255, 240, 94, 84)),
                ),
                sized0hx50
              ],
            )),
          );
        }),
      ),
    );
  }

  Widget cmCheckBoxRow4(String text, bool value,
      {required void Function(bool?)? onChanged}) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 10.sp),
          ),
          Checkbox(
            side: const BorderSide(color: Colors.red),
            value: value,
            onChanged: onChanged,
            checkColor: Colors.red,
            activeColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.padded,
          ),
        ],
      ),
    );
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
          style: TextStyle(fontSize: 9.sp, color: Colors.grey.shade700),
        ),
        sized0wx10,
        datePicker(context, selectedDate, pickedDate),
      ],
    );
  }

  cmSubmitFn(BuildContext context) {
    if (vmTeam.selectedCheckboxIndex == 0) {
      DateTime currentDate = DateTime.now();
      DateTime leaveFromDate = vmTeam.selectedLeaveFromdate ?? currentDate;
      DateTime twoWeeksBefore = currentDate.subtract(const Duration(days: 14));

      if (leaveFromDate.isAfter(twoWeeksBefore)) {
        showToast(context,
            msg:
                "Annual Leave must be applied for at least 2 weeks before leave is to be taken",
            color: Colors.red);
      }
    } else {
      vmTeam.addLeaveApi(
          data: LeaveResModel(
            attachment: vmTeam.addFileLeave,
            leaveType: vmTeam.selectedCheckboxIndex == 0
                ? "Annual Leave"
                : vmTeam.selectedCheckboxIndex == 1
                    ? "Leave Without Pay"
                    : vmTeam.selectedCheckboxIndex == 2
                        ? "Personal Leave(Give Reason)"
                        : "Long Service Leave",
            reason: vmTeam.reasonController.text,
            leaveFrom: vmTeam.selectedLeaveFromdate != null
                ? DateFormat('yyyy-MM-dd HH:mm:ss')
                    .format(vmTeam.selectedLeaveFromdate!)
                : "",
            leaveTo: vmTeam.selectedLeaveTodate != null
                ? DateFormat('yyyy-MM-dd HH:mm:ss')
                    .format(vmTeam.selectedLeaveTodate!)
                : "",
            lastWorkingDay: vmTeam.selectedLastDayofWork != null
                ? DateFormat('yyyy-MM-dd HH:mm:ss')
                    .format(vmTeam.selectedLastDayofWork!)
                : "",
            returnWorkingDay: vmTeam.selectedLastDayofWork != null
                ? DateFormat('yyyy-MM-dd').format(vmTeam.selectedLastDayofWork!)
                : "",
            normalWorkingDays: vmTeam.dayController1.text,
            normalWorkingHours: vmTeam.hrsController1.text,
            publicHolidays: vmTeam.dayController2.text,
            publicHolidayHours: vmTeam.hrsController2.text,
            otherDays: vmTeam.dayController3.text,
            otherHours: vmTeam.hrsController3.text,
            totalDays: vmTeam.totalDayController.text,
            totalHours: vmTeam.totalHrsController.text,
            comments: vmTeam.commentsControllerr.text,
          ),
          context: context);
    }
  }
}
