import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'sales_widgets.dart/quote_files_list_widget_in_sales.dart';

@RoutePage()
class SalesDetailPage extends StatelessWidget {
  final SalesModel? data;
  final bool? fromSale;
  final bool? fromSaleListTab;
  const SalesDetailPage({
    super.key,
    required this.data,
    this.fromSale = false,
    this.fromSaleListTab = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Sales'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Observer(builder: (context) {
            return fromSaleListTab == true
                ? Column(
                    children: [
                      sized0hx15,
                      vmSales.salesQuoteDetailsResponse.loading
                          ? SizedBox(
                              height:
                                  MediaQuery.of(context).size.height - 100.w,
                              child: const Center(
                                  child: CircularProgressIndicator()))
                          : listData2(data),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () async {
                            fromSale == true
                                ? await vmSchedule.jobcardviewmodelfunction(
                                    quoteId: data?.quote ?? 0)
                                : await vmSchedule.jobcardviewmodelfunction(
                                    quoteId: data?.id ?? 0);
                            context.router.pushNamed(RouteNames.rjobcardpage);
                          },
                          child: Container(
                            height: 26.h,
                            width: 68.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(15.w)),
                            child: Center(
                              child: vmSchedule.jobcardResponse.loading
                                  ? SizedBox(
                                      height: 12.w,
                                      width: 12.w,
                                      child: const CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ))
                                  : Text(
                                      "Job Card",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.normal),
                                    ),
                            ),
                          ),
                        ),
                      ),
                      sized0hx10,
                      listData(data),
                      sized0hx05,
                      const QuoteFilesListWidgetInSales()
                    ],
                  );
          }),
        ),
      ),
    );
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      [
        sized0hx10,
        expandedRowShowText('client Name', data?.clientName ?? ""),
        sized0hx03,
        expandedRowShowText('client Type', data?.clientType ?? ""),
        sized0hx03,
        expandedRowShowText('Tab Type', data?.tabType ?? ""),
        sized0hx03,
        expandedRowShowText('Amount', data?.amount ?? ""),
        sized0hx03,
        expandedRowShowText('Status', data?.status ?? ""),
        sized0hx03,
        expandedRowShowText('Quoted By', data?.quotedBy ?? ""),
        sized0hx03,
        expandedRowShowText('Waste Type', data?.wasteTypeStr ?? ""),
        sized0hx03,
        expandedRowShowText('Frequency', data?.frequency ?? ""),
        sized0hx10,
      ],
    );
  }

  Widget listData2(SalesModel? data) {
    return buildCardDataOrder(
      [
        sized0hx10,
        expandedRowShowText('Sale Person', data?.salePerson ?? ""),
        sized0hx03,
        expandedRowShowText(
            'Job Type', data?.jobType != "null" ? data?.jobType ?? "" : ""),
        sized0hx03,
        expandedRowShowText('Customer', data?.customer ?? ""),
        sized0hx03,
        expandedRowShowText('Company Name', data?.clientName ?? ""),
        sized0hx03,
        expandedRowShowText('Date', data?.date ?? ""),
        sized0hx03,
        expandedRowShowText('Amount', data?.amount ?? ""),
        sized0hx03,
        expandedRowShowText('Status', data?.status ?? ""),
        sized0hx03,
        expandedRowShowText('Paid Status', data?.paidStatus ?? ""),
        sized0hx10,
      ],
    );
  }
}

// void navigateToJobCardView(BuildContext context, String id) {
//   vmJobcard.getJobCard(id: id);
//   context.router.pushNamed(RouteNames.rjobcardpage);
// }
