import 'package:flutter/material.dart';

Padding CommonTabbar() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
      width: 390,
      height: 52,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: Colors.white,
        ),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        indicatorColor: Colors.black,
        tabs: const [
          Tab(text: 'Today'),
          Tab(text: 'week'),
          Tab(text: 'calender'),
        ],
      ),
    ),
  );
}
