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
        List<PreviousSaleResModel> previousSale =
            vmPreviousSale.previousSaleResponse.data?.toList() ?? [];
        return RefreshIndicator(
          onRefresh: () async {
            return vmPreviousSale.getPreviousSales();
          },
          child: SizedBox(
            child: vmPreviousSale.previousSaleResponse.loading
                ? const Center(child: CupertinoActivityIndicator())
                : ListView.separated(
                    shrinkWrap: true,
                    itemCount: previousSale.length + 1,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => sized0hx05,
                    padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                    itemBuilder: (context, index) {
                      return index == previousSale.length
                          ? vmPreviousSale
                                  .previousSaleResponse.paginationLoading
                              ? const CupertinoActivityIndicator()
                              : const SizedBox.shrink()
                          : PreviousSalesTileWidget(
                              data: vmPreviousSale
                                  .previousSaleResponse.data![index],
                            );
                    },
                  ),
          ),
        );
      },
    );
  }
}
