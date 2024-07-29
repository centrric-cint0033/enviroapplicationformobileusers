import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showToast(BuildContext context, {required String msg, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 1300),
    content: Text(
      msg,
      style: TextStyle(fontSize: 10.sp),
    ),
    backgroundColor: color,
  ));
}
