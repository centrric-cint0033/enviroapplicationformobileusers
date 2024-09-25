import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/quote_comment_card_widget.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../widgets/cmn_title_textwidget.dart';
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
                            sized0hx05
                          ],
                        ),
                      ),
                      sized0hx10,
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
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
}
