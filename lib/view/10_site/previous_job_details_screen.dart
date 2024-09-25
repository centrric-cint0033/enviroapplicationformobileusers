import 'package:enviro_mobile_application/model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../widgets/cmn_title_textwidget.dart';
import '../02_sales/sales_widgets.dart/sales_widget.dart';

@RoutePage()
class PreviousJobetailPage extends StatelessWidget {
  final PreviousSaleResModel data;
  const PreviousJobetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Job Details'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: buildCardDataOrder(
            [
              sized0hx10,
              expandedRowShowText("Client Id", data.clientId?.toString() ?? ""),
              sized0hx10,
              expandedRowShowText("Client Name", data.clientName ?? ""),
              sized0hx10,
              expandedRowShowText("Job Code", "${data.id ?? ""}"),
              sized0hx10,
              expandedRowShowText(
                  "Job Type", data.jobType != "null" ? data.jobType ?? "" : ""),
              sized0hx10,
              expandedRowShowText("Created By", data.createdBy ?? ""),
              sized0hx10,
              expandedRowShowText("Type", data.tabType ?? ""),
              sized0hx10,
              expandedRowShowText("Amount", data.amount ?? ""),
              sized0hx10,
              expandedRowShowText("Quote No", data.quote?.toString() ?? ""),
              sized0hx10,
              expandedRowShowText("Created Date",
                  formatDateTime(data.createdDateTime?.toString() ?? "")),
              sized0hx10,
              expandedRowShowText("Paid Status", data.paidStatus ?? ""),
              sized0hx10,
              expandedRowShowText("Paid Amount", data.paidAmount ?? ""),
              sized0hx10,
            ],
          ),
        ),
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
