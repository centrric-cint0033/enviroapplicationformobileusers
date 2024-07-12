import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_time_picker.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_list.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_widget.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/gmap_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TodaysScheduleList extends StatelessWidget {
  const TodaysScheduleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return SizedBox(
        height: 230.w,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: vmSchedule.shedulecardResponse.data?.length ?? 0,
          itemBuilder: (BuildContext context, int i) {
            final res = vmSchedule.shedulecardResponse.data?[i];
            return SizedBox(
              height: 210.w,
              width: MediaQuery.of(context).size.width - 55.h,
              child: Card(
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(10.h),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "${res?.salesPerson}",
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
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.h),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Next Job",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 8.w),
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
                          showConfirmationAlert(
                              context: context,
                              content: (res?.drivers?[vmSchedule.driversIndex]
                                              .preinspectioncheck ==
                                          false &&
                                      res?.drivers?[vmSchedule.driversIndex]
                                              .preinspectionRequired ==
                                          true &&
                                      res?.completed == null)
                                  ? "Update your Vehicle's Pre-inspection Check"
                                  : res?.departEnviroFacility == null
                                      ? "Have you Departed the Enviro Facility"
                                      : res!.beforePics!.isEmpty
                                          ? "Are you ready to add Before Job Images"
                                          : res.startJob == null
                                              ? "Have you Started the Job"
                                              : res.finishJob == null
                                                  ? "Have you Finished the Job"
                                                  : res.afterPics!.isEmpty
                                                      ? "Are you ready to add After Job Images"
                                                      : "",
                              onSubmit: () {
                                (res?.drivers?[vmSchedule.driversIndex].preinspectioncheck == false &&
                                        res?.drivers?[vmSchedule.driversIndex]
                                                .preinspectionRequired ==
                                            true &&
                                        res?.completed == null)
                                    ? context.router.push(UpdateVehiclepreinspectionRoute(
                                        index: i,
                                        driversIndex: vmSchedule.driversIndex))
                                    : res?.departEnviroFacility == null
                                        ? dateTimePickerWithouIcon(
                                            context,
                                            DateTime.now(),
                                            (date) => vmSchedule.enviroDatePickerFn(
                                                context,
                                                vmSchedule.selectedDepartedEnviroDate ??
                                                    DateTime.now(),
                                                date,
                                                "departed_enviro_facility",
                                                vmSchedule.shedulecardResponse
                                                    .data![i].id!,
                                                ScheduleStatusType
                                                    .departedEnviroFacility))
                                        : res!.beforePics!.isEmpty
                                            ? context.router.push(
                                                ScheduleImageRoute(
                                                    fromJobStarted: true,
                                                    id: vmSchedule
                                                        .shedulecardResponse
                                                        .data![i]
                                                        .id!))
                                            : res.startJob == null
                                                ? dateTimePickerWithouIcon(context, DateTime.now(), (date) => vmSchedule.enviroDatePickerFn(context, vmSchedule.selectedStartingJobDate ?? DateTime.now(), date, "job_started", vmSchedule.shedulecardResponse.data![i].id!, ScheduleStatusType.jobStarted, fromJobStarted: true))
                                                : res.finishJob == null
                                                    ? dateTimePickerWithouIcon(
                                                        context,
                                                        DateTime.now(),
                                                        (date) => vmSchedule.enviroDatePickerFn(
                                                              context,
                                                              vmSchedule
                                                                      .selectedFinishedJobDate ??
                                                                  DateTime
                                                                      .now(),
                                                              date,
                                                              "job_finished",
                                                              vmSchedule
                                                                  .shedulecardResponse
                                                                  .data![i]
                                                                  .id!,
                                                              ScheduleStatusType
                                                                  .finishedJob,
                                                            ))
                                                    : res.afterPics!.isEmpty
                                                        ? context.router.push(ScheduleImageRoute(id: vmSchedule.shedulecardResponse.data![i].id!))
                                                        : "";
                              },
                              onSubmit2: () {
                                vmSchedule.clearFn();
                                context.router.push(SheduledetailRoute(
                                    id: res?.id ?? 0,
                                    i: i,
                                    driversIndex: vmSchedule.driversIndex));
                              },
                              submitText:
                                  (res?.drivers?[vmSchedule.driversIndex]
                                                  .preinspectioncheck ==
                                              false &&
                                          res?.drivers?[vmSchedule.driversIndex]
                                                  .preinspectionRequired ==
                                              true &&
                                          res?.completed == null)
                                      ? "YES ADD NOW"
                                      : res?.departEnviroFacility == null
                                          ? "YES,UPDATE TIME"
                                          : res!.beforePics!.isEmpty
                                              ? "YES,ADD IMAGES"
                                              : res.startJob == null
                                                  ? "YES,UPDATE TIME"
                                                  : res.finishJob == null
                                                      ? "YES,UPDATE TIME"
                                                      : res.afterPics!.isEmpty
                                                          ? "YES,ADD IMAGES"
                                                          : "",
                              submitText2: "SKIP FOR NOW");
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  expandedRowShowText2(
                                    "Day",
                                    DateFormat('dd-MM-yyyy').format(
                                      vmSchedule.shedulecardResponse.data![i]
                                          .startDate!,
                                    ),
                                  ),
                                  expandedRowShowText2(
                                    "Time",
                                    vmSchedule.shedulecardResponse.data?[i]
                                            .startTime ??
                                        '',
                                  ),
                                  expandedRowShowText2(
                                    "Type",
                                    vmSchedule.shedulecardResponse.data?[i]
                                            .wasteTypeStr ??
                                        '',
                                  ),
                                  expandedRowShowText2(
                                    "Company",
                                    vmSchedule.shedulecardResponse.data?[i]
                                            .client?.clientName ??
                                        '',
                                  ),
                                  (vmSchedule.shedulecardResponse.data !=
                                              null &&
                                          vmSchedule.shedulecardResponse
                                                  .data?[i].status !=
                                              null)
                                      ? expandedRowShowText2(
                                          "Status",
                                          jobStatus(vmSchedule
                                                  .shedulecardResponse
                                                  .data?[i]
                                                  .status ??
                                              ""))
                                      : Container(),
                                ],
                              ),
                            ),
                            Expanded(
                              child: MapWidget(
                                  latitude: double.parse(vmSchedule
                                          .shedulecardResponse
                                          .data?[i]
                                          .client
                                          ?.locationLatitude ??
                                      ""),
                                  longitude: double.parse(vmSchedule
                                          .shedulecardResponse
                                          .data?[i]
                                          .client
                                          ?.locationLogitude ??
                                      "")),
                            ),
                          ],
                        ),
                      ),
                    ),
                    sized0hx10,
                    cmCard(context, vmSchedule.shedulecardResponse.data![i]),
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
          color: Appthemes.cPrimary, borderRadius: BorderRadius.circular(10.h)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: Text(
            "Drivers and Vehicles",
            style: TextStyle(
                color: Colors.white,
                fontSize: 10.h,
                fontWeight: FontWeight.w400),
          ),
        ),
        sized0hx05,
        Expanded(
          child: ListView.builder(
            itemCount: schedule.drivers?.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              vmSchedule.driversIndex = index;
              return Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Container(
                  height: 40.w,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.h)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        SizedBox(
                          height: 20.w,
                          width: 20.w,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade700,
                                shape: BoxShape.circle),
                            child: dpImage("${schedule.drivers?[index].dp}"),
                          ),
                        ),
                        SizedBox(
                          width: 5.h,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${schedule.drivers?[index].name}",
                                style: TextStyle(fontSize: 8.h),
                              ),
                              Text(
                                "${schedule.drivers?[index].registration}",
                                style: TextStyle(fontSize: 8.h),
                              )
                            ],
                          ),
                        )
                      ]),
                      schedule.drivers?[index].type == "Primary Driver"
                          ? Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(12.h)),
                              child: Text(
                                "     Primary     ",
                                style: TextStyle(fontSize: 8.h),
                              ),
                            )
                          : const SizedBox.shrink()
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        sized0hx05,
      ]),
    );
  }
}
