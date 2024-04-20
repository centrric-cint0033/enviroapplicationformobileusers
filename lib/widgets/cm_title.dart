import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cmTitle(String text, {FontWeight? fontWeight}) {
  return SizedBox(
    width: double.infinity,
    child: ColoredBox(
      color: Appthemes.cLightGrey,
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: showBlueText(text, fontWeight: fontWeight),
      ),
    ),
  );
}
