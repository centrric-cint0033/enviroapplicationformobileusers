import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class JobListTab extends StatelessWidget {
  const JobListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
            body: Column(children: [
          WWSearchField(controller: TextEditingController(), searchTap: () {}),
          sized0hx10,
          Observer(builder: (_) {
            return Expanded(
                child: WWResponseHandler(
                    data: vmSales.joblistResponse,
                    isEmpty: vmSales.joblistResponse.data?.isEmpty ?? true,
                    onTap: () => vmSales.saleJobListApi(),
                    child: const SalesJobListWidget()));
          }),
        ])));
  }
}

class SalesJobListWidget extends StatelessWidget {
  const SalesJobListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: vmSales.joblistResponse.data?.length ?? 0,
      separatorBuilder: (BuildContext context, int index) => sized0hx10,
      itemBuilder: (context, index) {
        var data = vmSales.joblistResponse.data?[index];
        return listData(data);
      },
    );
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      [
        expandedRowShowText('Date', ': ${data?.date ?? ""}'),
        gapField,
        expandedRowShowText('clientName', ': ${data?.clientName ?? ""}'),
        gapField,
        expandedRowShowText('Quoted By', ': ${data?.quotedBy ?? ""}'),
        gapField,
        expandedRowShowText('Amount', ': ${data?.quotedBy ?? ""}'),
        gapField,
        expandedRowShowText('Status', ': ${data?.status ?? ""}'),
      ],
    );
  }
}
