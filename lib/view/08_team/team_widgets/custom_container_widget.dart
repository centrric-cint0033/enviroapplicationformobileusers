import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customContainerWidget(Color color, String text) {
  return Container(
    height: 26.h,
    width: 48.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.h),
        border: Border.all(color: color)),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 10.h),
      ),
    ),
  );
}
