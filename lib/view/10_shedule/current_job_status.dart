import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class CurrentJobStatusPage extends StatelessWidget {
  const CurrentJobStatusPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Observer(builder: (context) {
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
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
                          color: Colors.blue,
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
                                jobCardFunction(
                                    context,
                                    vmSchedule.shedulecardResponse.data?[index]
                                        .quoteId);
                              },
                              loadingColor: Colors.blue,
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                  Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          expandedRowShowText(
                            "Client Name",
                            vmSchedule.shedulecardResponse.data?[index].client
                                    ?.clientName ??
                                '',
                          ),
                          const SizedBox(height: 20),
                          expandedRowShowText(
                            "Client Type",
                            vmSchedule.shedulecardResponse.data?[index].client
                                    ?.clientType ??
                                '',
                          ),
                          const SizedBox(height: 20),
                          expandedRowShowText(
                            "Client email",
                            vmSchedule.shedulecardResponse.data?[index].client
                                    ?.clientEmail ??
                                '',
                          ),
                          const SizedBox(height: 20),
                          expandedRowShowText(
                            "Status",
                            vmSchedule
                                    .shedulecardResponse.data?[index].status ??
                                '',
                          ),
                          const SizedBox(height: 20),
                          expandedRowShowText(
                            "Amount",
                            vmSchedule
                                    .shedulecardResponse.data?[index].amount ??
                                '',
                          ),
                          const SizedBox(height: 20),
                          expandedRowShowText(
                              "CreatedBy",
                              vmSchedule.shedulecardResponse.data?[index]
                                      .createdBy ??
                                  ''),
                          const SizedBox(height: 20),
                          expandedRowShowText(
                            "Waste Type",
                            vmSchedule.shedulecardResponse.data?[index].client
                                    ?.deviceWaste ??
                                '',
                          ),
                          const SizedBox(height: 20),
                          expandedRowShowText(
                            "Frequency",
                            vmSchedule.shedulecardResponse.data?[index]
                                    .frequency ??
                                '',
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(height: 20),
                  Container(
                    width: 359,
                    child: CmButton(
                      color: const Color(0xFF4CAF9E),
                      buttonTextStyle: const TextStyle(color: Colors.white),
                      onPressed: () {
                        updatevehiclepreinspection(context);
                      },
                      text: "Update vehicle preinspection",
                    ),
                  ),
                ],
              );
            },
          );
        }),
      ),
    );
  }

  void updatevehiclepreinspection(BuildContext context) {
    print('Updating vehicle preinspection');
    context.router.pushNamed(RouteNames.rupdatevehiclepreinspectionpage);
  }
}

void jobCardFunction(BuildContext context, int? quoteId) async {
  await vmSchedule.jobcardviewmodelfunction(quoteId: quoteId ?? 0);
  print('Job card clicked');
  context.router.pushNamed(RouteNames.rjobcardpage);
}
