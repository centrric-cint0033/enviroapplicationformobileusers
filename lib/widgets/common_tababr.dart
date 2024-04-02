import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Padding CommonTabbar() {
  return Padding(
    padding: const EdgeInsets.only(left: 25, right: 25),
    child: Container(
      height: 32.w,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.blue),
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
        tabs: const [
          Tab(text: 'Job List'),
          Tab(text: 'Quote Register'),
          Tab(text: 'Sales List'),
        ],
      ),
    ),
  );
}
