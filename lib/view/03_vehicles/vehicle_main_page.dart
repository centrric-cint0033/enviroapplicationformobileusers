import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/03_vehicles/Semi_Trailor_list.dart';
import 'package:enviro_mobile_application/view/03_vehicles/master_car_page.dart';
import 'package:enviro_mobile_application/view/03_vehicles/master_truck_page.dart';

import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';

import 'package:enviro_mobile_application/widgets/vehicle_tab_bar.dart';

import 'package:enviro_mobile_application/widgets/cmappbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          leading: const cmn_leading_icon(),
          title: cmnTitleWidget('VEHICLE'),
          actions: cmn_action_icon,
        ),
        body: const Column(
          children: [
            VehicleTabbar(),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  MasterTruckPage(),
                  MasterCarpage(),
                  SemiTrailorPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}