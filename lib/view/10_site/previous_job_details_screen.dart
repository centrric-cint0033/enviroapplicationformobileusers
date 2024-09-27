import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_list.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/img_vdo_comments_sign_widget.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/prime_vehicle_driver_jobstatus_flowchart.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/quote_comment_card_widget.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../widgets/cmn_title_textwidget.dart';
import '../02_sales/sales_widgets.dart/quote_files_list_widget_in_sales.dart';
import '../02_sales/sales_widgets.dart/sales_widget.dart';

@RoutePage()
class PreviousJobetailPage extends StatelessWidget {
  final PreviousSaleResModel data;
  PreviousJobetailPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Job Details'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: Observer(builder: (context) {
          final res = vmSite.jobCardResponse;
          JobCardModels? jobCardData = res.data;
          return res.loading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: [
                      Container(
                        child: buildCardDataOrder(
                          [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Quote #${data.jobCardKeys?.id}",
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                                CmButton(
                                  text: jobCardData?.data?.quote?.clientType,
                                  buttonTextStyle: TextStyle(
                                      fontSize: 10.sp, color: Colors.black),
                                  color: Colors.white,
                                  borderColor: Colors.grey,
                                )
                              ],
                            ),
                            expandedRowShowText(
                                "Client", data.clientId?.toString() ?? ""),
                            expandedRowShowText(
                                "Client Name", data.clientName ?? ""),
                            expandedRowShowText("Invoice Amount",
                                data.quoteInvoiceAmount ?? ""),
                            expandedRowShowText(
                                "Waste Type", data.wasteTypeStr ?? ""),
                            expandedRowShowText(
                                "Frequency Weeks", data.frequency ?? ""),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(6.w)),
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      sized0hx05,
                                      Text(
                                        "Quote Sent By",
                                        style: TextStyle(fontSize: 10.sp),
                                      ),
                                      sized0hx03,
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 40.w,
                                            width: 40.w,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade700,
                                                  shape: BoxShape.circle),
                                              child: dpImage(data.dp ?? ""),
                                            ),
                                          ),
                                          sized0wx10,
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                jobCardData?.data?.quote
                                                        ?.createdBy?.name ??
                                                    "",
                                                style:
                                                    TextStyle(fontSize: 11.sp),
                                              ),
                                              Text(
                                                jobCardData?.data?.quote
                                                        ?.createdBy?.userType ??
                                                    "",
                                                style:
                                                    TextStyle(fontSize: 9.sp),
                                              ),
                                              Text(
                                                jobCardData
                                                        ?.data
                                                        ?.quote
                                                        ?.createdBy
                                                        ?.contactNumber ??
                                                    "",
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      sized0hx05,
                                    ]),
                              ),
                            ),
                            QuoteCommentCardWidget(
                              data: data,
                            ),
                            sized0hx05,
                            showBlackText("Quote Attachments & Quote Files",
                                fontWeight: FontWeight.bold, fontSize: 12.sp),
                            CmButton(
                              text: "Quote Document",
                              color: Colors.grey.shade500,
                              buttonTextStyle: TextStyle(
                                  fontSize: 10.sp, color: Colors.white),
                              onPressed: () {
                                launchUrlFile(
                                  jobCardData?.data?.quote?.quoteFile ?? "",
                                  jobCardData?.data?.quote?.quoteFile
                                          ?.split(".")
                                          .first ??
                                      "",
                                  context,
                                );
                              },
                            ),
                            expandedRowShowText("Created On",
                                jobCardData?.data?.quote?.createdOn ?? ""),
                            expandedRowShowText("Client Response",
                                jobCardData?.data?.quote?.clientName ?? ""),
                            CmButton(
                              text: "Job Card",
                              color: Colors.white,
                              borderColor: Colors.grey,
                              buttonTextStyle: TextStyle(
                                  fontSize: 10.sp, color: Colors.black),
                              onPressed: () async {
                                await vmSchedule.jobcardviewmodelfunction(
                                    quoteId:
                                        jobCardData?.data?.quote?.id?.toInt() ??
                                            0);
                                context.router
                                    .push(JobCardRoute(fromSale: true));
                              },
                            ),
                          ],
                        ),
                      ),
                      sized0hx10,
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(6.w)),
                        child: Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                sized0hx05,
                                Text(
                                  "Job #${jobCardData?.data?.job?.id}",
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                                expandedRowShowText("Created On",
                                    jobCardData?.data?.job?.createdOn ?? ""),
                                expandedRowShowText("Tab Type",
                                    jobCardData?.data?.job?.tabType ?? ""),
                                sized0hx05,
                                Container(
                                  width: double.infinity,
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: Center(
                                    child: Text(
                                      jobCardData?.data?.job?.scheduleStatus ==
                                              true
                                          ? "Scheduled"
                                          : "Not Scheduled",
                                      style: TextStyle(fontSize: 9.sp),
                                    ),
                                  ),
                                ),
                                sized0hx05,
                              ]),
                        ),
                      ),
                      sized0hx05,
                      if (jobCardData?.data?.schedule?.extractedWasteType !=
                              null &&
                          jobCardData?.data?.schedule?.extractedLitresOfWaste !=
                              null)
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Appthemes.cPrimary,
                              borderRadius: BorderRadius.circular(4.w)),
                          child: Padding(
                            padding: EdgeInsets.all(6.w),
                            child: Column(children: [
                              Text(
                                "Change in Type of Waste : ${jobCardData?.data?.schedule?.extractedWasteType ?? ""}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Change in Waste Litres : ${jobCardData?.data?.schedule?.extractedLitresOfWaste ?? ""}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ]),
                          ),
                        ),
                      sized0hx10,
                      if (jobCardData?.data?.schedule?.status != "")
                        Container(
                            child: buildCardDataOrder([
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Schedule #${jobCardData?.data?.schedule?.id}",
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              CmButton(
                                text: jobStatus(
                                    jobCardData?.data?.schedule?.status ?? ""),
                                buttonTextStyle: TextStyle(
                                    fontSize: 10.sp, color: Colors.black),
                                color: Colors.white,
                                borderColor: Colors.grey,
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(border: Border.all()),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 4.w, bottom: 4.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            showBlackText("Start Date"),
                                            showBlackText(
                                                "${jobCardData?.data?.schedule?.startDate ?? ""}")
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            showBlackText("Start Time"),
                                            showBlackText(
                                                "${jobCardData?.data?.schedule?.startTime ?? ""}")
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                              sized0hx03,
                              Text(
                                "to",
                                style: TextStyle(fontSize: 10.sp),
                              ),
                              sized0hx03,
                              Container(
                                decoration: BoxDecoration(border: Border.all()),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 4.w, bottom: 4.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            showBlackText("End Date"),
                                            showBlackText(
                                                "${jobCardData?.data?.schedule?.endDate ?? ""}")
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            showBlackText("End Time"),
                                            showBlackText(
                                                "${jobCardData?.data?.schedule?.endTime ?? ""}")
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                            ],
                          ),
                          showBlackText("Primary Vehicle Driver Job Status",
                              fontSize: 13.sp, fontWeight: FontWeight.w500),
                          FlowChartScreen(jobCardData: jobCardData,),
                          if (jobCardData?.data?.schedule?.vehicle != null) ...[
                            showBlackText("Primary Vehicle",
                                fontSize: 13.sp, fontWeight: FontWeight.w500),
                            CmPrimaryVehAndDriverContainer(
                                jobCardData?.data?.schedule?.vehicle?.image ??
                                    "",
                                "Vehicle info",
                                jobCardData?.data?.schedule?.vehicle
                                        ?.registration ??
                                    "",
                                jobCardData?.data?.schedule?.vehicle?.type ??
                                    "")
                          ],
                          sized0wx10,
                          if (jobCardData?.data?.schedule?.primeVehicleDriver
                                  ?.isNotEmpty ??
                              false) ...[
                            showBlackText("Primary Driver",
                                fontSize: 13.sp, fontWeight: FontWeight.w500),
                            SizedBox(
                              height: 60.w,
                              child: ListView.builder(
                                itemCount: jobCardData?.data?.schedule
                                    ?.primeVehicleDriver?.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.all(3.w),
                                    child: CmPrimaryVehAndDriverContainer(
                                        jobCardData
                                                ?.data
                                                ?.schedule
                                                ?.primeVehicleDriver?[index]
                                                .dp ??
                                            "",
                                        "Driver info",
                                        jobCardData
                                                ?.data
                                                ?.schedule
                                                ?.primeVehicleDriver?[index]
                                                .name ??
                                            "",
                                        jobCardData
                                                ?.data
                                                ?.schedule
                                                ?.primeVehicleDriver?[index]
                                                .designation ??
                                            ""),
                                  );
                                },
                              ),
                            ),
                          ],
                          sized0wx10,
                          if (jobCardData?.data?.schedule
                                  ?.additionalVehicleDriver?.isNotEmpty ??
                              false) ...[
                            showBlackText("Team Members",
                                fontSize: 13.sp, fontWeight: FontWeight.w500),
                            SizedBox(
                              height: 80.w,
                              child: ListView.builder(
                                itemCount: jobCardData?.data?.schedule
                                    ?.additionalVehicleDriver?.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.all(3.w),
                                    child: CmTeamMembersContainer(
                                        jobCardData
                                                ?.data
                                                ?.schedule
                                                ?.additionalVehicleDriver?[
                                                    index]
                                                .dp ??
                                            "",
                                        "Driver info",
                                        jobCardData
                                                ?.data
                                                ?.schedule
                                                ?.additionalVehicleDriver?[
                                                    index]
                                                .name ??
                                            "",
                                        jobCardData
                                                ?.data
                                                ?.schedule
                                                ?.additionalVehicleDriver?[
                                                    index]
                                                .registration ??
                                            "",
                                        jobCardData
                                                ?.data
                                                ?.schedule
                                                ?.primeVehicleDriver?[index]
                                                .designation ??
                                            ""),
                                  );
                                },
                              ),
                            ),
                          ]
                        ])),
                      ImgVdoCmntsSignWidget(jobCardData: jobCardData),
                      sized0hx30
                    ],
                  ),
                );
        }),
      ),
    );
  }

  String formatDateTime(String? dateTimeString) {
    if (dateTimeString == null) return '';
    DateTime parsedDate = DateTime.parse(dateTimeString);
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(parsedDate);
    return formattedDate;
  }

  Widget CmPrimaryVehAndDriverContainer(
      String img, String info, String name, String type) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.w),
          color: Colors.grey.shade300,
          border: Border.all(color: Colors.grey)),
      child: Row(children: [
        SizedBox(
          height: 40.w,
          width: 40.w,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.grey.shade700, shape: BoxShape.circle),
            child: dpImage(img),
          ),
        ),
        sized0wx05,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            showBlackText(info, fontSize: 10.sp),
            showBlackText(name, fontSize: 12.sp, fontWeight: FontWeight.w600),
            showBlackText(type, fontSize: 10.sp)
          ],
        )
      ]),
    );
  }

  Widget CmTeamMembersContainer(
      String img, String info, String name, String vehicle, String type) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.w),
          color: Colors.grey.shade300,
          border: Border.all(color: Colors.grey)),
      child: Row(children: [
        SizedBox(
          height: 40.w,
          width: 40.w,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.grey.shade700, shape: BoxShape.circle),
            child: dpImage(img),
          ),
        ),
        sized0wx05,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            showBlackText(info, fontSize: 10.sp),
            showBlackText(name, fontSize: 12.sp, fontWeight: FontWeight.w600),
            showBlackText(vehicle,
                fontSize: 12.sp, fontWeight: FontWeight.w600),
            showBlackText(type, fontSize: 10.sp)
          ],
        )
      ]),
    );
  }
}
