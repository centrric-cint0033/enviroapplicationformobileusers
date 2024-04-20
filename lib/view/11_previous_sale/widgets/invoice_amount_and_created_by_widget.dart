import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'title_data_column_widget.dart';
import '../../../model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';

class InvoiceAmountAndCreatedByWidget extends StatelessWidget {
  final PreviousSaleResModel data;
  const InvoiceAmountAndCreatedByWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleDataColumnWidget(
          title: "Invoice Amount",
          child: Text(
            data.quoteInvoiceAmount ?? "0",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
        TitleDataColumnWidget(
          title: "Created by",
          child: Text(
            data.createdBy ?? "",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
