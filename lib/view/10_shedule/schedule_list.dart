import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../model/12_shedulecard/shedule_card_resp_model.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final res = vmSchedule.shedulecardResponse;
      List<SheduleCardRespModel> scheduleJobs = res.data ?? [];
      return SizedBox(
        height: ScreenUtil().screenHeight - 420.h,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 2,
            ),
            physics: ScrollPhysics(),
            controller: vmSchedule.scheduleJobsController2,
            separatorBuilder: (context, index) => sized0hx10,
            shrinkWrap: true,
            itemCount: scheduleJobs.length + 1,
            itemBuilder: (BuildContext context, int i) {
              return i == scheduleJobs.length
                  ? vmSchedule.shedulecardResponse.paginationLoading
                      ? const CupertinoActivityIndicator()
                      : const SizedBox(
                          height: 60,
                        )
                  : GestureDetector(
                      onTap: () {
                        int primaryDriverIndex = 0;
                        if (vmSchedule.shedulecardResponse.data?[i].drivers !=
                            null) {
                          for (var index = 0;
                              index <
                                  vmSchedule.shedulecardResponse.data![i]
                                      .drivers!.length;
                              index++) {
                            if (vmSchedule.shedulecardResponse.data?[i]
                                    .drivers![index].type ==
                                "Primary Driver") {
                              primaryDriverIndex = index;
                              break;
                            }
                          }
                        }
                        vmSchedule.clearFn();
                        context.router.push(SheduledetailRoute(
                            id: vmSchedule.shedulecardResponse.data?[i].id ?? 0,
                            i: i,
                            driversIndex: primaryDriverIndex));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        vmSchedule.shedulecardResponse.data?[i]
                                                .client?.clientName ??
                                            '',
                                        style: TextStyle(fontSize: 11.sp),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.w),
                                    child: Text(
                                        'job ${vmSchedule.shedulecardResponse.data?[i].job ?? ''}',
                                        style: TextStyle(fontSize: 9.sp)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "${convertTimeTo12HourFormat(vmSchedule.shedulecardResponse.data?[i].startTime ?? "")}-${convertTimeTo12HourFormat(vmSchedule.shedulecardResponse.data?[i].endTime ?? "")}",
                                          style: TextStyle(fontSize: 9.sp)),
                                      if (vmSchedule.shedulecardResponse
                                                  .data?[i].startDate ==
                                              null &&
                                          vmSchedule.shedulecardResponse
                                                  .data?[i].endDate ==
                                              null)
                                        const SizedBox()
                                      else
                                        Text(
                                            "${DateFormat('dd-MM-yyyy').format(
                                              vmSchedule.shedulecardResponse
                                                  .data![i].startDate!,
                                            )}-${DateFormat('dd-MM-yyyy').format(vmSchedule.shedulecardResponse.data![i].endDate!)}",
                                            style: TextStyle(fontSize: 9.sp))
                                    ],
                                  ),
                                  Observer(builder: (context) {
                                    return Container(
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.w),
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.w),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                              jobStatus(
                                                  "${vmSchedule.shedulecardResponse.data?[i].status}"),
                                              style: TextStyle(fontSize: 8.sp)),
                                        ),
                                      ),
                                    );
                                  })
                                  // ElevatedButton(
                                  //   onPressed: () {
                                  //     sheduledetailfunction(
                                  //         context,
                                  //         vmSchedule.shedulecardResponse
                                  //                 .data?[i].id ??
                                  //             '',
                                  //         i);
                                  //   },
                                  //   style: ElevatedButton.styleFrom(
                                  //     foregroundColor: Colors.black,
                                  //     backgroundColor: Colors.white,
                                  //   ),
                                  //   child: const Text('pending'),
                                  // ),
                                ],
                              ),
                              sized0hx05,
                              Container(
                                decoration: BoxDecoration(
                                    color: Appthemes.cPrimary,
                                    borderRadius: BorderRadius.circular(10.h)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.w, right: 8.w),
                                  child: Column(
                                    children: [
                                      sized0hx03,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Drivers',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.h,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Vehicle assigned',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.h,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: vmSchedule
                                                .shedulecardResponse
                                                .data?[i]
                                                .drivers
                                                ?.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          List<Driver>? drivers = vmSchedule
                                              .shedulecardResponse
                                              .data?[i]
                                              .drivers;
                                          Driver? primaryDriver;
                                          List<Driver> otherDrivers = [];

                                          // Separate primary driver from other drivers
                                          if (drivers != null) {
                                            for (var driverIndex = 0;
                                                driverIndex < drivers.length;
                                                driverIndex++) {
                                              var driver = drivers[driverIndex];
                                              if (driver.type ==
                                                  "Primary Driver") {
                                                primaryDriver = driver;
                                              } else {
                                                otherDrivers.add(driver);
                                              }
                                            }

                                            if (primaryDriver != null) {
                                              drivers = [
                                                primaryDriver,
                                                ...otherDrivers
                                              ];
                                            }
                                          }
                                          final driver = drivers?[index];
                                          return Column(
                                            children: [
                                              const Divider(
                                                color: Colors.white,
                                                thickness: 1,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    driver?.name ?? '',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp),
                                                  ),
                                                  const Divider(
                                                    color: Colors.black,
                                                  ),
                                                  Text(
                                                    driver?.registration ?? '',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      sized0hx03,
                                    ],
                                  ),
                                ),
                              ),
                              sized0hx05,
                            ],
                          ),
                        ),
                      ),
                    );
            }),
      );
    });
  }
}

String convertTimeTo12HourFormat(String time) {
  DateFormat inputFormat = DateFormat("HH:mm:ss");
  DateFormat outputFormat = DateFormat("hh:mm a");
  DateTime parsedTime = inputFormat.parse(time);
  String formattedTime = outputFormat.format(parsedTime);
  return formattedTime;
}

String jobStatus(String status) {
  switch (status) {
    case "departed_enviro_facility":
      return "Departed Enviro Facility";
    case "job_started":
      return "Started Job";
    case "job_finished":
      return "Finished Job";
    case "completed":
      return "Completed";
    case "arrived_at_waste_depot":
      return "Arrived At Waste Depot";
    case "departed_waste_depot":
      return "Departed from Waste Depot";
    case "arrived_at_enviro_facility":
      return "Arrived At Enviro Facility";
    default:
      return "pending";
  }
}
