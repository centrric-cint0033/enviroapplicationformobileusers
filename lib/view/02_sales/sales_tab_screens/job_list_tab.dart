import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobListTab extends StatelessWidget {
  const JobListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(children: [
        gapField,
        WWSearchField(
          controller: vmSales.salesJobListSearchCtr,
          onChanged: (v) => vmSales.onTextChanged(() => v.isEmpty
              ? vmSales.saleJobListApi()
              : vmSales.salesJobListSearchApi(v)),
          searchTap: () {},
          hintText: 'Search By Client',
        ),
        gapField,
        Observer(builder: (_) {
          return Expanded(
              child: WWResponseHandler(
                  data: vmSales.joblistResponse,
                  isEmpty: vmSales.joblistResponse.data?.isEmpty ?? true,
                  onTap: () => vmSales.salesJobListSearchCtr.text.isNotEmpty
                      ? vmSales.salesJobListSearchApi(
                          vmSales.salesJobListSearchCtr.text)
                      : vmSales.saleJobListApi(),
                  child: const SalesJobListWidget()));
        }),
      ]),
    ));
  }
}

class SalesJobListWidget extends StatelessWidget {
  const SalesJobListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmSales.joblistResponse.data?.length ?? 0,
        separatorBuilder: (BuildContext context, int index) => sized0hx10,
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              context.router.push(
                  SalesDetailRoute(data: vmSales.joblistResponse.data?[index]));
            },
            child: listData(vmSales.joblistResponse.data?[index])));
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
        expandedRowShowText('Amount', ': ${data?.amount ?? ""}'),
        gapField,
        expandedRowShowText('Status', ': ${data?.status ?? ""}'),
      ],
    );
  }
}
