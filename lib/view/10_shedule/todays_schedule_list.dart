import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_tab_screens/waste_tab_screen.dart';
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
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: vmJobcard.shedulecardResponse.data?.length ?? 0,
        itemBuilder: (BuildContext context, int i) {
          return Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.blue, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: CircleAvatar(
                            radius: 14,
                            child: vmJobcard.shedulecardResponse.data?[i].client
                                        ?.dp !=
                                    null
                                ? Image.network(
                                    "${vmJobcard.shedulecardResponse.data![i].client?.dp}",
                                    fit: BoxFit.cover,
                                  )
                                : Container(),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Observer(builder: (_) {
                        return Text(
                          vmJobcard.shedulecardResponse.data?[i].salesPerson
                                  ?.toString() ??
                              '',
                        );
                      }),
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            nextjobfnction(context);
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.blue,
                          ),
                          child: const Text(
                            'Next job',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => openMap(
                              vmJobcard.shedulecardResponse.data?[i].client
                                      ?.locationLatitude ??
                                  "",
                              vmJobcard.shedulecardResponse.data?[i].client
                                      ?.locationLogitude ??
                                  ""),
                          child: Image.asset(
                            'assets/images/googlemap.jpg',
                            width: 60.0,
                            height: 60.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      expandedRowShowText2(
                          "Day",
                          DateFormat.yMMMMd().format(vmJobcard
                              .shedulecardResponse.data![i].startDate!)),
                      expandedRowShowText2(
                        "Tme",
                        vmJobcard.shedulecardResponse.data?[i].startTime ?? '',
                      ),
                      expandedRowShowText2(
                        "Type",
                        vmJobcard.shedulecardResponse.data?[i].wasteTypeStr ??
                            '',
                      ),
                      expandedRowShowText2(
                        "Company",
                        vmJobcard.shedulecardResponse.data?[i].client
                                ?.clientName ??
                            '',
                      ),
                      (vmJobcard.shedulecardResponse.data != null &&
                              vmJobcard.shedulecardResponse.data?[i].status !=
                                  null)
                          ? expandedRowShowText2("Status", "finished Job")
                          : Container()
                    ],
                  ),
                ),
                sized0hx20,
                Expanded(
                  child: Card(
                    color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Drivers and vehicles',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: 94.h,
                          child: Observer(builder: (_) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: (vmJobcard.shedulecardResponse.data?[i]
                                      .drivers?.length ??
                                  0),
                              itemBuilder:
                                  (BuildContext context, int driverIndex) {
                                return Card(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Observer(builder: (_) {
                                          return Row(
                                            children: [
                                              const SizedBox(width: 8),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, right: 8),
                                                child: CircleAvatar(
                                                  radius: 14,
                                                  child: vmJobcard
                                                              .shedulecardResponse
                                                              .data?[i]
                                                              .drivers?[
                                                                  driverIndex]
                                                              .dp !=
                                                          null
                                                      ? Image.network(
                                                          vmJobcard
                                                              .shedulecardResponse
                                                              .data![i]
                                                              .drivers![
                                                                  driverIndex]
                                                              .dp!,
                                                          fit: BoxFit.cover,
                                                        )
                                                      : Container(),
                                                ),
                                              ),
                                              Text(
                                                vmJobcard
                                                        .shedulecardResponse
                                                        .data?[i]
                                                        .drivers?[driverIndex]
                                                        .name ??
                                                    '',
                                                style: const TextStyle(
                                                    fontSize: 15),
                                              ),
                                            ],
                                          );
                                        }),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 43.0),
                                          child: Text(
                                            vmJobcard
                                                    .shedulecardResponse
                                                    .data?[i]
                                                    .drivers?[driverIndex]
                                                    .registration ??
                                                '',
                                            style:
                                                const TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
