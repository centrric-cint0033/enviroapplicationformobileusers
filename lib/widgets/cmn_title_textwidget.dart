import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Row cmnTitleWidget(String? text) {
  return Row(
    children: [
      Text(
        text ?? 'Default Text',
        style: TextStyle(
          fontSize: 14.w,
          fontWeight: FontWeight.w400,
        ),
      ),
      const Spacer(),
    ],
  );
}
