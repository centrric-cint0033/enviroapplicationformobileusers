import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ScheduleListByDate extends StatelessWidget {
  const ScheduleListByDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 2,
        ),
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => sized0hx10,
        shrinkWrap: true,
        itemCount: vmSchedule.shedulecardByDateResponse.data?.length ?? 0,
        itemBuilder: (BuildContext context, int i) {
          return GestureDetector(
            onTap: () {
              // vmSchedule.clearFn();
              // context.router.push(SheduledetailRoute(
              //     id: int.parse(
              //         "${vmSchedule.shedulecardByDateResponse.data?[i].id ?? 0}"),
              //     i: i,
              //     driversIndex: vmSchedule.driversIndex));
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${vmSchedule.shedulecardByDateResponse.data?[i].client ?? ''}",
                          style: TextStyle(fontSize: 11.w),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Text(
                              'job ${vmSchedule.shedulecardByDateResponse.data?[i].job ?? ''}',
                              style: TextStyle(fontSize: 9.sp)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "${convertTimeTo12HourFormat(vmSchedule.shedulecardByDateResponse.data?[i].startTime ?? "")}-${convertTimeTo12HourFormat(vmSchedule.shedulecardByDateResponse.data?[i].endTime ?? "")}",
                                style: TextStyle(fontSize: 9.sp)),
                            if (vmSchedule.shedulecardByDateResponse.data?[i]
                                        .startDate ==
                                    null &&
                                vmSchedule.shedulecardByDateResponse.data?[i]
                                        .endDate ==
                                    null)
                              const SizedBox()
                            else
                              Text(
                                  "${vmSchedule.shedulecardByDateResponse.data![i].startDate}-${vmSchedule.shedulecardByDateResponse.data![i].endDate}",
                                  style: TextStyle(fontSize: 9.sp))
                          ],
                        ),
                        Container(
                          width: 70.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.w),
                              border: Border.all(color: Colors.grey)),
                          child: Padding(
                            padding: EdgeInsets.all(4.w),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                  jobStatus(
                                      "${vmSchedule.shedulecardByDateResponse.data?[i].status}"),
                                  style: TextStyle(fontSize: 8.w)),
                            ),
                          ),
                        )
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
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Appthemes.cPrimary,
                    //       borderRadius: BorderRadius.circular(10.h)),
                    //   child: Padding(
                    //     padding: EdgeInsets.only(left: 8.w, right: 8.w),
                    //     child: Column(
                    //       children: [
                    //         sized0hx03,
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Text(
                    //               'Drivers',
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 11.h,
                    //                   fontWeight: FontWeight.bold),
                    //             ),
                    //             Text(
                    //               'Vehicle assigned',
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 11.h,
                    //                   fontWeight: FontWeight.bold),
                    //             ),
                    //           ],
                    //         ),
                    //         ListView.builder(
                    //           shrinkWrap: true,
                    //           itemCount: vmSchedule.shedulecardByDateResponse
                    //               .data?[i].additionalvehicledrivers?.length,
                    //           itemBuilder: (context, index) {
                    //             vmSchedule.driversIndexByDate = index;
                    //             return Column(
                    //               children: [
                    //                 const Divider(
                    //                   color: Colors.white,
                    //                   thickness: 1,
                    //                 ),
                    //                 Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Observer(builder: (_) {
                    //                       return Text(
                    //                         vmSchedule
                    //                                 .shedulecardByDateResponse
                    //                                 .data?[i]
                    //                                 .additionalvehicledrivers?[
                    //                                     index]
                    //                                 .name ??
                    //                             '',
                    //                         style: TextStyle(
                    //                             color: Colors.white,
                    //                             fontSize: 9.sp),
                    //                       );
                    //                     }),
                    //                     const Divider(
                    //                       color: Colors.black,
                    //                     ),
                    //                     Text(
                    //                       vmSchedule
                    //                               .shedulecardResponse
                    //                               .data?[i]
                    //                               .drivers?[index]
                    //                               .registration ??
                    //                           '',
                    //                       style: TextStyle(
                    //                           color: Colors.white,
                    //                           fontSize: 9.sp),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ],
                    //             );
                    //           },
                    //         ),
                    //         sized0hx03,
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    sized0hx05,
                  ],
                ),
              ),
            ),
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
    case "Departed from Waste Depot":
      return "Departed from Waste Depot";
    case "arrived_at_enviro_facility":
      return "Arrived At Enviro Facility";
    default:
      return "pending";
  }
}
