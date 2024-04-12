import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilis/constant.dart';
import 'previous_sales_list_widget.dart';
import '../../../view_model/10_site/site_view_model.dart';
import '../../../model/02_sales/waste_type_model/waste_type_model.dart';

class PreviouseSalesWidget extends StatelessWidget {
  const PreviouseSalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Previous Sales",
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
          ),
          sized0hx10,
          Observer(
            builder: (context) {
              List<WasteTypeModel> list =
                  vmSite.wasteTypesInSite.data?.toList() ?? [];
              return DropdownButton<WasteTypeModel>(
                isExpanded: true,
                menuMaxHeight: 250.h,
                value: vmSite.selectedWasteTypeModel,
                hint: Text(
                  "Select",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 12.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                items: list.map((WasteTypeModel value) {
                  return DropdownMenuItem<WasteTypeModel>(
                    value: value,
                    child: Text(
                      value.originalName ?? "",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  vmSite.selectedWasteTypeModel = value;
                },
              );
            },
          ),
          const PreviousSalesListWidget()
        ],
      ),
    );
  }
}
