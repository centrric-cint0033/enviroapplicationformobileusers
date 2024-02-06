import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/job_list/job_list_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cm_home_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/vehicle_tab_bar.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/week_page.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/master_car_page/master_car.dart';
import 'package:enviro_mobile_application/view/master_truck_page/master_truck_page.dart';
import 'package:enviro_mobile_application/view/vehicle_sales_list/vehicle_sales_list.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VehicleMainPage extends StatelessWidget {
  const VehicleMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          leading: cmn_leading_icon(),
          title: cmnTitleWidget('VEHICLE'),
          actions: cmn_action_icon,
        ),
        body: Column(
          children: [
            VehicleTabbar(),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  MasterTruckPage(),
                  MasterCarpage(),
                  VehicleSalesPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}