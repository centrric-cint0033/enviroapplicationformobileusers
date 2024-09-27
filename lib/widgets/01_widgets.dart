import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text showBlueText(String value,
        {FontWeight? fontWeight,
        int? maxLines,
        TextOverflow? overflow,
        double? fontSize}) =>
    Text(
      value,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
          color: Appthemes.cPrimary,
          fontWeight: fontWeight,
          fontSize: fontSize ?? 10.sp),
    );

Text showBlackText(String value,
        {int? maxLines,
        TextAlign? align,
        FontWeight? fontWeight,
        double? fontSize,
        TextOverflow? overflow}) =>
    Text(
      value,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
          color: Colors.black,
          fontWeight: fontWeight,
          fontSize: fontSize ?? 10.sp),
    );
