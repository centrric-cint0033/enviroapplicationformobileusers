import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
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
        hintText: "Search by client",
        suffixTap: () {},
      ),
      sized0hx05,
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
      separatorBuilder: (BuildContext context, int index) => sized0hx05,
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
                        data: vmSales.joblistResponse.data?[index],
                        fromSale: true),
                  );
                },
                child: showListData(Column(
                  children: [
                    sized0hx10,
                    expandedRowShowText('Date',
                        vmSales.joblistResponse.data?[index].date ?? ""),
                    sized0hx03,
                    expandedRowShowText('Client Id',
                        "${vmSales.joblistResponse.data?[index].client ?? ""}"),
                    sized0hx03,
                    expandedRowShowText('Client Name',
                        vmSales.joblistResponse.data?[index].clientName ?? ""),
                    sized0hx03,
                    expandedRowShowText('Quoted By',
                        vmSales.joblistResponse.data?[index].quotedBy ?? ""),
                    sized0hx03,
                    expandedRowShowText('Amount',
                        vmSales.joblistResponse.data?[index].amount ?? ""),
                    sized0hx03,
                    expandedRowShowText('Status',
                        vmSales.joblistResponse.data?[index].status ?? ""),
                    sized0hx10,
                  ],
                )),
              );
      },
    );
  }
}
