// ignore_for_file: use_build_context_synchronously
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
import 'package:enviro_mobile_application/view/10_shedule/gallery_image_list.dart';
import 'package:enviro_mobile_application/view/10_shedule/video_list.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/signature_img_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: cmnDrawer(context),
        appBar: AppBar(
          title: cmnTitleWidget('Scheduling'),
        ),
        body: Observer(
          builder: (context) {
            final res = vmSchedule.shedulecardResponse;
            return SingleChildScrollView(
              padding: screenWidth,
              child: res.loading
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Appthemes.cPrimary,
                        ),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          sized0hx10,
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () async {
                                await vmSchedule.jobcardviewmodelfunction(
                                    quoteId: res.data?[i].quoteId ?? 0);
                                context.router
                                    .pushNamed(RouteNames.rjobcardpage);
                              },
                              child: Container(
                                height: 26.h,
                                width: 68.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border:
                                        Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(15.w)),
                                child: Center(
                                  child: vmSchedule.jobcardResponse.loading
                                      ? SizedBox(
                                          height: 12.w,
                                          width: 12.w,
                                          child:
                                              const CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ))
                                      : Text(
                                          "Job Card",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.normal),
                                        ),
                                ),
                              ),
                            ),
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              dividerColor: Colors.transparent,
                            ),
                            child: ExpansionTile(
                                initiallyExpanded: true,
                                title: Text(
                                  'Schedule Details',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Appthemes.cPrimary,
                                  ),
                                ),
                                tilePadding:
                                    EdgeInsets.only(left: 2.w, right: 2.w),
                                childrenPadding:
                                    EdgeInsets.only(left: 3.w, right: 2.w),
                                children: [
                                  sized0hx10,
                                  expandedRowShowText(
                                    "Client Name",
                                    res.data?[i].client?.clientName ?? '',
                                  ),
                                  sized0hx10,
                                  expandedRowShowText(
                                    "Client Type",
                                    res.data?[i].client?.clientType ?? '',
                                  ),
                                  sized0hx10,
                                  expandedRowShowText(
                                    "Client email",
                                    res.data?[i].client?.clientEmail ?? '',
                                  ),
                                  sized0hx10,
                                  expandedRowShowText(
                                    "Status",
                                    res.data?[i].status ?? '',
                                  ),
                                  sized0hx10,
                                  expandedRowShowText(
                                    "Amount",
                                    res.data?[i].amount ?? '',
                                  ),
                                  sized0hx10,
                                  expandedRowShowText("CreatedBy",
                                      res.data?[i].createdBy ?? ''),
                                  sized0hx10,
                                  expandedRowShowText(
                                    "Waste Type",
                                    res.data?[i].wasteTypeStr ?? '',
                                  ),
                                  sized0hx10,
                                  expandedRowShowText(
                                    "Frequency",
                                    res.data?[i].frequency ?? '',
                                  ),
                                ]),
                          ),
                          sized0hx10,
                          if (res.data![i].primaryVehicleDriver == true) ...[
                            if (res.data![i].departEnviroFacility != null)
                              Container(
                                color: const Color.fromARGB(255, 240, 235, 235),
                                child: Padding(
                                  padding: EdgeInsets.all(5.h),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3.w))),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.all(5.h),
                                      child: Column(children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Current Job Status',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Appthemes.cPrimary,
                                            ),
                                          ),
                                        ),
                                        res.data?[i].departEnviroFacility !=
                                                null
                                            ? cmRowTextWithDatePicker(
                                                context,
                                                "Departed Enviro Facility",
                                                DateFormat('dd-MM-yyyy hh:mm a')
                                                    .format(DateTime.parse(
                                                        vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .departEnviroFacility)),
                                                i,
                                                dateTimePicker(
                                                    context,
                                                    DateTime.parse(vmSchedule
                                                        .shedulecardResponse
                                                        .data?[i]
                                                        .departEnviroFacility),
                                                    (date) => vmSchedule.enviroDatePickerFn(
                                                        context,
                                                        vmSchedule
                                                                .selectedDepartedEnviroDate ??
                                                            DateTime.now(),
                                                        date,
                                                        "departed_enviro_facility",
                                                        vmSchedule
                                                            .shedulecardResponse
                                                            .data![i]
                                                            .id!,
                                                        ScheduleStatusType
                                                            .departedEnviroFacility)))
                                            : const SizedBox(),
                                        res.data?[i].startJob != null
                                            ? cmRowTextWithDatePicker(
                                                context,
                                                "Job Started",
                                                DateFormat('dd-MM-yyyy hh:mm a')
                                                    .format(DateTime.parse(
                                                        vmSchedule
                                                                .shedulecardResponse
                                                                .data?[i]
                                                                .startJob ??
                                                            "")),
                                                i,
                                                dateTimePicker(
                                                    context,
                                                    DateTime.parse(vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .startJob ??
                                                        ""),
                                                    (date) => vmSchedule
                                                            .enviroDatePickerFn(
                                                          context,
                                                          vmSchedule
                                                                  .selectedStartingJobDate ??
                                                              DateTime.now(),
                                                          date,
                                                          "job_started",
                                                          res.data![i].id!,
                                                          ScheduleStatusType
                                                              .jobStarted,
                                                          fromJobStarted: true,
                                                        )))
                                            : const SizedBox(),
                                        res.data?[i].finishJob != null
                                            ? cmRowTextWithDatePicker(
                                                context,
                                                "Job Finished",
                                                DateFormat('dd-MM-yyyy hh:mm a')
                                                    .format(DateTime.parse(
                                                  res.data?[i].finishJob ?? "",
                                                )),
                                                i,
                                                dateTimePicker(
                                                    context,
                                                    DateTime.parse(vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .finishJob ??
                                                        ""),
                                                    (date) => vmSchedule
                                                        .enviroDatePickerFn(
                                                            context,
                                                            vmSchedule
                                                                    .selectedFinishedJobDate ??
                                                                DateTime.now(),
                                                            date,
                                                            "job_finished",
                                                            vmSchedule
                                                                .shedulecardResponse
                                                                .data![i]
                                                                .id!,
                                                            ScheduleStatusType
                                                                .finishedJob)))
                                            : const SizedBox(),
                                        if (res.data?[i].completed != null) ...[
                                          cmRowTextWithDatePicker(
                                              context,
                                              "Job Completed",
                                              DateFormat('dd-MM-yyyy hh:mm a')
                                                  .format(DateTime.parse(
                                                res.data?[i].completed ?? "",
                                              )),
                                              i,
                                              dateTimePicker(
                                                  context,
                                                  res.data?[i].completed != null
                                                      ? DateTime.parse(vmSchedule
                                                              .shedulecardResponse
                                                              .data?[i]
                                                              .completed ??
                                                          "")
                                                      : DateTime.now(),
                                                  (date) => vmSchedule
                                                      .enviroDatePickerFn(
                                                          context,
                                                          vmSchedule
                                                                  .selectedCompletedDate ??
                                                              DateTime.now(),
                                                          date,
                                                          "completed",
                                                          vmSchedule
                                                              .shedulecardResponse
                                                              .data![i]
                                                              .id!,
                                                          ScheduleStatusType
                                                              .completed))),
                                          if (res.data?[i].arriveAtWasteDepot !=
                                              null)
                                            cmRowTextWithDatePicker(
                                                context,
                                                "Arrived at Waste Depot",
                                                vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .arriveAtWasteDepot !=
                                                        null
                                                    ? DateFormat('dd-MM-yyyy hh:mm a')
                                                        .format(DateTime.parse(
                                                        vmSchedule
                                                                .shedulecardResponse
                                                                .data?[i]
                                                                .arriveAtWasteDepot ??
                                                            "",
                                                      ))
                                                    : "",
                                                i,
                                                dateTimePicker(
                                                    context,
                                                    vmSchedule
                                                                .shedulecardResponse
                                                                .data?[i]
                                                                .arriveAtWasteDepot !=
                                                            null
                                                        ? DateTime.parse(vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .arriveAtWasteDepot!)
                                                        : DateTime.now(),
                                                    (date) => vmSchedule.enviroDatePickerFn(
                                                        context,
                                                        vmSchedule.selectedArrivedWasteDepotDate ??
                                                            DateTime.now(),
                                                        date,
                                                        "arrived_at_waste_depot",
                                                        vmSchedule
                                                            .shedulecardResponse
                                                            .data![i]
                                                            .id!,
                                                        ScheduleStatusType
                                                            .arrivedAtDepot))),
                                          if (res.data?[i].departWasteDepot !=
                                              null)
                                            cmRowTextWithDatePicker(
                                                context,
                                                "Departed from Waste Depot",
                                                vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .departWasteDepot !=
                                                        null
                                                    ? DateFormat('dd-MM-yyyy hh:mm a')
                                                        .format(DateTime.parse(
                                                        vmSchedule
                                                                .shedulecardResponse
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
                                                                .shedulecardResponse
                                                                .data?[i]
                                                                .departWasteDepot !=
                                                            null
                                                        ? DateTime.parse(vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .departWasteDepot!)
                                                        : DateTime.now(),
                                                    (date) => vmSchedule.enviroDatePickerFn(
                                                        context,
                                                        vmSchedule.selectedDepartedWasteDepotDate ??
                                                            DateTime.now(),
                                                        date,
                                                        "departed_waste_depot",
                                                        vmSchedule
                                                            .shedulecardResponse
                                                            .data![i]
                                                            .id!,
                                                        ScheduleStatusType
                                                            .departedWasteDepot))),
//
                                          if (res.data?[i].arriveEnviroFacility !=
                                              null)
                                            cmRowTextWithDatePicker(
                                                context,
                                                "Arrived at Enviro Facility",
                                                vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .arriveEnviroFacility !=
                                                        null
                                                    ? DateFormat('dd-MM-yyyy hh:mm a')
                                                        .format(DateTime.parse(
                                                        vmSchedule
                                                                .shedulecardResponse
                                                                .data?[i]
                                                                .arriveEnviroFacility ??
                                                            vmSchedule
                                                                .selectedArrivedEnviroDate,
                                                      ))
                                                    : "",
                                                i,
                                                dateTimePicker(
                                                    context,
                                                    vmSchedule
                                                                .shedulecardResponse
                                                                .data?[i]
                                                                .arriveEnviroFacility !=
                                                            null
                                                        ? DateTime.parse(vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .arriveEnviroFacility!)
                                                        : DateTime.now(),
                                                    (date) => vmSchedule.enviroDatePickerFn(
                                                        context,
                                                        vmSchedule.selectedArrivedEnviroDate ??
                                                            DateTime.now(),
                                                        date,
                                                        "arrived_at_enviro_facility",
                                                        vmSchedule
                                                            .shedulecardResponse
                                                            .data![i]
                                                            .id!,
                                                        ScheduleStatusType
                                                            .departedWasteDepot))),
                                        ]
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            sized0hx05,
                            if (res.data?[i].drivers?[driversIndex]
                                        .preinspectioncheck ==
                                    false &&
                                res.data?[i].drivers?[driversIndex]
                                        .preinspectionRequired ==
                                    true &&
                                res.data?[i].completed == null) ...[
                              CmButton(
                                text: "Update Vehicle Pre-inspection",
                                color: const Color.fromARGB(255, 51, 188, 165),
                                buttonTextStyle: TextStyle(
                                    color: Colors.white, fontSize: 9.sp),
                                onPressed: () {
                                  context.router.push(
                                      UpdateVehiclepreinspectionRoute(
                                          index: i,
                                          driversIndex: driversIndex));
                                },
                                borderRadius: 3.w,
                                loading: res.loading,
                              ),
                              sized0hx05
                            ] else ...[
                              if (res.data![i].departEnviroFacility ==
                                  null) ...[
                                CmButton(
                                  color: const Color(0xFF4CAF9E),
                                  buttonTextStyle: TextStyle(
                                      color: Colors.white, fontSize: 10.sp),
                                  onPressed: () {
                                    dateTimePickerWithouIcon(
                                        context,
                                        DateTime.now(),
                                        (date) => vmSchedule.enviroDatePickerFn(
                                            context,
                                            vmSchedule
                                                    .selectedDepartedEnviroDate ??
                                                DateTime.now(),
                                            date,
                                            "departed_enviro_facility",
                                            vmSchedule.shedulecardResponse
                                                .data![i].id!,
                                            ScheduleStatusType
                                                .departedEnviroFacility));
                                  },
                                  borderRadius: 0,
                                  fontSize: 10.sp,
                                  text: "Departed Enviro  Facility",
                                  loading: res.loading,
                                ),
                                sized0hx05
                              ],
                              if (res.data![i].startJob == null) ...[
                                CmButton(
                                  color: const Color(0xFF4CAF9E),
                                  buttonTextStyle: TextStyle(
                                      color: Colors.white, fontSize: 10.sp),
                                  onPressed: () {
                                    context.router.push(ScheduleImageRoute(
                                        fromJobStarted: true, id: id));
                                  },
                                  borderRadius: 0,
                                  fontSize: 10.sp,
                                  text: "Starting Job",
                                  loading: res.loading,
                                ),
                                sized0hx05
                              ],
                              if (res.data![i].finishJob == null &&
                                  res.data![i].startJob != null) ...[
                                CmButton(
                                  color: const Color(0xFF4CAF9E),
                                  buttonTextStyle: TextStyle(
                                      color: Colors.white, fontSize: 10.sp),
                                  onPressed: () {
                                    context.router.push(ScheduleImageRoute(
                                        fromJobStarted: false, id: id));
                                  },
                                  borderRadius: 0,
                                  fontSize: 10.sp,
                                  text: "Finished Job",
                                  loading: res.loading,
                                ),
                                sized0hx05
                              ],
                              // if (res.data![i].image == null &&
                              //     res.data![i].completed == null &&
                              //     res.data![i].finishJob != null) ...[
                                CmButton(
                                  text: "Take Signature",
                                  onPressed: () {
                                    vmSchedule.signaturePath = null;
                                    context.router.push(
                                        SheduleSignatureRoute(id: id, i: i));
                                  },
                                  color:
                                      const Color.fromARGB(255, 51, 188, 165),
                                  borderRadius: 3.w,
                                  buttonTextStyle: TextStyle(
                                      color: Colors.white, fontSize: 9.sp),
                                ),
                              // ],
                              if (res.data![i].completed != null &&
                                  res.data![i].arriveAtWasteDepot == null) ...[
                                CmButton(
                                  color: const Color(0xFF4CAF9E),
                                  buttonTextStyle: TextStyle(
                                      color: Colors.white, fontSize: 10.sp),
                                  onPressed: () {
                                    dateTimePickerWithouIcon(
                                        context,
                                        DateTime.now(),
                                        (date) => vmSchedule.enviroDatePickerFn(
                                              context,
                                              vmSchedule
                                                      .selectedArrivedEnviroDate ??
                                                  DateTime.now(),
                                              date,
                                              "arrived_at_waste_depot",
                                              vmSchedule.shedulecardResponse
                                                  .data![i].id!,
                                              ScheduleStatusType.arrivedAtDepot,
                                            ));
                                  },
                                  borderRadius: 0,
                                  fontSize: 10.sp,
                                  text: "Arrived at Waste Depot",
                                  loading: res.loading,
                                ),
                                sized0hx05
                              ],
                              if (res.data![i].finishJob != null &&
                                  res.data![i].arriveAtWasteDepot != null &&
                                  res.data![i].departWasteDepot == null) ...[
                                CmButton(
                                  color: const Color(0xFF4CAF9E),
                                  buttonTextStyle: TextStyle(
                                      color: Colors.white, fontSize: 10.sp),
                                  onPressed: () {
                                    dateTimePickerWithouIcon(
                                        context,
                                        DateTime.now(),
                                        (date) => vmSchedule.enviroDatePickerFn(
                                              context,
                                              vmSchedule
                                                      .selectedDepartedWasteDepotDate ??
                                                  DateTime.now(),
                                              date,
                                              "departed_waste_depot",
                                              vmSchedule.shedulecardResponse
                                                  .data![i].id!,
                                              ScheduleStatusType
                                                  .departedWasteDepot,
                                            ));
                                  },
                                  borderRadius: 0,
                                  fontSize: 10.sp,
                                  text: "Departed Waste Depot",
                                  loading: res.loading,
                                ),
                                sized0hx05
                              ],

                              sized0hx05,
                              // ],
                              if (res.data![i].arriveEnviroFacility == null &&
                                  res.data![i].departWasteDepot != null) ...[
                                CmButton(
                                  color: const Color(0xFF4CAF9E),
                                  buttonTextStyle: TextStyle(
                                      color: Colors.white, fontSize: 10.sp),
                                  onPressed: () {
                                    dateTimePickerWithouIcon(
                                        context,
                                        DateTime.now(),
                                        (date) => vmSchedule.enviroDatePickerFn(
                                              context,
                                              vmSchedule
                                                      .selectedArrivedEnviroDate ??
                                                  DateTime.now(),
                                              date,
                                              "arrived_at_enviro_facility",
                                              vmSchedule.shedulecardResponse
                                                  .data![i].id!,
                                              ScheduleStatusType
                                                  .arrivedEnviroFacility,
                                            ));
                                  },
                                  borderRadius: 0,
                                  fontSize: 10.sp,
                                  text: "Arrived at Enviro Facility",
                                  loading: res.loading,
                                ),
                                sized0hx05,
                              ],
                              if (res.data![i].completed != null) ...[
                                SizedBox(
                                  width: 150.w,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: CmButton(
                                          borderRadius: 3.w,
                                          color: const Color.fromARGB(
                                              255, 51, 188, 165),
                                          buttonTextStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                          ),
                                          onPressed: () {
                                            context.router.push(
                                                SheduleCommentRoute(
                                                    id: id, i: i));
                                          },
                                          text: "Comment",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                sized0hx05,
                                SizedBox(
                                  width: 150.w,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: CmButton(
                                          icon: Icons.camera_alt,
                                          iconSize: 14.w,
                                          borderRadius: 3.w,
                                          color: Colors.black,
                                          buttonTextStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                          ),
                                          onPressed: () {
                                            vmSchedule.clearLists();
                                            context.router.push(
                                                ScheduleImageRoute(
                                                    id: id,
                                                    fromAddMedia: true));
                                          },
                                          text: "Add Media",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                sized0hx05,
                                SizedBox(
                                  width: 150.w,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: CmButton(
                                          icon: Icons.video_camera_back,
                                          iconSize: 14.w,
                                          borderRadius: 3.w,
                                          color: Colors.black,
                                          buttonTextStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                          ),
                                          onPressed: () {
                                            vmSchedule.pickedCameraVideo = "";
                                            vmSchedule.pickedGalleryVideo = "";
                                            vmSchedule.pickedCameraVideoList =
                                                [];
                                            vmSchedule.pickedGalleryVideoList =
                                                [];
                                            context.router.push(
                                                ScheduleVideoRoute(id: id));
                                          },
                                          text: "Add Video",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                sized0hx05
                              ],
                              if (res.data?[i].beforePics?.isNotEmpty ??
                                  false) ...[
                                BeforeImagesList(
                                  i: i,
                                  id: id,
                                ),
                                sized0hx05,
                              ],
                              if (res.data?[i].afterPics?.isNotEmpty ??
                                  false) ...[
                                AfterImagesList(i: i, id: id),
                                sized0hx05,
                              ],
                              if (res.data?[i].gallery?.isNotEmpty ??
                                  false) ...[
                                GalleryImagesList(i: i, id: id),
                                sized0hx05,
                              ],
                              if (res.data?[i].jobVideo?.isNotEmpty ??
                                  false) ...[
                                VideoList(i: i, id: id),
                                sized0hx05,
                              ],
                              sized0hx05,
                              if (res.data?[i].teamEmployees?.isNotEmpty ??
                                  false) ...[
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
                                    height: 80.h,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          res.data?[i].teamEmployees?.length,
                                      itemBuilder: (context, index) {
                                        final data =
                                            res.data?[i].teamEmployees?[index];
                                        return Padding(
                                          padding: EdgeInsets.only(right: 5.w),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 40.w,
                                                width: 40.w,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade700,
                                                      shape: BoxShape.circle),
                                                  child: dpImage("${data?.dp}"),
                                                ),
                                              ),
                                              sized0hx05,
                                              Text(
                                                "${data?.name}",
                                                style:
                                                    TextStyle(fontSize: 9.sp),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                              if (res.data?[i].image != null) ...[
                                Text(
                                  'Signature',
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                sized0hx10,
                                signatureImageWidget(i: i),
                              ],
                              sized0hx20
                            ]
                          ],
                        ]),
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
          style: TextStyle(fontSize: 9.sp),
        ),
      ),
      Expanded(
          child: Text(": $statusDateTime", style: TextStyle(fontSize: 9.sp))),
      datePicker
    ],
  );
}

String formatDateString(String? dateString) {
  if (dateString == null || dateString.isEmpty) {
    return ''; // Or any default value you prefer
  }

  try {
    DateTime parsedDate = DateTime.parse(dateString);
    return DateFormat('dd-MM-yyyy hh:mm a').format(parsedDate);
  } catch (e) {
    return ''; // Or handle the error appropriately
  }
}
