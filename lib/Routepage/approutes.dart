import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';

import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/calender_page.dart';
import 'package:enviro_mobile_application/view/loginpage/intranet_page/intranet_page.dart';
import 'package:enviro_mobile_application/view/loginpage/oh&s_page/oh&s_page.dart';
import 'package:enviro_mobile_application/view/loginpage/vehiclepage/vehicle-page.dart';
import 'package:enviro_mobile_application/view/main_vehicle_page.dart/main_vehicle_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../view/loginpage/intranet_page/intranet_page.dart';
import '../view/loginpage/intranet_page/intranet_page.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: RouteNames.loginpage,
        ),
        AutoRoute(
          page: MainRoute.page,
          path: RouteNames.mainscreen,
        ),
        AutoRoute(page: SalesMainRoute.page, path: RouteNames.salesmainpage),
        AutoRoute(page: OhsRoute.page, path: RouteNames.OhsPage),
        AutoRoute(page: IntranetRoute.page, path: RouteNames.intranet_page),
        AutoRoute(page: CalendarRoute.page, path: RouteNames.calender_page),
        AutoRoute(
            page: VehicleMainRoute.page, path: RouteNames.vehicle_main_page),
      ];
}
