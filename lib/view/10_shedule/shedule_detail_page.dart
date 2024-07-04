import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_time_picker.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view/10_shedule/after_image_list.dart';
import 'package:enviro_mobile_application/view/10_shedule/before_image_list.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/signature_img_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
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
        ),
        body: Observer(
          builder: (context) {
            final res = vmSchedule.sheduleweekResponse;
            return SingleChildScrollView(
              padding: screenWidth,
              child: res.loading
                  ? const Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        color: Appthemes.cPrimary,
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sized0hx10,
                        Align(
                          alignment: Alignment.topRight,
                          child: CmButton(
                              borderRadius: 26.w,
                              width: 80.w,
                              height: 26.w,
                              loading: vmSchedule.jobcardResponse.loading,
                              color: Colors.white,
                              text: 'Job Card',
                              buttonTextStyle: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 9.w),
                              onPressed: () async {
                                await vmSchedule.jobcardviewmodelfunction(
                                    quoteId: vmSchedule.sheduleweekResponse
                                            .data?[i].quoteId ??
                                        0);
                                context.router
                                    .pushNamed(RouteNames.rjobcardpage);
                              },
                              loadingColor: Appthemes.cPrimary),
                        ),
                        ExpansionTile(
                            title: Text(
                              'Schedule Details',
                              style: TextStyle(
                                fontSize: 12.w,
                                fontWeight: FontWeight.bold,
                                color: Appthemes.cPrimary,
                              ),
                            ),
                            tilePadding: EdgeInsets.only(left: 2.w, right: 2.w),
                            childrenPadding:
                                EdgeInsets.only(left: 3.w, right: 2.w),
                            children: [
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
                                vmSchedule
                                        .sheduleweekResponse.data?[i].status ??
                                    '',
                              ),
                              sized0hx10,
                              expandedRowShowText(
                                "Amount",
                                vmSchedule
                                        .sheduleweekResponse.data?[i].amount ??
                                    '',
                              ),
                              sized0hx10,
                              expandedRowShowText(
                                  "CreatedBy",
                                  vmSchedule.sheduleweekResponse.data?[i]
                                          .createdBy ??
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
                                vmSchedule.sheduleweekResponse.data?[i]
                                        .frequency ??
                                    '',
                              ),
                            ]),
                        sized0hx10,
                        Container(
                          color: const Color.fromARGB(255, 240, 235, 235),
                          child: Padding(
                            padding: EdgeInsets.all(5.h),
                            child: Card(
                              shape: const BeveledRectangleBorder(),
                              child: Padding(
                                padding: EdgeInsets.all(5.h),
                                child: Column(children: [
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
                                          DateFormat('dd-MM-yyyy hh:mm a')
                                              .format(DateTime.parse(vmSchedule
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
                                              (date) => vmSchedule.enviroDatePickerFn(
                                                  context,
                                                  vmSchedule.selectedDepartedEnviroDate ??
                                                      DateTime.now(),
                                                  date,
                                                  "departed_enviro_facility",
                                                  vmSchedule.sheduleweekResponse
                                                      .data![i].id!,
                                                  ScheduleStatusType
                                                      .departedEnviroFacility)))
                                      : const SizedBox(),
                                  vmSchedule.sheduleweekResponse.data?[i].startJob != null
                                      ? cmRowTextWithDatePicker(
                                          context,
                                          "Job Started",
                                          DateFormat('dd-MM-yyyy hh:mm a')
                                              .format(DateTime.parse(vmSchedule
                                                      .sheduleweekResponse
                                                      .data?[i]
                                                      .startJob ??
                                                  "")),
                                          i,
                                          dateTimePicker(
                                              context,
                                              DateTime.parse(vmSchedule
                                                      .sheduleweekResponse
                                                      .data?[i]
                                                      .startJob ??
                                                  ""),
                                              (date) => vmSchedule.enviroDatePickerFn(
                                                  context,
                                                  vmSchedule.selectedStartingJobDate ??
                                                      DateTime.now(),
                                                  date,
                                                  "job_started",
                                                  vmSchedule.sheduleweekResponse.data![i].id!,
                                                  ScheduleStatusType.jobStarted)))
                                      : const SizedBox(),
                                  vmSchedule.sheduleweekResponse.data?[i]
                                              .finishJob !=
                                          null
                                      ? cmRowTextWithDatePicker(
                                          context,
                                          "Job Finished",
                                          DateFormat('dd-MM-yyyy hh:mm a')
                                              .format(DateTime.parse(
                                            vmSchedule.sheduleweekResponse
                                                    .data?[i].finishJob ??
                                                "",
                                          )),
                                          i,
                                          dateTimePicker(
                                              context,
                                              DateTime.parse(vmSchedule
                                                      .sheduleweekResponse
                                                      .data?[i]
                                                      .finishJob ??
                                                  ""),
                                              (date) =>
                                                  vmSchedule.enviroDatePickerFn(
                                                      context,
                                                      vmSchedule
                                                              .selectedFinishedJobDate ??
                                                          DateTime.now(),
                                                      date,
                                                      "job_finished",
                                                      vmSchedule
                                                          .sheduleweekResponse
                                                          .data![i]
                                                          .id!,
                                                      ScheduleStatusType
                                                          .finishedJob)))
                                      : const SizedBox(),
                                  if (vmSchedule.sheduleweekResponse.data?[i]
                                          .completed !=
                                      null) ...[
                                    cmRowTextWithDatePicker(
                                        context,
                                        "Job Completed",
                                        DateFormat('dd-MM-yyyy hh:mm a')
                                            .format(DateTime.parse(
                                          vmSchedule.sheduleweekResponse
                                                  .data?[i].completed ??
                                              "",
                                        )),
                                        i,
                                        dateTimePicker(
                                            context,
                                            vmSchedule.sheduleweekResponse
                                                        .data?[i].completed !=
                                                    null
                                                ? DateTime.parse(vmSchedule
                                                        .sheduleweekResponse
                                                        .data?[i]
                                                        .completed ??
                                                    "")
                                                : DateTime.now(),
                                            (date) => vmSchedule.enviroDatePickerFn(
                                                context,
                                                vmSchedule
                                                        .selectedCompletedDate ??
                                                    DateTime.now(),
                                                date,
                                                "Departed from Waste Depot",
                                                vmSchedule.sheduleweekResponse
                                                    .data![i].id!,
                                                ScheduleStatusType.completed))),
                                    cmRowTextWithDatePicker(
                                        context,
                                        "Arrived at Waste Depot",
                                        DateFormat('dd-MM-yyyy hh:mm a')
                                            .format(DateTime.parse(
                                          vmSchedule
                                                  .sheduleweekResponse
                                                  .data?[i]
                                                  .arriveAtWasteDepot ??
                                              "",
                                        )),
                                        i,
                                        dateTimePicker(
                                            context,
                                            vmSchedule
                                                        .sheduleweekResponse
                                                        .data?[i]
                                                        .arriveAtWasteDepot !=
                                                    null
                                                ? DateTime.parse(vmSchedule
                                                    .sheduleweekResponse
                                                    .data?[i]
                                                    .arriveAtWasteDepot!)
                                                : DateTime.now(),
                                            (date) => vmSchedule.enviroDatePickerFn(
                                                context,
                                                vmSchedule
                                                        .selectedArrivedWasteDepotDate ??
                                                    DateTime.now(),
                                                date,
                                                "arrived_at_waste_depot",
                                                vmSchedule.sheduleweekResponse
                                                    .data![i].id!,
                                                ScheduleStatusType
                                                    .arrivedAtDepot))),
                                    cmRowTextWithDatePicker(
                                        context,
                                        "Departed from Waste Depot",
                                        vmSchedule.sheduleweekResponse.data?[i]
                                                    .departWasteDepot !=
                                                null
                                            ? DateFormat('dd-MM-yyyy hh:mm a')
                                                .format(DateTime.parse(
                                                vmSchedule
                                                        .sheduleweekResponse
                                                        .data?[i]
                                                        .departWasteDepot ??
                                                    vmSchedule
                                                        .selectedDepartedWasteDepotDate,
                                              ))
                                            : "",
                                        i,
                                        dateTimePicker(
                                            context,
                                            vmSchedule
                                                        .sheduleweekResponse
                                                        .data?[i]
                                                        .departWasteDepot !=
                                                    null
                                                ? DateTime.parse(vmSchedule
                                                    .sheduleweekResponse
                                                    .data?[i]
                                                    .departWasteDepot!)
                                                : DateTime.now(),
                                            (date) => vmSchedule.enviroDatePickerFn(
                                                context,
                                                vmSchedule
                                                        .selectedDepartedWasteDepotDate ??
                                                    DateTime.now(),
                                                date,
                                                "Departed from Waste Depot",
                                                vmSchedule.sheduleweekResponse
                                                    .data![i].id!,
                                                ScheduleStatusType
                                                    .departedWasteDepot))),
                                  ]
                                ]),
                              ),
                            ),
                          ),
                        ),
                        if (vmSchedule.sheduleweekResponse.data?[i]
                                .drivers?[driversIndex].preinspectioncheck ==
                            false)
                          CmButton(
                            text: "Update Vehicle Pre-inspection",
                            color: const Color.fromARGB(255, 51, 188, 165),
                            buttonTextStyle:
                                TextStyle(color: Colors.white, fontSize: 9.w),
                            onPressed: () {
                              context.router.push(
                                  UpdateVehiclepreinspectionRoute(
                                      index: i, driversIndex: driversIndex));
                            },
                            borderRadius: 3.w,
                            loading: vmSchedule.sheduleweekResponse.loading,
                          ),
                        if (vmSchedule.sheduleweekResponse.data![i]
                                .departEnviroFacility ==
                            null)
                          CmButton(
                            color: const Color(0xFF4CAF9E),
                            buttonTextStyle:
                                TextStyle(color: Colors.white, fontSize: 10.w),
                            onPressed: () {
                              dateTimePickerWithouIcon(
                                  context,
                                  DateTime.now(),
                                  (date) => vmSchedule.enviroDatePickerFn(
                                      context,
                                      vmSchedule.selectedDepartedEnviroDate ??
                                          DateTime.now(),
                                      date,
                                      "departed_enviro_facility",
                                      vmSchedule
                                          .sheduleweekResponse.data![i].id!,
                                      ScheduleStatusType.departedEnviroFacility,
                                      fromButton: true));
                            },
                            borderRadius: 0,
                            fontSize: 10.w,
                            text: "Departed Enviro  Facility",
                            loading: vmSchedule.sheduleweekResponse.loading,
                          ),
                        sized0hx05,
                        if (vmSchedule.sheduleweekResponse.data![i].startJob ==
                            null)
                          CmButton(
                            color: const Color(0xFF4CAF9E),
                            buttonTextStyle:
                                TextStyle(color: Colors.white, fontSize: 10.w),
                            onPressed: () {
                              dateTimePickerWithouIcon(
                                  context,
                                  DateTime.now(),
                                  (date) => vmSchedule.enviroDatePickerFn(
                                      context,
                                      vmSchedule.selectedStartingJobDate ??
                                          DateTime.now(),
                                      date,
                                      "job_started",
                                      vmSchedule
                                          .sheduleweekResponse.data![i].id!,
                                      ScheduleStatusType.jobStarted,
                                      fromButton: true,
                                      fromJobStarted: true));
                            },
                            borderRadius: 0,
                            fontSize: 10.w,
                            text: "Starting Job",
                            loading: vmSchedule.sheduleweekResponse.loading,
                          ),
                        if (vmSchedule.sheduleweekResponse.data![i].finishJob ==
                                null &&
                            vmSchedule.sheduleweekResponse.data![i].startJob !=
                                null &&
                            vmSchedule.sheduleweekResponse.data![i]
                                    .departEnviroFacility !=
                                null)
                          CmButton(
                            color: const Color(0xFF4CAF9E),
                            buttonTextStyle:
                                TextStyle(color: Colors.white, fontSize: 10.w),
                            onPressed: () {
                              dateTimePickerWithouIcon(
                                  context,
                                  DateTime.now(),
                                  (date) => vmSchedule.enviroDatePickerFn(
                                      context,
                                      vmSchedule.selectedFinishedJobDate ??
                                          DateTime.now(),
                                      date,
                                      "job_finished",
                                      vmSchedule
                                          .sheduleweekResponse.data![i].id!,
                                      ScheduleStatusType.finishedJob,
                                      fromButton: true));
                            },
                            borderRadius: 0,
                            fontSize: 10.w,
                            text: "Finished Job",
                            loading: vmSchedule.sheduleweekResponse.loading,
                          ),
                        sized0hx05,
                        if (vmSchedule.sheduleweekResponse.data![i].image ==
                            null)
                          CmButton(
                            text: "Take Signature",
                            onPressed: () {
                              vmSchedule.signaturePath = null;
                              context.router
                                  .push(SheduleSignatureRoute(id: id, i: i));
                            },
                            color: const Color.fromARGB(255, 51, 188, 165),
                            borderRadius: 3.w,
                            buttonTextStyle:
                                TextStyle(color: Colors.white, fontSize: 9.w),
                          ),
                        sized0hx05,
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

                        if (vmSchedule.sheduleweekResponse.data?[i].beforePics
                                ?.isNotEmpty ??
                            false) ...[
                          BeforeImagesList(
                            i: i,
                            id: id,
                          ),
                          sized0hx05,
                        ],
                        if (vmSchedule.sheduleweekResponse.data?[i].afterPics
                                ?.isNotEmpty ??
                            false) ...[AfterImagesList(i: i, id: id)],

                        sized0hx10,
                        Text(
                          'Team Members',
                          style: TextStyle(
                            fontSize: 10.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        sized0hx05,
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: SizedBox(
                            height: 90.h,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: vmSchedule.sheduleweekResponse.data?[i]
                                  .teamEmployees?.length,
                              itemBuilder: (context, index) {
                                final data = vmSchedule.sheduleweekResponse
                                    .data?[i].teamEmployees?[index];
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
                                    sized0hx05,
                                    Text(
                                      "${data?.name}",
                                      style: TextStyle(fontSize: 9.w),
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        Text(
                          'Signature',
                          style: TextStyle(
                              fontSize: 9.w, fontWeight: FontWeight.bold),
                        ),
                        sized0hx10,
                        signatureImageWidget(i: i),
                        sized0hx20
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

void shedulecommentfunction(BuildContext context, id, i) {
  context.router.push(SheduleCommentRoute(
    id: id,
    i: i,
  ));
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
