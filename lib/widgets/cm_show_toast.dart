import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showToast(BuildContext context, {required String msg, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 600),
    content: Text(msg,style: TextStyle(fontSize: 10.w),),
    backgroundColor: color,
  ));
}
