import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Appthemes {
  static const lightTextColor = Color.fromARGB(255, 187, 30, 30);
  static const textfieldbcColor = Color(0XFFF5F5F5);
  static const textColor = Color(0XFFAAAAAA);
  static const bluecolor = Color(0XFF061933);
  static Color cLightGrey = Colors.grey[200]!;
  static const cPrimary = Color(0xff109AD1);
  static const cLightGreen = Color(0xff3FC0B5);

  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      //textfield hint style using default
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 12.sp,
        fontFamily: 'Inter',
      ),
      headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w900),
      labelLarge: TextStyle(
        color: textColor,
        fontSize: 13,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
