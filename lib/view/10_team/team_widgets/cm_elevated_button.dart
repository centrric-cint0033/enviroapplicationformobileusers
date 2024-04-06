import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cmElevatedButton(Function onPressed, Color bgColor) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding:
              EdgeInsetsDirectional.symmetric(vertical: 7.w, horizontal: 50.w),
          backgroundColor: bgColor,
          shape: const ContinuousRectangleBorder()),
      onPressed: () {
        onPressed();
      },
      child: const Text(
        "Edit",
        style: TextStyle(color: Colors.white),
      ));
}
