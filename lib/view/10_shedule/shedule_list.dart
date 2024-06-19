import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_main_page.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        sheduledetailfunction4(
          context,
        );
      },
      child: Observer(builder: (_) {
        return WWResponseHandler(
          data: vmSchedule.sheduleweekResponse,
          isEmpty: vmSchedule.sheduleweekResponse.data?.isEmpty ?? true,
          onTap: () => vmSchedule.shedulecardviewmodelweekfunction(),
          child: Container(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 2,
                ),
                separatorBuilder: (context, index) => sized0hx10,
                shrinkWrap: true,
                itemCount: vmSchedule.sheduleweekResponse.data?.length ?? 0,
                itemBuilder: (BuildContext context, int i) {
                  return SingleChildScrollView(
                    child: GestureDetector(
                      onTap: () {
                        sheduledetailfunction(
                            context,
                            vmSchedule.sheduleweekResponse.data?[i].id ?? '',
                            i);
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
                                  Text(
                                    vmSchedule.sheduleweekResponse.data?[i]
                                            .client?.clientName ??
                                        '',
                                    style: TextStyle(fontSize: 11.w),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.w),
                                    child: Text(
                                      'job ${vmSchedule.sheduleweekResponse.data?[i].job ?? ''}',
                                    ),
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
                                        "${convertTimeTo12HourFormat(vmSchedule.sheduleweekResponse.data?[i].startTime ?? "")}-${convertTimeTo12HourFormat(vmSchedule.sheduleweekResponse.data?[i].endTime ?? "")}",
                                      ),
                                      Text(
                                        "${DateFormat('dd-MM-yyyy').format(
                                          vmSchedule.shedulecardResponse
                                              .data![i].startDate!,
                                        )}-${DateFormat('dd-MM-yyyy').format(vmSchedule.shedulecardResponse.data![i].endDate!)}",
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 25.w,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.w),
                                        border: Border.all(color: Colors.grey)),
                                    child: Center(
                                      child: Text(
                                          "${vmSchedule.sheduleweekResponse.data?[i].status}"),
                                    ),
                                  )
                                  // ElevatedButton(
                                  //   onPressed: () {
                                  //     sheduledetailfunction(
                                  //         context,
                                  //         vmSchedule.sheduleweekResponse
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
                              Container(
                                decoration: BoxDecoration(
                                    color: Appthemes.cPrimary,
                                    borderRadius: BorderRadius.circular(10.h)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.w, right: 8.w),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Drivers',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.h),
                                          ),
                                          Text(
                                            'Vehicle assigned',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.h),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.white,
                                        thickness: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Observer(builder: (_) {
                                            return Text(
                                              vmSchedule
                                                      .shedulecardResponse
                                                      .data?[i]
                                                      .drivers?[0]
                                                      .name ??
                                                  '',
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            );
                                          }),
                                          const Divider(
                                            color: Colors.black,
                                          ),
                                          Text(
                                            vmSchedule
                                                    .shedulecardResponse
                                                    .data?[i]
                                                    .drivers?[0]
                                                    .registration ??
                                                '',
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              sized0hx05,
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        );
      }),
    );
  }
}

String convertTimeTo12HourFormat(String time) {
  DateFormat inputFormat = DateFormat("HH:mm:ss");
  DateFormat outputFormat = DateFormat("hh:mm a");

  DateTime parsedTime = inputFormat.parse(time);
  String formattedTime = outputFormat.format(parsedTime);

  return formattedTime;
}
