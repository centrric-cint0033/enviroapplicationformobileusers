import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SalesListPage extends StatelessWidget {
  const SalesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(children: [
                  // common_search_widget(),
                  const SizedBox(height: 16.0),
                  Observer(builder: (_) {
                    return Expanded(child: Observer(builder: (_) {
                      return vmSales.salespageResponse.loading
                          ? wwCustomLoader()
                          : vmSales.salespageResponse.errors != null
                              ? popupErrorData(context,
                                  mainFailure: vmSales.salespageResponse.errors)
                              : const SalesListWidget();
                    }));
                  })
                ]))));
  }
}

class SalesListWidget extends StatelessWidget {
  const SalesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmSales.salespageResponse.data?.length ?? 0,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 12.0);
        },
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
