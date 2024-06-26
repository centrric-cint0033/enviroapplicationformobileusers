import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_time_picker.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class SheduledetailPage extends StatelessWidget {
  const SheduledetailPage({
    super.key,
    required this.id,
    required this.i,
    required this.driversIndex,
  });
  final int id;
  final int i;
  final int driversIndex;

  // List? pickedFiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: cmnDrawer(context),
        appBar: AppBar(
          title: cmnTitleWidget('Scheduling'),
          actions: [notificationButton(context)],
        ),
        body: Observer(
          builder: (context) {
            return SingleChildScrollView(
              padding: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sized0hx10,
                  Align(
                    alignment: Alignment.topRight,
                    child: CmButton(
                        borderRadius: 26.w,
                        width: 85.w,
                        height: 26.w,
                        loading: vmSchedule.jobcardResponse.loading,
                        color: Colors.white,
                        text: 'Job Card',
                        buttonTextStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 10.w),
                        onPressed: () {
                          jobCardFunction(context);
                        },
                        loadingColor: Appthemes.cPrimary),
                  ),
                  SizedBox(
                    height: vmSchedule.containerHeight ? 40.h : 260.w,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Schedule Details',
                              style: TextStyle(
                                fontSize: 12.w,
                                fontWeight: FontWeight.bold,
                                color: Appthemes.cPrimary,
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  vmSchedule.containerHeight =
                                      !vmSchedule.containerHeight;
                                },
                                child: Icon(vmSchedule.containerHeight
                                    ? Icons.arrow_drop_up
                                    : Icons.arrow_drop_down)),
                          ],
                        ),
                        if (!vmSchedule.containerHeight) ...[
                          sized0hx10,
                          expandedRowShowText(
                            "Client Name",
                            vmSchedule.sheduleweekResponse.data?[i].client
                                    ?.clientName ??
                                '',
                          ),
                          sized0hx10,
                          expandedRowShowText(
                            "Client Type",
                            vmSchedule.sheduleweekResponse.data?[i].client
                                    ?.clientType ??
                                '',
                          ),
                          sized0hx10,
                          expandedRowShowText(
                            "Client email",
                            vmSchedule.sheduleweekResponse.data?[i].client
                                    ?.clientEmail ??
                                '',
                          ),
                          sized0hx10,
                          expandedRowShowText(
                            "Status",
                            vmSchedule.sheduleweekResponse.data?[i].status ??
                                '',
                          ),
                          sized0hx10,
                          expandedRowShowText(
                            "Amount",
                            vmSchedule.sheduleweekResponse.data?[i].amount ??
                                '',
                          ),
                          sized0hx10,
                          expandedRowShowText(
                              "CreatedBy",
                              vmSchedule
                                      .sheduleweekResponse.data?[i].createdBy ??
                                  ''),
                          sized0hx10,
                          expandedRowShowText(
                            "Waste Type",
                            vmSchedule.sheduleweekResponse.data?[i]
                                    .wasteTypeStr ??
                                '',
                          ),
                          sized0hx10,
                          expandedRowShowText(
                            "Frequency",
                            vmSchedule.sheduleweekResponse.data?[i].frequency ??
                                '',
                          ),
                        ]
                      ],
                    ),
                  ),

                  if (vmSchedule.sheduleweekResponse.data?[i]
                          .drivers?[driversIndex].preinspectioncheck ==
                      false)
                    CmButton(
                      color: const Color(0xFF4CAF9E),
                      buttonTextStyle:
                          TextStyle(color: Colors.white, fontSize: 10.w),
                      onPressed: () {
                        context.router.push(UpdateVehiclepreinspectionRoute(
                            index: i, driversIndex: driversIndex));
                      },
                      borderRadius: 0,
                      fontSize: 10.w,
                      text: "Update Vehicle Pre-inspection",
                      loading: vmSchedule.sheduleweekResponse.loading,
                    ),
                  Container(
                    color: const Color.fromARGB(255, 240, 235, 235),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Current Job Status',
                                  style: TextStyle(
                                    fontSize: 12.h,
                                    fontWeight: FontWeight.bold,
                                    color: Appthemes.cPrimary,
                                  ),
                                ),
                              ),
                              vmSchedule.sheduleweekResponse.data?[i]
                                          .departEnviroFacility !=
                                      null
                                  ? cmRowTextWithDatePicker(
                                      context,
                                      "Departed Enviro Facility",
                                      DateFormat('dd-MM-yyyy hh:mm a').format(
                                          DateTime.parse(vmSchedule
                                              .sheduleweekResponse
                                              .data?[i]
                                              .departEnviroFacility)),
                                      i,
                                      dateTimePicker(
                                          context,
                                          DateTime.parse(vmSchedule
                                              .sheduleweekResponse
                                              .data?[i]
                                              .departEnviroFacility),
                                          (date) => vmSchedule
                                              .departedEnviroDatePickerFn(
                                                  context,
                                                  date,
                                                  "departed_enviro_facility",
                                                  vmSchedule.sheduleweekResponse
                                                      .data![i].id!)))
                                  : const SizedBox(),
                              vmSchedule.sheduleweekResponse.data?[i]
                                          .startJob !=
                                      null
                                  ? cmRowTextWithDatePicker(
                                      context,
                                      "Job Started",
                                      DateFormat('dd-MM-yyyy hh:mm a').format(
                                          DateTime.parse(vmSchedule
                                                  .sheduleweekResponse
                                                  .data?[i]
                                                  .startJob ??
                                              "")),
                                      i,
                                      dateTimePicker(
                                          context,
                                          vmSchedule.selectedDepartedEnviroDate,
                                          (date) => vmSchedule
                                              .departedEnviroDatePickerFn(
                                                  context,
                                                  date,
                                                  "departed_enviro_facility",
                                                  vmSchedule.sheduleweekResponse
                                                      .data![i].id!)))
                                  : const SizedBox(),
                              vmSchedule.sheduleweekResponse.data?[i]
                                          .finishJob !=
                                      null
                                  ? cmRowTextWithDatePicker(
                                      context,
                                      "Job Finished",
                                      DateFormat('dd-MM-yyyy hh:mm a')
                                          .format(DateTime.parse(
                                        vmSchedule.sheduleweekResponse.data?[i]
                                                .finishJob ??
                                            "",
                                      )),
                                      i,
                                      dateTimePicker(
                                          context,
                                          vmSchedule.selectedDepartedEnviroDate,
                                          (date) => vmSchedule
                                              .departedEnviroDatePickerFn(
                                                  context,
                                                  date,
                                                  "job_finished",
                                                  vmSchedule.sheduleweekResponse
                                                      .data![i].id!)))
                                  : const SizedBox(),
                              vmSchedule.sheduleweekResponse.data?[i]
                                          .completed !=
                                      null
                                  ? cmRowTextWithDatePicker(
                                      context,
                                      "Job Completed",
                                      vmSchedule.sheduleweekResponse.data?[i]
                                              .completed ??
                                          "",
                                      i,
                                      datePicker(
                                          context,
                                          vmSchedule.selectedDepartedEnviroDate,
                                          (date) => vmSchedule
                                              .departedEnviroDatePickerFn(
                                                  context,
                                                  date,
                                                  "departed_enviro_facility",
                                                  vmSchedule.sheduleweekResponse
                                                      .data![i].id!)))
                                  : const SizedBox(),
                              vmSchedule.sheduleweekResponse.data?[i]
                                          .arriveAtWasteDepot !=
                                      null
                                  ? cmRowTextWithDatePicker(
                                      context,
                                      "Arrived at Waste Depot",
                                      vmSchedule.sheduleweekResponse.data?[i]
                                              .arriveAtWasteDepot ??
                                          "",
                                      i,
                                      datePicker(
                                          context,
                                          vmSchedule.selectedDepartedEnviroDate,
                                          (date) => vmSchedule
                                              .departedEnviroDatePickerFn(
                                                  context,
                                                  date,
                                                  "departed_enviro_facility",
                                                  vmSchedule.sheduleweekResponse
                                                      .data![i].id!)))
                                  : const SizedBox(),
                              vmSchedule.sheduleweekResponse.data?[i]
                                          .departWasteDepot !=
                                      null
                                  ? cmRowTextWithDatePicker(
                                      context,
                                      "Departed from Waste Depot",
                                      vmSchedule.sheduleweekResponse.data?[i]
                                              .departWasteDepot ??
                                          "",
                                      i,
                                      datePicker(
                                          context,
                                          vmSchedule.selectedDepartedEnviroDate,
                                          (date) => vmSchedule
                                              .departedEnviroDatePickerFn(
                                                  context,
                                                  date,
                                                  "departed_enviro_facility",
                                                  vmSchedule.sheduleweekResponse
                                                      .data![i].id!)))
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (vmSchedule
                          .sheduleweekResponse.data![i].departEnviroFacility ==
                      null)
                    CmButton(
                      color: const Color(0xFF4CAF9E),
                      buttonTextStyle:
                          TextStyle(color: Colors.white, fontSize: 10.w),
                      onPressed: () {
                        dateTimePickerWithouIcon(
                            context,
                            DateTime.now(),
                            (date) => vmSchedule.departedEnviroDatePickerFn(
                                context,
                                date,
                                "departed_enviro_facility",
                                vmSchedule.sheduleweekResponse.data![i].id!));
                      },
                      borderRadius: 0,
                      fontSize: 10.w,
                      text: "Departed Enviro  Facility",
                      loading: vmSchedule.sheduleweekResponse.loading,
                    ),
                  sized0hx05,
                  if (vmSchedule.sheduleweekResponse.data![i].startJob == null)
                    CmButton(
                      color: const Color(0xFF4CAF9E),
                      buttonTextStyle:
                          TextStyle(color: Colors.white, fontSize: 10.w),
                      onPressed: () {
                        dateTimePickerWithouIcon(
                            context,
                            DateTime.now(),
                            (date) => vmSchedule.startingJobDatePickerFn(
                                context,
                                date,
                                "job_started",
                                vmSchedule.sheduleweekResponse.data![i].id!));
                      },
                      borderRadius: 0,
                      fontSize: 10.w,
                      text: "Starting Job",
                      loading: vmSchedule.sheduleweekResponse.loading,
                    ),
                  // if (vmSchedule.sheduleweekResponse.data![i].finishJob ==
                  //         null &&
                  //     vmSchedule.sheduleweekResponse.data![i].startJob !=
                  //         null &&
                  //     vmSchedule.sheduleweekResponse.data![i]
                  //             .departEnviroFacility !=
                  //         null)
                  CmButton(
                    color: const Color(0xFF4CAF9E),
                    buttonTextStyle:
                        TextStyle(color: Colors.white, fontSize: 10.w),
                    onPressed: () {
                      dateTimePickerWithouIcon(
                          context,
                          DateTime.now(),
                          (date) => vmSchedule.finishedJobDatePickerFn(
                              context,
                              date,
                              "job_finished",
                              vmSchedule.sheduleweekResponse.data![i].id!));
                    },
                    borderRadius: 0,
                    fontSize: 10.w,
                    text: "Finished Job",
                    loading: vmSchedule.sheduleweekResponse.loading,
                  ),
                  sized0hx20,

                  const SizedBox(height: 5),
                  // Container(
                  //   width: 359,
                  //   child: CmButton(
                  //     color: const Color(0xFF4CAF9E),
                  //     buttonTextStyle: const TextStyle(color: Colors.white),
                  //     onPressed: () {
                  //       updatevehiclepreinspection(context);
                  //     },
                  //     text: "Update vehicle preinspection",
                  //   ),
                  // ),
                  // sized0hx05,
                  // SizedBox(
                  //   width: 159,
                  //   child: CmButton(
                  //     color: const Color(0xFF4CAF9E),
                  //     buttonTextStyle: const TextStyle(color: Colors.white),
                  //     onPressed: () {
                  //       shedulecommentfunction(context, id, i);
                  //     },
                  //     text: "Comments",
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 159,
                  //   child: CmButton(
                  //     color: const Color(0xFF4CAF9E),
                  //     buttonTextStyle: const TextStyle(color: Colors.white),
                  //     onPressed: () {
                  //       shedulesignaturefunction(context, id, i);
                  //       print('shedule$id');
                  //       // vmSchedule.shedulesignatureviewmodelfunction(
                  //       //     // id: id ?? 0, pickedFiles: vmSchedule.pickedFiles
                  //       //     );
                  //     },
                  //     text: "Signature",
                  //   ),
                  // ),
                  // const SizedBox(height: 5),
                  // SizedBox(
                  //   width: 179,
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: CmButton(
                  //           icon: Icons.add_a_photo,
                  //           color: const Color.fromARGB(255, 0, 8, 14),
                  //           buttonTextStyle:
                  //               const TextStyle(color: Colors.white),
                  //           onPressed: () {
                  //             shedulevedeoandphotofunction(context);
                  //           },
                  //           text: "Add Media",
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // sized0hx20,
                  // const Text('Signature'),
                  sized0hx20,
                  Text(
                    'Team Members',
                    style: TextStyle(
                      fontSize: 12.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  sized0hx05,
                  SizedBox(
                    height: 100.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: vmSchedule
                          .sheduleweekResponse.data?[i].teamEmployees?.length,
                      itemBuilder: (context, index) {
                        final data = vmSchedule
                            .sheduleweekResponse.data?[i].teamEmployees?[index];
                        return Column(
                          children: [
                            SizedBox(
                              height: 40.w,
                              width: 40.w,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                    shape: BoxShape.circle),
                                child: dpImage("${data?.dp}"),
                              ),
                            ),
                            Text("${data?.name}")
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }

  void shedulevedeoandphotofunction(BuildContext context) {
    print('hjdcjndjcmk');
    context.router.pushNamed(RouteNames.rshedulevedeoandphoto);
  }
}

void jobCardFunction(BuildContext context) async {
  await vmSchedule.jobcardviewmodelfunction();
  print('Job card clicked');
  context.router.pushNamed(RouteNames.rjobcardpage);
}

void shedulecommentfunction(BuildContext context, id, i) {
  context.router.push(SheduleCommentRoute(
    id: id,
    i: i,
  ));
}

void shedulesignaturefunction(BuildContext context, id, i) {
  context.router.push(SheduleSignatureRoute(id: id, i: i));
}

Widget cmRowTextWithDatePicker(BuildContext context, String statusName,
    String statusDateTime, int i, Widget datePicker) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Text(
          statusName,
          style: TextStyle(fontSize: 9.w),
        ),
      ),
      Expanded(
          child: Text(": $statusDateTime", style: TextStyle(fontSize: 9.w))),
      datePicker
    ],
  );
}
