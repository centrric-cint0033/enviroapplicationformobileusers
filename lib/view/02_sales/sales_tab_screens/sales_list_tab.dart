import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';

import '../../../widgets/cm_show_toast.dart';
import '../../../widgets/custom_drop_down_btn.dart';

class SalesListTab extends StatelessWidget {
  const SalesListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> years = List.generate(
      16,
      (index) => "${DateTime.now().year - 14 + index}",
    );
    return Scaffold(
      body: Observer(builder: (_) {
        return Column(
          children: [
            sized0hx05,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomDropdownButton(
                    items: years,
                    menuMaxHeight: 200.h,
                    onChanged: (value) {
                      vmSales.selectedYear = value;
                      vmSales.saleslistApi();
                    },
                    value: vmSales.selectedYear,
                  ),
                ),
                sized0wx10,
                Expanded(
                  child: CustomDropdownButton(
                    items: vmSales.months.keys.toList(),
                    menuMaxHeight: 200.h,
                    onChanged: (value) {
                      vmSales.selectedMonth = value;
                      vmSales.saleslistApi();
                    },
                    value: vmSales.selectedMonth,
                  ),
                ),
              ],
            ),
            sized0hx05,
            Expanded(
              child: WWResponseHandler(
                data: vmSales.salespageResponse,
                isEmpty: vmSales.salespageResponse.data?.isEmpty ?? true,
                onTap: () => vmSales.saleslistApi(),
                child: const SalesListWidget(),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class SalesListWidget extends StatelessWidget {
  const SalesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: vmSales.salespageResponse.data?.length ?? 0,
      separatorBuilder: (BuildContext context, int index) => sized0hx05,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () async {
            SalesModel? sale = vmSales.salespageResponse.data?[index];
            if ((sale?.total ?? 0) != 0) {
              vmSales.getSalesQuoteDetails(id: sale?.id?.toString() ?? "");
              context.router.push(SalesDetailRoute(
                  data: vmSales.salesQuoteDetailsResponse.data?[index],
                  index: index,
                  fromSaleListTab: true));
            } else {
              showToast(context, msg: "There is no quotes");
            }
          },
          child: listData(vmSales.salespageResponse.data?[index]),
        );
      },
    );
  }

  Widget listData(SalesModel? data) {
    return buildCardDataOrder(
      name: data?.name,
      image: data?.profile,
      [
        sized0hx05,
        expandedRowShowText1('Total Quote Won', "${data?.won ?? ""}"),
        sized0hx03,
        expandedRowShowText1('Total Quote Lost:', "${data?.lost ?? ""}"),
        sized0hx03,
        expandedRowShowText1('Total Quote Pending', "${data?.pending ?? ""}"),
        sized0hx03,
        expandedRowShowText1('Total Quote Made', "${data?.total ?? ""}"),
        sized0hx05,
      ],
    );
  }
}
