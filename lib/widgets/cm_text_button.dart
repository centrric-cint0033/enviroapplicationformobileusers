import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cmTextButton(
    {String? buttonText,
    IconData? icon,
    Color? bgColor,
    void Function()? onPressed,
    bool? loading}) {
  return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(bgColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.w),
          ))),
      onPressed: onPressed,
      child: Row(
        children: [
          if (icon != null)
            Icon(
              icon,
              color: Colors.white,
              size: 14.w,
            ),
          loading == true
              ? const CupertinoActivityIndicator(
                  color: Colors.white,
                )
              : Text(
                  buttonText ?? "",
                  style: TextStyle(fontSize: 8.sp, color: Appthemes.cWhite),
                )
        ],
      ));
}
