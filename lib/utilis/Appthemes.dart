import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Appthemes {
  static const lightTextColor = Color.fromARGB(255, 187, 30, 30);
  static const textfieldbcColor = Color(0XFFF5F5F5);
  static const textColor = Color(0XFFAAAAAA);
  static const bluecolor = Color(0XFF061933);
  static const primaryColor = Colors.blue;
  static const blackColor = Colors.black;

  static Color cLightGrey = Colors.grey[200]!;
  static const cPrimary = Color(0xff109AD1);
  static const cWhite = Color(0xFFFFFFFF);
  static const cLightGreen = Color(0xff3FC0B5);

  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    dividerColor: Colors.grey.shade200,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
    ),
    textTheme: TextTheme(
      //textfield hint style using default

      titleSmall: TextStyle(
        fontSize: 12.sp,
        color: primaryColor,
        fontFamily: 'Inter',
      ),

      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 12.sp,
        fontFamily: 'Inter',
      ),
      headlineMedium: TextStyle(
        color: Colors.black,
        fontSize: 18.sp,
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
