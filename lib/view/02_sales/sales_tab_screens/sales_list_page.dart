import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SalesListPage extends StatelessWidget {
  const SalesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(body: Observer(builder: (_) {
          return WWResponseHandler(
              data: vmSales.salespageResponse,
              isEmpty: vmSales.salespageResponse.data?.isEmpty ?? true,
              onTap: () => vmSales.saleslistApi(),
              child: const SalesListWidget());
        })));
  }
}

class SalesListWidget extends StatelessWidget {
  const SalesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: vmSales.salespageResponse.data?.length ?? 0,
        separatorBuilder: (BuildContext context, int index) => sized0hx10,
        itemBuilder: (context, index) =>
            listData(vmSales.salespageResponse.data?[index]));
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      image: data?.profile,
      [
        expandedRowShowText('Total Quote Won', ": ${data?.won ?? ""}"),
        gapField,
        expandedRowShowText('Total Quote Lost:', ": ${data?.lost ?? ""}"),
        gapField,
        expandedRowShowText('Total Quote Pending', ": ${data?.pending ?? ""}"),
        gapField,
        expandedRowShowText('Total Quote Made', ": ${data?.total ?? ""}"),
      ],
    );
  }
}
