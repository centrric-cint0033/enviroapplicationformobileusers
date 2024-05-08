import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/material.dart';

Text showBlueText(String value,
        {FontWeight? fontWeight, int? maxLines, TextOverflow? overflow}) =>
    Text(
      value,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(color: Appthemes.cPrimary, fontWeight: fontWeight),
    );

Text showBlackText(
  String value, {
  int? maxLines,
  TextAlign? align,
  FontWeight? fontWeight,
  TextOverflow? overflow,
}) =>
    Text(
      value,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(color: Colors.black, fontWeight: fontWeight),
    );
