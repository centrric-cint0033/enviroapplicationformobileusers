import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_tab_screens/02_master_car_tab.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_tab_screens/01_master_truck_tab.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_tab_screens/03_semi_Trailor_tab.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';

import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            title: cmnTitleWidget('Vehicles'),
            actions: [notificationButton(context)]),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              commonTabbar(
                  value1: 'Master truck',
                  value2: 'Master Car',
                  value3: 'Semi Trailers'),
              gapFieldVeh,
              wwDropDown(),
              gapFieldVeh,
              wwTabs(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded wwTabs() {
    return const Expanded(
      child: TabBarView(
        children: <Widget>[MasterTruckTab(), MasterCarTab(), SemiTrailersTab()],
      ),
    );
  }

  Observer wwDropDown() {
    return Observer(builder: (_) {
      return SizedBox(
        width: double.infinity,
        child: WWdropDown(
            newValue: vmVehicle.selectedVehicle ?? 'Vehicle list',
            dropDownTap: () {
              vmVehicle.masterTruckApi(
                statusType: vmVehicle.vehicleStatusType,
                statusString: vmVehicle.selectedVehicle,
              );
            }),
      );
    });
  }
}
