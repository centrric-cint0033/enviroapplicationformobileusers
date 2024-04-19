import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cmElevatedButton(Function onPressed, Color bgColor, String buttonName,
    {bool? loading = false}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding:
              EdgeInsetsDirectional.symmetric(vertical: 7.w, horizontal: 50.w),
          backgroundColor: bgColor,
          shape: const ContinuousRectangleBorder()),
      onPressed: () {
        onPressed();
      },
      child: loading == false
          ? Text(
              buttonName,
              style: const TextStyle(color: Colors.white),
            )
          : const CupertinoActivityIndicator());
}
