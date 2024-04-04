import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cmTitle(String text) {
  return SizedBox(
    width: double.infinity,
    child: ColoredBox(
      color: Appthemes.cLightGrey,
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: showText(text),
      ),
    ),
  );
}
