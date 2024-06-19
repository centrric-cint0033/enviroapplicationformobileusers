import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
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
        height: 210.w,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: vmSchedule.shedulecardResponse.data?.length ?? 0,
          itemBuilder: (BuildContext context, int i) {
            return SizedBox(
              height: 210.w,
              width: MediaQuery.of(context).size.width - 55.h,
              child: Card(
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
                          "${vmSchedule.shedulecardResponse.data?[i].salesPerson}",
                        ),
                        sized0wx20,
                        SizedBox(
                          height: 18.w,
                          width: 85.w,
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
                                    color: Colors.white, fontSize: 9.h),
                              )),
                        )
                      ],
                    ),
                    sized0hx10,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          expandedRowShowText2(
                            "Day",
                            DateFormat('dd-MM-yyyy').format(
                              vmSchedule
                                  .shedulecardResponse.data![i].startDate!,
                            ),
                          ),
                          expandedRowShowText2(
                            "Time",
                            vmSchedule.shedulecardResponse.data?[i].startTime ??
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
                            vmSchedule.shedulecardResponse.data?[i].client
                                    ?.clientName ??
                                '',
                          ),
                          (vmSchedule.shedulecardResponse.data != null &&
                                  vmSchedule.shedulecardResponse.data?[i]
                                          .status !=
                                      null)
                              ? expandedRowShowText2("Status",
                                  "${vmSchedule.shedulecardResponse.data?[i].status}")
                              : Container(),
                        ],
                      ),
                    ),
                    sized0hx10,
                    cmCard(context, vmSchedule.shedulecardResponse.data![i])
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
      height: 64.w,
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
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Container(
            height: 40.w,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.h)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  SizedBox(
                    height: 20.w,
                    width: 20.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade700, shape: BoxShape.circle),
                      child: dpImage("${schedule.drivers?[0].dp}"),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${schedule.drivers?[0].name}",
                          style: TextStyle(fontSize: 8.h),
                        ),
                        Text(
                          "${schedule.drivers?[0].registration}",
                          style: TextStyle(fontSize: 8.h),
                        )
                      ],
                    ),
                  )
                ]),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12.h)),
                  child: Text(
                    schedule.primaryVehicleDriver == true
                        ? "     Primary     "
                        : "",
                    style: TextStyle(fontSize: 8.h),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
