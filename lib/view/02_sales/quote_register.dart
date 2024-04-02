// ignore_for_file: non_constant_identifier_names

import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class QuoteRegisterpage extends StatelessWidget {
  const QuoteRegisterpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(children: [
                  const SizedBox(height: 16.0),
                  Observer(builder: (_) {
                    return Expanded(
                      child: vmSales.quoteRegResponse.loading
                          ? wwCustomLoader()
                          : vmSales.quoteRegResponse.errors != null
                              ? Center(
                                  child: wwErrorData(
                                      onTap: () => vmSales.quoteRegisterApi(),
                                      mainFailure:
                                          vmSales.quoteRegResponse.errors),
                                )
                              : const QuoteReqisterListWidget(),
                    );
                  })
                ]))));
  }
}

class QuoteReqisterListWidget extends StatelessWidget {
  const QuoteReqisterListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
