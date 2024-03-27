import 'package:flutter/material.dart';

class TeamTabbar extends StatelessWidget {
  const TeamTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Container(
          width: 390,
          height: 62,
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
              Tab(text: 'Current Employee'),
              Tab(text: 'Terminated Employees'),
            ],
          )),
    );
  }
}
