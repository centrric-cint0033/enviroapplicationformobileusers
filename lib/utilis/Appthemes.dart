import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Appthemes {
  static const lightTextColor = Color.fromARGB(255, 187, 30, 30);
  static const textfieldbcColor = Color(0XFFF5F5F5);
  static const textColor = Color(0XFFAAAAAA);
  static const bluecolor = Color(0XFF061933);
  static const primaryColor = Colors.blue;

  static final ThemeData themeData = ThemeData(
    dividerColor: Colors.grey.shade200,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 13.sp,
        color: primaryColor,
        fontFamily: 'Inter',
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 18.sp,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        color: Colors.black,
        fontSize: 28.sp,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w900,
      ),
      labelLarge: TextStyle(
        color: textColor,
        fontSize: 13.sp,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
