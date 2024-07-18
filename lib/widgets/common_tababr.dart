import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WWcommonTabBar extends StatelessWidget {
  final TabController? controller;
  final String? value1;
  final String? value2;
  final String? value3;
  final String? value4;
  final String? value5;
  final Function(int)? onTap;

  const WWcommonTabBar(
      {super.key,
      this.controller,
      this.value1,
      this.value2,
      this.value3,
      this.onTap,
      this.value4,
      this.value5});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TabBar(
            controller: controller,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Appthemes.cPrimary,
              border: Border.all(color: Appthemes.cPrimary),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            onTap: onTap,
            tabs: [
              if (value1 != null) Tab(text: value1),
              if (value2 != null) Tab(text: value2),
              if (value3 != null) Tab(text: value3),
              if (value4 != null) Tab(text: value4),
              if (value5 != null) Tab(text: value5),
            ],
          ),
        ));
  }
}
