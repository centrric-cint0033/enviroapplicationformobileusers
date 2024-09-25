import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_time_picker.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_list.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_widget.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/gmap_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TodaysScheduleList extends StatelessWidget {
  const TodaysScheduleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final res = vmSchedule.shedulecardResponse;
      List<SheduleCardRespModel> scheduleJobs = res.data ?? [];
      return SizedBox(
        height: 250.w,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          controller: vmSchedule.scheduleJobsController,
          itemCount: scheduleJobs.length + 1,
          itemBuilder: (BuildContext context, int i) {
            return i == scheduleJobs.length
                ? vmSchedule.shedulecardResponse.paginationLoading
                    ? const CupertinoActivityIndicator()
                    : const SizedBox.shrink()
                : SizedBox(
                    height: 210.w,
                    width: scheduleJobs.length == 1
                        ? MediaQuery.of(context).size.width - 34.h
                        : MediaQuery.of(context).size.width - 55.h,
                    child: Card(
                      color: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.blue, width: 1),
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          scheduleJobs[i].primaryVehicleDriver == true
                              ? Container(
                                  height: 18.h,
                                  width: 78.h,
                                  decoration: BoxDecoration(
                                    color: Appthemes.cPrimary,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4.w),
                                      bottomRight: Radius.circular(4.w),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Assigned Primary",
                                      style: TextStyle(
                                        fontSize: 8.h,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                )
                              : sized0hx10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "${scheduleJobs[i].salesPerson}",
                              ),
                              sized0wx20,
                              SizedBox(
                                height: 24.w,
                                width: 76.w,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Appthemes.cPrimary,
                                      ),
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.h),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Next Job",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 8.sp),
                                    )),
                              ),
                              sized0wx05,
                            ],
                          ),
                          sized0hx10,
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: InkWell(
                              onTap: () {
                                int primaryDriverIndex = 0;
                                if (scheduleJobs[i].drivers != null) {
                                  for (var index = 0;
                                      index < scheduleJobs[i].drivers!.length;
                                      index++) {
                                    if (scheduleJobs[i].drivers![index].type ==
                                        "Primary Driver") {
                                      primaryDriverIndex = index;
                                      break;
                                    }
                                  }
                                }
                                if (scheduleJobs[i].primaryVehicleDriver ==
                                        true &&
                                    scheduleJobs[i].arriveEnviroFacility ==
                                        null) {
                                  vmSchedule.signaturecontroller.clear();
                                  vmSchedule.signaturePath = null;
                                  showConfirmationAlert(
                                    context: context,
                                    content: (scheduleJobs[i].drivers?[primaryDriverIndex].preinspectioncheck ==
                                                false &&
                                            scheduleJobs[i]
                                                    .drivers?[
                                                        primaryDriverIndex]
                                                    .preinspectionRequired ==
                                                true &&
                                            scheduleJobs[i].completed == null)
                                        ? "Update your Vehicle's Pre-inspection Check"
                                        : scheduleJobs[i].departEnviroFacility ==
                                                    null &&
                                                scheduleJobs[i].startJob == null
                                            ? "Have you Departed the Enviro Facility"
                                            : scheduleJobs[i].startJob == null
                                                ? "Have you Started the Job"
                                                : scheduleJobs[i].finishJob ==
                                                        null
                                                    ? "Have you Finished the Job"
                                                    : scheduleJobs[i]
                                                                .completed ==
                                                            null
                                                        ? "Have you Completed the Job"
                                                        : scheduleJobs[i].arriveAtWasteDepot ==
                                                                    null &&
                                                                scheduleJobs[i]
                                                                        .departWasteDepot ==
                                                                    null
                                                            ? "Have you Arrived at Waste Depot"
                                                            : scheduleJobs[i].departWasteDepot ==
                                                                        null &&
                                                                    scheduleJobs[i]
                                                                            .arriveEnviroFacility ==
                                                                        null
                                                                ? "Have you Departed Waste Depot"
                                                                : scheduleJobs[i].arriveEnviroFacility == null
                                                                    ? "Have you Arrived at Enviro Facility"
                                                                    : "",
                                    onSubmit: () {
                                      (scheduleJobs[i].drivers?[primaryDriverIndex].preinspectioncheck == false &&
                                              scheduleJobs[i]
                                                      .drivers?[
                                                          primaryDriverIndex]
                                                      .preinspectionRequired ==
                                                  true &&
                                              scheduleJobs[i].completed == null)
                                          ? context.router.push(UpdateVehiclepreinspectionRoute(
                                              index: i,
                                              driversIndex: primaryDriverIndex))
                                          : scheduleJobs[i].departEnviroFacility == null &&
                                                  scheduleJobs[i].startJob ==
                                                      null
                                              ? dateTimePickerWithouIcon(
                                                  context,
                                                  DateTime.now(),
                                                  (date) => vmSchedule.enviroDatePickerFn(
                                                      context,
                                                      vmSchedule.selectedDepartedEnviroDate ??
                                                          DateTime.now(),
                                                      date,
                                                      "departed_enviro_facility",
                                                      vmSchedule
                                                          .shedulecardResponse
                                                          .data![i]
                                                          .id!,
                                                      ScheduleStatusType
                                                          .departedEnviroFacility))
                                              : scheduleJobs[i].startJob == null
                                                  ? context.router.push(ScheduleImageRoute(fromJobStarted: true, id: vmSchedule.shedulecardResponse.data![i].id!))
                                                  : scheduleJobs[i].finishJob == null
                                                      ? context.router.push(ScheduleImageRoute(fromJobStarted: false, id: vmSchedule.shedulecardResponse.data![i].id!))
                                                      : scheduleJobs[i].completed == null
                                                          ? context.router.push(SheduleSignatureRoute(id: vmSchedule.shedulecardResponse.data![i].id!, i: i))
                                                          : scheduleJobs[i].arriveAtWasteDepot == null && scheduleJobs[i].departWasteDepot == null
                                                              ? dateTimePickerWithouIcon(
                                                                  context,
                                                                  DateTime.now(),
                                                                  (date) => vmSchedule.enviroDatePickerFn(
                                                                        context,
                                                                        vmSchedule.selectedArrivedEnviroDate ??
                                                                            DateTime.now(),
                                                                        date,
                                                                        "arrived_at_waste_depot",
                                                                        vmSchedule
                                                                            .shedulecardResponse
                                                                            .data![i]
                                                                            .id!,
                                                                        ScheduleStatusType
                                                                            .arrivedAtDepot,
                                                                      ))
                                                              : scheduleJobs[i].departWasteDepot == null && scheduleJobs[i].arriveEnviroFacility == null
                                                                  ? dateTimePickerWithouIcon(
                                                                      context,
                                                                      DateTime.now(),
                                                                      (date) => vmSchedule.enviroDatePickerFn(
                                                                            context,
                                                                            vmSchedule.selectedDepartedWasteDepotDate ??
                                                                                DateTime.now(),
                                                                            date,
                                                                            "departed_waste_depot",
                                                                            vmSchedule.shedulecardResponse.data![i].id!,
                                                                            ScheduleStatusType.departedWasteDepot,
                                                                          ))
                                                                  : scheduleJobs[i].arriveEnviroFacility == null
                                                                      ? dateTimePickerWithouIcon(
                                                                          context,
                                                                          DateTime.now(),
                                                                          (date) => vmSchedule.enviroDatePickerFn(
                                                                                context,
                                                                                vmSchedule.selectedArrivedEnviroDate ?? DateTime.now(),
                                                                                date,
                                                                                "arrived_at_enviro_facility",
                                                                                vmSchedule.shedulecardResponse.data![i].id!,
                                                                                ScheduleStatusType.arrivedEnviroFacility,
                                                                              ))
                                                                      : "";
                                    },
                                    onSubmit2: () {
                                      vmSchedule.clearFn();
                                      context.router.push(SheduledetailRoute(
                                          id: scheduleJobs[i].id ?? 0,
                                          i: i,
                                          driversIndex: primaryDriverIndex));
                                    },
                                    submitText: (scheduleJobs[i]
                                                    .drivers?[
                                                        primaryDriverIndex]
                                                    .preinspectioncheck ==
                                                false &&
                                            scheduleJobs[i]
                                                    .drivers?[
                                                        primaryDriverIndex]
                                                    .preinspectionRequired ==
                                                true &&
                                            scheduleJobs[i].completed == null)
                                        ? "YES ADD NOW"
                                        : scheduleJobs[i].departEnviroFacility ==
                                                    null &&
                                                scheduleJobs[i].startJob == null
                                            ? "YES,UPDATE TIME"
                                            : scheduleJobs[i].startJob == null
                                                ? "YES,UPDATE TIME"
                                                : scheduleJobs[i].finishJob ==
                                                        null
                                                    ? "YES,UPDATE TIME"
                                                    : scheduleJobs[i].completed ==
                                                            null
                                                        ? "YES,UPDATE TIME"
                                                        : scheduleJobs[i].arriveAtWasteDepot ==
                                                                    null &&
                                                                scheduleJobs[i].departWasteDepot ==
                                                                    null
                                                            ? "YES,UPDATE TIME"
                                                            : scheduleJobs[i].departWasteDepot ==
                                                                        null &&
                                                                    scheduleJobs[i].arriveEnviroFacility == null
                                                                ? "YES,UPDATE TIME"
                                                                : scheduleJobs[i].arriveEnviroFacility == null
                                                                    ? "YES,UPDATE TIME"
                                                                    : "",
                                    submitText2: "SKIP FOR NOW",
                                    showSubmit3Bn: (scheduleJobs[i]
                                                    .drivers?[
                                                        primaryDriverIndex]
                                                    .preinspectioncheck ==
                                                false &&
                                            scheduleJobs[i]
                                                    .drivers?[
                                                        primaryDriverIndex]
                                                    .preinspectionRequired ==
                                                true &&
                                            scheduleJobs[i].completed == null)
                                        ? false
                                        : scheduleJobs[i].departEnviroFacility ==
                                                    null &&
                                                scheduleJobs[i].startJob == null
                                            ? true
                                            : scheduleJobs[i].startJob == null
                                                ? false
                                                : scheduleJobs[i].finishJob ==
                                                        null
                                                    ? false
                                                    : scheduleJobs[i].completed ==
                                                            null
                                                        ? false
                                                        : scheduleJobs[i].arriveAtWasteDepot ==
                                                                    null &&
                                                                scheduleJobs[i].departWasteDepot ==
                                                                    null
                                                            ? true
                                                            : scheduleJobs[i].departWasteDepot ==
                                                                        null &&
                                                                    scheduleJobs[i].arriveEnviroFacility == null
                                                                ? true
                                                                : scheduleJobs[i].arriveEnviroFacility == null
                                                                    ? false
                                                                    : false,
                                    submitText3: "SKIP TO NEXT STEP",
                                    onSubmit3: () {
                                      (scheduleJobs[i]
                                                      .drivers?[
                                                          primaryDriverIndex]
                                                      .preinspectioncheck ==
                                                  false &&
                                              scheduleJobs[i]
                                                      .drivers?[
                                                          primaryDriverIndex]
                                                      .preinspectionRequired ==
                                                  true &&
                                              scheduleJobs[i].completed == null)
                                          ? null
                                          : scheduleJobs[i].startJob == null
                                              ? showConfirmationAlert(
                                                  context: context,
                                                  content:
                                                      "Have you Started the Job",
                                                  onSubmit: () {
                                                    context.router.push(
                                                        ScheduleImageRoute(
                                                            fromJobStarted:
                                                                true,
                                                            id: vmSchedule
                                                                .shedulecardResponse
                                                                .data![i]
                                                                .id!));
                                                  },
                                                  onSubmit2: () {
                                                    vmSchedule.clearFn();
                                                    context.router.push(
                                                        SheduledetailRoute(
                                                            id: scheduleJobs[i]
                                                                    .id ??
                                                                0,
                                                            i: i,
                                                            driversIndex:
                                                                primaryDriverIndex));
                                                  },
                                                  submitText: "YES,UPDATE TIME",
                                                  submitText2: "SKIP FOR NOW",
                                                )
                                              : scheduleJobs[i].startJob == null
                                                  ? null
                                                  : scheduleJobs[i].finishJob ==
                                                          null
                                                      ? null
                                                      : scheduleJobs[i]
                                                                  .completed ==
                                                              null
                                                          ? null
                                                          : scheduleJobs[i]
                                                                      .arriveAtWasteDepot ==
                                                                  null
                                                              ? showConfirmationAlert(
                                                                  context:
                                                                      context,
                                                                  content:
                                                                      "Have you Departed Waste Depot",
                                                                  onSubmit: () {
                                                                    dateTimePickerWithouIcon(
                                                                        context,
                                                                        DateTime
                                                                            .now(),
                                                                        (date) =>
                                                                            vmSchedule.enviroDatePickerFn(
                                                                              context,
                                                                              vmSchedule.selectedDepartedWasteDepotDate ?? DateTime.now(),
                                                                              date,
                                                                              "departed_waste_depot",
                                                                              vmSchedule.shedulecardResponse.data![i].id!,
                                                                              ScheduleStatusType.departedWasteDepot,
                                                                            ));
                                                                  },
                                                                  onSubmit2:
                                                                      () {
                                                                    vmSchedule
                                                                        .clearFn();
                                                                    context.router.push(SheduledetailRoute(
                                                                        id: scheduleJobs[i].id ??
                                                                            0,
                                                                        i: i,
                                                                        driversIndex:
                                                                            primaryDriverIndex));
                                                                  },
                                                                  submitText:
                                                                      "YES,UPDATE TIME",
                                                                  submitText2:
                                                                      "SKIP FOR NOW",
                                                                  showSubmit3Bn:
                                                                      true,
                                                                  submitText3:
                                                                      "SKIP TO NEXT STEP",
                                                                  onSubmit3:
                                                                      () {
                                                                    vmSchedule
                                                                        .signaturecontroller
                                                                        .clear();
                                                                    vmSchedule
                                                                            .signaturePath =
                                                                        null;
                                                                    showConfirmationAlert(
                                                                      context:
                                                                          context,
                                                                      content:
                                                                          "Have you Arrived at Enviro Facility",
                                                                      onSubmit:
                                                                          () {
                                                                        dateTimePickerWithouIcon(
                                                                            context,
                                                                            DateTime
                                                                                .now(),
                                                                            (date) =>
                                                                                vmSchedule.enviroDatePickerFn(
                                                                                  context,
                                                                                  vmSchedule.selectedArrivedEnviroDate ?? DateTime.now(),
                                                                                  date,
                                                                                  "arrived_at_enviro_facility",
                                                                                  vmSchedule.shedulecardResponse.data![i].id!,
                                                                                  ScheduleStatusType.arrivedEnviroFacility,
                                                                                ));
                                                                      },
                                                                      onSubmit2:
                                                                          () {
                                                                        vmSchedule
                                                                            .clearFn();
                                                                        context.router.push(SheduledetailRoute(
                                                                            id: scheduleJobs[i].id ??
                                                                                0,
                                                                            i: i,
                                                                            driversIndex: primaryDriverIndex));
                                                                      },
                                                                      submitText:
                                                                          "YES,UPDATE TIME",
                                                                      submitText2:
                                                                          "SKIP FOR NOW",
                                                                    );
                                                                  },
                                                                )
                                                              //  showConfirmationAlert(
                                                              //     context: context,
                                                              //     content:
                                                              //         "Have you Arrived at Waste Depot",
                                                              //     onSubmit: () {
                                                              //       dateTimePickerWithouIcon(
                                                              //           context,
                                                              //           DateTime.now(),
                                                              //           (date) =>
                                                              //               vmSchedule
                                                              //                   .enviroDatePickerFn(
                                                              //                 context,
                                                              //                 vmSchedule
                                                              //                         .selectedArrivedEnviroDate ??
                                                              //                     DateTime
                                                              //                         .now(),
                                                              //                 date,
                                                              //                 "arrived_at_waste_depot",
                                                              //                 vmSchedule
                                                              //                     .shedulecardResponse
                                                              //                     .data![
                                                              //                         i]
                                                              //                     .id!,
                                                              //                 ScheduleStatusType
                                                              //                     .arrivedAtDepot,
                                                              //               ));
                                                              //     },
                                                              //     onSubmit2: () {
                                                              //       vmSchedule.clearFn();
                                                              //       context.router.push(
                                                              //           SheduledetailRoute(
                                                              //               id: res.id ??
                                                              //                   0,
                                                              //               i: i,
                                                              //               driversIndex:
                                                              //                   primaryDriverIndex));
                                                              //     },
                                                              //     submitText:
                                                              //         "YES,UPDATE TIME",
                                                              //     submitText2:
                                                              //         "SKIP FOR NOW",
                                                              //   )
                                                              : scheduleJobs[i]
                                                                          .departWasteDepot ==
                                                                      null
                                                                  ? showConfirmationAlert(
                                                                      context:
                                                                          context,
                                                                      content:
                                                                          "Have you Arrived at Enviro Facility",
                                                                      onSubmit:
                                                                          () {
                                                                        dateTimePickerWithouIcon(
                                                                            context,
                                                                            DateTime
                                                                                .now(),
                                                                            (date) =>
                                                                                vmSchedule.enviroDatePickerFn(
                                                                                  context,
                                                                                  vmSchedule.selectedArrivedEnviroDate ?? DateTime.now(),
                                                                                  date,
                                                                                  "arrived_at_enviro_facility",
                                                                                  vmSchedule.shedulecardResponse.data![i].id!,
                                                                                  ScheduleStatusType.arrivedEnviroFacility,
                                                                                ));
                                                                      },
                                                                      onSubmit2:
                                                                          () {
                                                                        vmSchedule
                                                                            .clearFn();
                                                                        context.router.push(SheduledetailRoute(
                                                                            id: scheduleJobs[i].id ??
                                                                                0,
                                                                            i: i,
                                                                            driversIndex: primaryDriverIndex));
                                                                      },
                                                                      submitText:
                                                                          "YES,UPDATE TIME",
                                                                      submitText2:
                                                                          "SKIP FOR NOW",
                                                                    )
                                                                  : scheduleJobs[i].departWasteDepot ==
                                                                              null &&
                                                                          scheduleJobs[i].arriveEnviroFacility ==
                                                                              null
                                                                      ? null
                                                                      : scheduleJobs[i].arriveEnviroFacility ==
                                                                              null
                                                                          ? null
                                                                          : "";
                                    },
                                  );
                                } else {
                                  vmSchedule.clearFn();
                                  context.router.push(SheduledetailRoute(
                                      id: scheduleJobs[i].id ?? 0,
                                      i: i,
                                      driversIndex: primaryDriverIndex));
                                }
                              },
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        expandedRowShowText2(
                                          "Day",
                                          DateFormat('dd-MM-yyyy').format(
                                            scheduleJobs[i].startDate!,
                                          ),
                                        ),
                                        expandedRowShowText2(
                                            "Time",
                                            convertTimeTo12HourFormat(
                                                scheduleJobs[i].startTime ??
                                                    "")),
                                        expandedRowShowText2(
                                          "Type",
                                          scheduleJobs[i].wasteTypeStr ?? '',
                                        ),
                                        expandedRowShowText2(
                                          "Company",
                                          scheduleJobs[i].client?.clientName ??
                                              '',
                                        ),
                                        (vmSchedule.shedulecardResponse.data !=
                                                    null &&
                                                scheduleJobs[i].status != null)
                                            ? expandedRowShowText2(
                                                "Status",
                                                jobStatus(
                                                    scheduleJobs[i].status ??
                                                        ""))
                                            : Container(),
                                        if (scheduleJobs[i]
                                                .jobCardKeys
                                                ?.photoRequired ==
                                            true)
                                          CmButton(
                                            height: 20.w,
                                            text: "Photo Required",
                                            icon: Icons.photo,
                                            iconSize: 11.sp,
                                            fontSize: 9.sp,
                                          )
                                        else
                                          SizedBox(
                                            height: 20.w,
                                          )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: MapWidget(
                                        latitude: scheduleJobs[i]
                                                    .client
                                                    ?.locationLatitude !=
                                                "null"
                                            ? double.parse(scheduleJobs[i]
                                                    .client
                                                    ?.locationLatitude ??
                                                "")
                                            : 0,
                                        longitude: scheduleJobs[i]
                                                    .client
                                                    ?.locationLogitude !=
                                                "null"
                                            ? double.parse(scheduleJobs[i]
                                                    .client
                                                    ?.locationLogitude ??
                                                "")
                                            : 0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          sized0hx05,
                          cmCard(context, scheduleJobs[i]),
                        ],
                      ),
                    ),
                  );
          },
        ),
      );
    });
  }

  Widget cmCard(BuildContext context, SheduleCardRespModel schedule) {
    return Container(
      height: 72.w,
      width: MediaQuery.of(context).size.width - 60.h,
      decoration: BoxDecoration(
        color: Appthemes.cPrimary,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Drivers and Vehicles",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.h,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          sized0hx05,
          Observer(builder: (context) {
            List<Driver>? drivers = schedule.drivers;

            Driver? primaryDriver;
            List<Driver> otherDrivers = [];
            int? primaryDriverIndex;

            // Separate primary driver from other drivers
            if (drivers != null) {
              for (var index = 0; index < drivers.length; index++) {
                var driver = drivers[index];
                if (driver.type == "Primary Driver") {
                  primaryDriver = driver;
                  primaryDriverIndex = index; // Store the original index
                } else {
                  otherDrivers.add(driver);
                }
              }
              if (primaryDriver != null) {
                drivers = [primaryDriver, ...otherDrivers];
              }
            }

            // Check if primaryDriverIndex is valid
            if (primaryDriverIndex != null &&
                primaryDriverIndex < (drivers?.length ?? 0)) {
            } else {}

            return Expanded(
              child: ListView.builder(
                itemCount: drivers?.length ?? 0,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // Ensure index is within valid range
                  if (index >= (drivers?.length ?? 0)) {
                    return const SizedBox.shrink();
                  }

                  final driver = drivers?[index];
                  return Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Container(
                      height: 40.w,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.h),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.w),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 20.w,
                                  width: 20.w,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade700,
                                      shape: BoxShape.circle,
                                    ),
                                    child: dpImage("${driver?.dp}"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.h,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${driver?.name}",
                                        style: TextStyle(fontSize: 8.h),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "${driver?.registration}",
                                        style: TextStyle(fontSize: 8.h),
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          driver?.type == "Primary Driver"
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(12.h),
                                  ),
                                  child: Text(
                                    "     Primary     ",
                                    style: TextStyle(fontSize: 8.h),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }),
          sized0hx05,
        ],
      ),
    );
  }
}
