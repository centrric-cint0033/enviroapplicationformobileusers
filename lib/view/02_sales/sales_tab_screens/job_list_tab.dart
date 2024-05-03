import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class JobListTab extends StatelessWidget {
  const JobListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      WWTextField(
        controller: vmSales.salesJobListSearchCtr,
        onChanged: (v) => vmSales.onTextChanged(() => v.isEmpty
            ? vmSales.saleJobListApi()
            : vmSales.salesJobListSearchApi(v)),
        suffixTap: () {},
      ),
      gapField,
      Observer(builder: (_) {
        return Expanded(
            child: WWResponseHandler(
          data: vmSales.joblistResponse,
          isEmpty: vmSales.joblistResponse.data?.isEmpty ?? true,
          onTap: () => vmSales.salesJobListSearchCtr.text.isNotEmpty
              ? vmSales
                  .salesJobListSearchApi(vmSales.salesJobListSearchCtr.text)
              : vmSales.saleJobListApi(),
          onRefresh: () => vmSales.salesJobListSearchCtr.text.isNotEmpty
              ? vmSales
                  .salesJobListSearchApi(vmSales.salesJobListSearchCtr.text)
              : vmSales.saleJobListApi(),
          child: SalesJobListWidget(
            paginationLoading: vmSales.joblistResponse.paginationLoading,
          ),
        ));
      }),
    ]));
  }
}

class SalesJobListWidget extends StatelessWidget {
  final bool paginationLoading;
  const SalesJobListWidget({super.key, this.paginationLoading = false});

  @override
  Widget build(BuildContext context) {
    final length = vmSales.joblistResponse.data?.length ?? 0;
    return ListView.separated(
      itemCount: length + 1,
      controller: vmSales.joblistController,
      separatorBuilder: (BuildContext context, int index) => gapField,
      itemBuilder: (context, index) {
        return index == length
            ? paginationLoading
                ? const CupertinoActivityIndicator()
                : const SizedBox.shrink()
            : InkWell(
                onTap: () {
                  vmSales.salesJobDetailApi(
                      index, vmSales.joblistResponse.data?[index].id);
                  context.router.push(
                    SalesDetailRoute(
                        data: vmSales.joblistResponse.data?[index]),
                  );
                },
                child: listData(vmSales.joblistResponse.data?[index]),
              );
      },
    );
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      [
        expandedRowShowText('Date', data?.date ?? ""),
        expandedRowShowText('clientName', data?.clientName ?? ""),
        expandedRowShowText('Quoted By', data?.quotedBy ?? ""),
        expandedRowShowText('Amount', data?.amount ?? ""),
        expandedRowShowText('Status', data?.status ?? ""),
      ],
    );
  }
}
