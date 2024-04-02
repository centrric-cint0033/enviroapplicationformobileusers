// ignore_for_file: non_constant_identifier_names

import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class QuoteRegisterTab extends StatelessWidget {
  const QuoteRegisterTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(body: Observer(builder: (_) {
          return WWResponseHandler(
              data: vmSales.quoteRegResponse,
              isEmpty: vmSales.quoteRegResponse.data?.isEmpty ?? true,
              onTap: () => vmSales.quoteRegisterApi(),
              child: const QuoteReqisterListWidget());
        })));
  }
}

class QuoteReqisterListWidget extends StatelessWidget {
  const QuoteReqisterListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: vmSales.quoteRegResponse.data?.length ?? 0,
      separatorBuilder: (BuildContext context, int index) => sized0hx10,
      itemBuilder: (context, index) {
        var data = vmSales.quoteRegResponse.data?[index];
        return listData(data);
      },
    );
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      [
        expandedRowShowText('ID', ": ${data?.id ?? ""}"),
        gapField,
        expandedRowShowText(
            'Won/Lose Status', ": ${data?.wonLoseStatus ?? ""}"),
        gapField,
        expandedRowShowText('Created By', ": ${data?.createdBy ?? ""}"),
        gapField,
        expandedRowShowText('Client Type', ": ${data?.clientType ?? ""}"),
        gapField,
        expandedRowShowText('Schedule ID', ": ${data?.scheduleId ?? ""}"),
        gapField,
        expandedRowShowText('Client Email', ": ${data?.clientEmail ?? ""}"),
      ],
    );
  }
}
