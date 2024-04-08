import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Padding commonTabbar(
  String value1,
  String value2,
  String value3,
) {
  return Padding(
    padding: EdgeInsets.only(left: 15.w, right: 15.w),
    child: Container(
      height: 32.w,
      decoration: BoxDecoration(
        color: Appthemes.cPrimary,
        border: Border.all(color: Appthemes.cPrimary),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        indicatorColor: Colors.black,
        tabs: [
          Tab(text: value1),
          Tab(text: value2),
          Tab(text: value3),
        ],
      ),
    ),
  );
}
