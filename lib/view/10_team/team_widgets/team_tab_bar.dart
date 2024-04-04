import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamTabbar extends StatelessWidget {
  const TeamTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 32.h,
        decoration: BoxDecoration(
          color: Appthemes.cPrimary,
          border: Border.all(
            color: Appthemes.cPrimary,
          ),
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
        ));
  }
}
