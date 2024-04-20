import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class QuoteRegisterTab extends StatelessWidget {
  const QuoteRegisterTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        WWSearchField(
          controller: vmSales.salesQuoteListSearchCtr,
          onChanged: (v) => vmSales.onTextChanged(() => v.isEmpty
              ? vmSales.quoteRegisterApi()
              : vmSales.salesQuoteListSearchApi(v)),
          searchTap: () {},
        ),
        gapField,
        Observer(builder: (_) {
          return Expanded(
            child: WWResponseHandler(
                data: vmSales.quoteRegResponse,
                isEmpty: vmSales.quoteRegResponse.data?.isEmpty ?? true,
                onTap: () => vmSales.quoteRegisterApi(),
                child: const QuoteReqisterListWidget()),
          );
        }),
      ],
    ));
  }
}

class QuoteReqisterListWidget extends StatelessWidget {
  const QuoteReqisterListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: vmSales.quoteRegResponse.data?.length ?? 0,
      separatorBuilder: (BuildContext context, int index) => gapField,
      itemBuilder: (context, index) {
        var data = vmSales.quoteRegResponse.data?[index];
        return InkWell(
            onTap: () {
              context.router.push(
                  SalesDetailRoute(data: vmSales.joblistResponse.data?[index]));
            },
            child: listData(data));
      },
    );
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      [
        expandedRowShowText('ID', "${data?.id ?? ""}"),
        expandedRowShowText('Won/Lose Status', data?.wonLoseStatus ?? ""),
        expandedRowShowText('Created By', "${data?.createdBy ?? ""}"),
        expandedRowShowText('Client Type', data?.clientType ?? ""),
        expandedRowShowText('Schedule ID', "${data?.scheduleId ?? ""}"),
        expandedRowShowText('Client Email', data?.clientEmail ?? ""),
      ],
    );
  }
}
