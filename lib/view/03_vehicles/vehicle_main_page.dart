import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/03_vehicles/Semi_Trailor_list.dart';
import 'package:enviro_mobile_application/view/03_vehicles/master_car_page.dart';
import 'package:enviro_mobile_application/view/03_vehicles/master_truck_page.dart';

import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';

import 'package:flutter/material.dart';

@RoutePage()
class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: CmnDrawer(context),
        appBar: AppBar(
            // leading: const cmn_leading_icon(),
            title: cmnTitleWidget('Vehicles'),
            actions: [notificationButton(context)]),
        body: Column(
          children: [
            commonTabbar('Master truck', 'Master Car', 'Semi_Trailors'),
            const Expanded(
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
