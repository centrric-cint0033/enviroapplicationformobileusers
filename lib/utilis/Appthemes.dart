import 'package:flutter/material.dart';

abstract class Appthemes {
  static const lightTextColor = Color.fromARGB(255, 187, 30, 30);
  static const textfieldbcColor = Color(0XFFF5F5F5);
  static const textColor = Color(0XFFAAAAAA);
  static const bluecolor = Color(0XFF061933);
  static final ThemeData themeData = ThemeData(
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
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
