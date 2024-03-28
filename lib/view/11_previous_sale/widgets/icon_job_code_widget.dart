import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilis/constant.dart';
import '../../10_site/widgets/icon_widget.dart';
import '../../../model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';

class IconJobCodeWidget extends StatelessWidget {
  const IconJobCodeWidget({super.key, required this.data});

  final PreviousSaleResModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconWidget(length: 70.h),
        sized0hx05,
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Job code :',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 9.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              TextSpan(
                text: data.jobCardCode ?? "",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 9.sp,
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
