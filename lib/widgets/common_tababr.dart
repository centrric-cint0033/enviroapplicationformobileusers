import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WWcommonTabBar extends StatelessWidget {
  final TabController? controller;
  final String? value1;
  final String? value2;
  final String? value3;

  const WWcommonTabBar(
      {super.key, this.controller, this.value1, this.value2, this.value3});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Appthemes.cPrimary,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TabBar(
            controller: controller,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: Appthemes.cPrimary),
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.black,
            onTap: (i) {
              vmVehicle.vehicleTabIndex = i;
              switch (i) {
                case 0:
                  vmVehicle.masterTruckApi();
                  break;
                case 1:
                  vmVehicle.masterCarApi();
                  break;
                case 2:
                  vmVehicle.semiTrailorApi();
                default:
              }
            },
            tabs: [
              if (value1 != null) Tab(text: value1),
              if (value2 != null) Tab(text: value2),
              if (value3 != null) Tab(text: value3),
            ],
          ),
        ));
  }
}
