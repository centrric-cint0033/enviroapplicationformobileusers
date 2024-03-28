import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'icon_job_code_widget.dart';
import '../../../utilis/constant.dart';
import 'invoice_amount_and_created_by_widget.dart';
import '../../../model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';

class PreviousSalesTileWidget extends StatelessWidget {
  final PreviousSaleResModel data;
  const PreviousSalesTileWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 12.sp,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.grey.shade100,
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconJobCodeWidget(data: data),
          sized0wx10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Name: ${data.clientName ?? ""}",
                  style: style,
                ),
                sized0hx05,
                Text(
                  "Job Type: ${data.jobCardType ?? ""}",
                  style: style,
                ),
                sized0hx10,
                InvoiceAmountAndCreatedByWidget(data: data)
              ],
            ),
          )
        ],
      ),
    );
  }
}
