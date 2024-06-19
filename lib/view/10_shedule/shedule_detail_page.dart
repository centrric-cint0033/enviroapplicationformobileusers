import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SheduledetailPage extends StatelessWidget {
  const SheduledetailPage({
    super.key,
    required this.id,
    required this.i,
  });
  final int id;
  final int i;

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Schedule Details',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Appthemes.cPrimary,
                        ),
                      ),
                      Observer(builder: (_) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CmButton(
                                borderRadius: 34,
                                width: 130,
                                loading: vmSchedule.jobcardResponse.loading,
                                color: Colors.white,
                                text: 'Job Card',
                                buttonTextStyle:
                                    const TextStyle(color: Colors.black),
                                onPressed: () {
                                  jobCardFunction(context);
                                },
                                loadingColor: Appthemes.cPrimary),
                          ),
                        );
                      }),
                    ],
                  ),
                  expandedRowShowText(
                    "Client Name",
                    vmSchedule
                            .sheduleweekResponse.data?[i].client?.clientName ??
                        '',
                  ),
                  const SizedBox(height: 20),
                  expandedRowShowText(
                    "Client Type",
                    vmSchedule
                            .sheduleweekResponse.data?[i].client?.clientType ??
                        '',
                  ),
                  const SizedBox(height: 20),
                  expandedRowShowText(
                    "Client email",
                    vmSchedule
                            .sheduleweekResponse.data?[i].client?.clientEmail ??
                        '',
                  ),
                  const SizedBox(height: 20),
                  expandedRowShowText(
                    "Status",
                    vmSchedule.sheduleweekResponse.data?[i].status ?? '',
                  ),
                  const SizedBox(height: 20),
                  expandedRowShowText(
                    "Amount",
                    vmSchedule.sheduleweekResponse.data?[i].amount ?? '',
                  ),
                  const SizedBox(height: 20),
                  expandedRowShowText("CreatedBy",
                      vmSchedule.sheduleweekResponse.data?[i].createdBy ?? ''),
                  const SizedBox(height: 20),
                  expandedRowShowText(
                    "Waste Type",
                    vmSchedule.sheduleweekResponse.data?[i].wasteTypeStr ?? '',
                  ),
                  const SizedBox(height: 20),
                  expandedRowShowText(
                    "Frequency",
                    vmSchedule.sheduleweekResponse.data?[i].frequency ?? '',
                  ),
                  CmButton(
                    color: const Color(0xFF4CAF9E),
                    buttonTextStyle: const TextStyle(color: Colors.white),
                    onPressed: () {
                      updatevehiclepreinspection(context);
                    },
                    text: "Update Vehicle Pre-inspection",
                  ),
                  Text(
                    'Team Members',
                    style: TextStyle(
                      fontSize: 12.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                  )
                  // const SizedBox(
                  //   height: 50,
                  // ),
                  // Container(
                  //   color: const Color.fromARGB(255, 240, 235, 235),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(5.0),
                  //     child: Card(
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child: Observer(builder: (_) {
                  //           return Column(
                  //             children: [
                  //               const Align(
                  //                 alignment: Alignment.topLeft,
                  //                 child: Text(
                  //                   'Current Job Status',
                  //                   style: TextStyle(
                  //                     fontSize: 20,
                  //                     fontWeight: FontWeight.bold,
                  //                     color: Colors.blue,
                  //                   ),
                  //                 ),
                  //               ),
                  //               vmSchedule.sheduleweekResponse.data?[i]
                  //                           .departEnviroFacility !=
                  //                       null
                  //                   ? expandedRowShowText(
                  //                       "Departed enviro facility",

                  //                       // DateFormat.yMMMMd().format
                  //                       // (
                  //                       vmSchedule.sheduleweekResponse.data?[i]
                  //                               .departEnviroFacility ??
                  //                           '',
                  //                       // )
                  //                     )
                  //                   : const SizedBox(height: 20),
                  //               vmSchedule.sheduleweekResponse.data?[i]
                  //                           .startJob !=
                  //                       null
                  //                   ? expandedRowsShowingText(
                  //                       "job startedd",
                  //                       vmSchedule.sheduleweekResponse.data?[i]
                  //                               .startJob ??
                  //                           '',
                  //                     )
                  //                   : const SizedBox(height: 20),
                  //               vmSchedule.sheduleweekResponse.data?[i]
                  //                           .finishJob !=
                  //                       null
                  //                   ? expandedRowsShowingText(
                  //                       "job finished",
                  //                       vmSchedule.sheduleweekResponse.data?[i]
                  //                               .finishJob ??
                  //                           '',
                  //                     )
                  //                   : const SizedBox(height: 20),
                  //               vmSchedule.sheduleweekResponse.data?[i]
                  //                           .completed !=
                  //                       null
                  //                   ? expandedRowsShowingText(
                  //                       "job Completed",
                  //                       vmSchedule.sheduleweekResponse.data?[i]
                  //                               .completed ??
                  //                           '',
                  //                     )
                  //                   : const SizedBox(height: 20),
                  //               vmSchedule.sheduleweekResponse.data?[i]
                  //                           .arriveAtWasteDepot !=
                  //                       null
                  //                   ? expandedRowsShowingText(
                  //                       "Arrived at waste Depot",
                  //                       vmSchedule.sheduleweekResponse.data?[i]
                  //                               .arriveAtWasteDepot ??
                  //                           '',
                  //                     )
                  //                   : const SizedBox(height: 20),
                  //               vmSchedule.sheduleweekResponse.data?[i]
                  //                           .departWasteDepot !=
                  //                       null
                  //                   ? expandedRowsShowingText(
                  //                       "Departed from Wastedepot",
                  //                       vmSchedule.sheduleweekResponse.data?[i]
                  //                               .departWasteDepot ??
                  //                           '',
                  //                     )
                  //                   : const SizedBox(height: 20),
                  //             ],
                  //           );
                  //         }),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 5),
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
                  // const SizedBox(height: 5),
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
                  //   child: Observer(builder: (_) {
                  //     return CmButton(
                  //       color: const Color(0xFF4CAF9E),
                  //       buttonTextStyle: const TextStyle(color: Colors.white),
                  //       onPressed: () {
                  //         shedulesignaturefunction(context, id, i);
                  //         print('shedule$id');
                  //         // vmSchedule.shedulesignatureviewmodelfunction(
                  //         //     // id: id ?? 0, pickedFiles: vmSchedule.pickedFiles
                  //         //     );
                  //       },
                  //       text: "Signature",
                  //     );
                  //   }),
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
                  // const SizedBox(height: 40),
                  // const Text('Signature'),
                  // const SizedBox(height: 40),
                ],
              ),
            );
          },
        ));
  }

  void updatevehiclepreinspection(BuildContext context) {
    print('Updating vehicle preinspection');
    context.router.pushNamed(RouteNames.rupdatevehiclepreinspectionpage);
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
  print('calenderclicked');
  context.router.push(SheduleCommentRoute(
    id: id,
    i: i,
  ));
}

void shedulesignaturefunction(BuildContext context, id, i) {
  print('calenderclicked');
  context.router.push(SheduleSignatureRoute(id: id, i: i));
}
