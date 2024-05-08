import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';

import 'sales_widgets.dart/sales_widget.dart';
import '../../widgets/ww_response_handler.dart';
import '../../widgets/cmn_title_textwidget.dart';

@RoutePage()
class SalesQuoteDetailListPage extends StatelessWidget {
  const SalesQuoteDetailListPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      vmSales.getSaleQuoteDetailListPagination();
    });
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Sales'),
      ),
      body: Observer(
        builder: (context) {
          List<SalesModel> list =
              vmSales.salesQuoteDetailsResponse.data?.toList() ?? [];
          int length = list.length;
          return WWResponseHandler(
            onTap: () => null,
            data: vmSales.salesQuoteDetailsResponse,
            isEmpty: vmSales.salesQuoteDetailsResponse.data?.isEmpty ?? true,
            onRefresh: () => vmSales.getSalesQuoteDetails(),
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => sized0hx03,
              controller: vmSales.saleQuoteDetailController,
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 40),
              itemCount:
                  (vmSales.salesQuoteDetailsResponse.data?.length ?? 0) + 1,
              itemBuilder: (context, index) {
                return index == length
                    ? vmSales.salesQuoteDetailsResponse.paginationLoading
                        ? const CupertinoActivityIndicator()
                        : const SizedBox.shrink()
                    : buildCardDataOrder(
                        [
                          expandedRowShowText(
                            'Sales Person',
                            list[index].salePerson ?? "",
                          ),
                          expandedRowShowText(
                            'Job Type',
                            list[index].jobType ?? "",
                          ),
                          expandedRowShowText(
                            'Customer',
                            list[index].customer ?? "",
                          ),
                          expandedRowShowText(
                            'Company Name',
                            list[index].companyName ?? "",
                          ),
                          expandedRowShowText(
                            'Date',
                            list[index].date ?? "",
                          ),
                          expandedRowShowText(
                            'Amount',
                            list[index].amount ?? "",
                          ),
                          expandedRowShowText(
                            'Status',
                            list[index].status ?? "",
                          ),
                          expandedRowShowText(
                            'Paid Status',
                            list[index].paidStatus ?? "",
                          ),
                        ],
                      );
              },
            ),
          );
        },
      ),
    );
  }
}
