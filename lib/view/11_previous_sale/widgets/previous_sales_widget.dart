import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilis/constant.dart';
import 'previous_sales_list_widget.dart';

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
          DropdownButton<String>(
            isExpanded: true,
            hint: Text(
              "Select",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 12.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            items: <String>['All', 'DILUTION PIT', 'SEWER'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              );
            }).toList(),
            onChanged: (_) {},
          ),
          const PreviousSalesListWidget()
        ],
      ),
    );
  }
}
