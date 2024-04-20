import 'dart:ui';

import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/material.dart';

Text showBlueText(String value, {FontWeight? fontWeight}) => Text(value,
    style: TextStyle(color: Appthemes.cPrimary, fontWeight: fontWeight));
