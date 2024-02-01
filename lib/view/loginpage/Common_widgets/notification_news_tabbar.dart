import 'package:flutter/material.dart';

TabBar notification_news_tabbar() {
  return TabBar(
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    ),
    labelColor: Colors.black,
    unselectedLabelColor: Colors.white,
    indicatorColor: Colors.black,
    tabs: const [
      Tab(text: 'news'),
      Tab(text: 'notifications'),
    ],
  );
}
