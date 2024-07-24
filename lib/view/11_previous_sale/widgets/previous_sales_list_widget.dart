import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/widgets/empty_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilis/constant.dart';
import 'previous_sales_tile_widget.dart';
import '../../../view_model/11_previous_sale/previous_sale_view_model.dart';
import '../../../model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';

class PreviousSalesListWidget extends StatelessWidget {
  const PreviousSalesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final res = vmPreviousSale.previousSaleResponse;
        List<PreviousSaleResModel> previousSale = res.data?.toList() ?? [];
        return SizedBox(
            child: res.loading
                ? const Center(child: CircularProgressIndicator())
                : vmPreviousSale.previousSaleResponse.data?.isEmpty ?? true
                    ? SizedBox(height: 200.w, child: const EmptyDataWidget())
                    : ListView.separated(
                        shrinkWrap: true,
                        itemCount: previousSale.length + 1,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) => sized0hx05,
                        padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                        itemBuilder: (context, index) {
                          return index == previousSale.length
                              ? res.paginationLoading
                                  ? const CupertinoActivityIndicator()
                                  : const SizedBox.shrink()
                              : InkWell(
                                  onTap: () {
                                    context.router.push(PreviousJobetailRoute(
                                        data: previousSale[index]));
                                  },
                                  child: PreviousSalesTileWidget(
                                    data: previousSale[index],
                                  ),
                                );
                        },
                      ));
      },
    );
  }
}
