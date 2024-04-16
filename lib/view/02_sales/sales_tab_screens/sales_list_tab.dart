import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SalesListTab extends StatelessWidget {
  const SalesListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Observer(builder: (_) {
      return WWResponseHandler(
          data: vmSales.salespageResponse,
          isEmpty: vmSales.salespageResponse.data?.isEmpty ?? true,
          onTap: () => vmSales.saleslistApi(),
          child: const SalesListWidget());
    }));
  }
}

class SalesListWidget extends StatelessWidget {
  const SalesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: vmSales.salespageResponse.data?.length ?? 0,
        separatorBuilder: (BuildContext context, int index) => gapField,
        itemBuilder: (context, index) =>
            listData(vmSales.salespageResponse.data?[index]));
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      image: data?.profile,
      [
        expandedRowShowText1('Total Quote Won', "${data?.won ?? ""}"),
        expandedRowShowText1('Total Quote Lost:', "${data?.lost ?? ""}"),
        expandedRowShowText1('Total Quote Pending', "${data?.pending ?? ""}"),
        expandedRowShowText1('Total Quote Made', "${data?.total ?? ""}"),
      ],
    );
  }
}
