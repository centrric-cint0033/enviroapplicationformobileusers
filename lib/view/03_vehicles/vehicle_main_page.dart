import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
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
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        vmVehicle
          ..masterTruckPagination()
          ..masterCarPagination()
          ..semiTrailorPagination();
      },
    );
    tabsApis(int i) {
      vmVehicle.vehicleTabIndex = i;
      switch (i) {
        case 0:
          VehicleType.truck;
          vmVehicle.masterTruckApi();
          break;
        case 1:
          VehicleType.car;
          vmVehicle.masterCarApi();
          break;
        case 2:
          VehicleType.semiTrailer;
          vmVehicle.semiTrailorApi();
        default:
      }
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: cmnDrawer(context),
        appBar: AppBar(
            title: cmnTitleWidget('Vehicles'),
            actions: [notificationButton(context)]),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              WWcommonTabBar(
                value1: 'Master-Trucks',
                value2: 'Master-Cars',
                value3: 'Semi Trailers/Others',
                onTap: tabsApis,
              ),
              gapFieldVeh,
              wwDropDown(context),
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

  Observer wwDropDown(BuildContext context) {
    return Observer(builder: (_) {
      return SizedBox(
        width: double.infinity,
        child: WWdropDown(
            newValue: vmVehicle.selectedVehicle,
            dropDownTap: () {
              switch (vmVehicle.vehicleTabIndex) {
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
            }),
      );
    });
  }
}
