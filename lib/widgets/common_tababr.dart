import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container commonTabbar({
  String? value1,
  String? value2,
  String? value3,
}) {
  return Container(
    height: 32.w,
    decoration: BoxDecoration(
      color: Appthemes.cPrimary,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: Appthemes.cPrimary),
      ),
      labelColor: Colors.black,
      unselectedLabelColor: Colors.white,
      indicatorColor: Colors.black,
      tabs: [
        if (value1 != null) Tab(text: value1),
        if (value2 != null) Tab(text: value2),
        if (value3 != null) Tab(text: value3),
      ],
    ),
  );
}
