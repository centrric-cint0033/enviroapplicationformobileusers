import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/widgets/cm_title.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';

import '../../Routepage/routespage.dart';
import '../../view_model/11_job_card/job_card_view_model.dart';

@RoutePage()
class SalesDetailPage extends StatelessWidget {
  final SalesModel? data;
  const SalesDetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Sales'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Center(
          child: Column(children: [
            Align(
              alignment: Alignment.centerRight,
              child: CmButton(
                onPressed: () => navigateToJobCardView(
                  context,
                  data?.quote?.toString() ?? "",
                ),
                text: 'Job Card',
                color: Appthemes.cPrimary,
                width: ScreenUtil().screenWidth / 3,
              ),
            ),
            gapField,
            listData(data),
            gapField,
            cmTitle('Quote Attachments and Quote Files'),
            gapField,
            Align(
              alignment: Alignment.centerLeft,
              child: CmButton(
                text: data?.status,
                color: Appthemes.cLightGreen,
                width: ScreenUtil().screenWidth / 2,
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      [
        expandedRowShowText('client Name', data?.clientName ?? ""),
        expandedRowShowText('client Type', data?.clientType ?? ""),
        expandedRowShowText('Tab Type', data?.tabType ?? ""),
        expandedRowShowText('Amount', data?.amount ?? ""),
        expandedRowShowText('Status', data?.status ?? ""),
        expandedRowShowText('Quoted By', data?.quotedBy ?? ""),
        expandedRowShowText('Waste Type', data?.wasteTypeStr ?? ""),
        expandedRowShowText('Frequency', data?.frequency ?? ""),
      ],
    );
  }
}

void navigateToJobCardView(BuildContext context, String id) {
  vmJobcard.getJobCard(id: id);
  context.router.pushNamed(RouteNames.rjobcardpage);
}
