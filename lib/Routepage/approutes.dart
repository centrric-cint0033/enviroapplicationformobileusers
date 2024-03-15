import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';

import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/06_scheduling/scheduling_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/calender_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

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
        AutoRoute(page: SalesRoute.page, path: RouteNames.rSalesPpage),
        AutoRoute(page: OhsRoute.page, path: RouteNames.ohsPage),
        AutoRoute(page: IntranetRoute.page, path: RouteNames.intranetpage),
        AutoRoute(page: SchedulingRoute.page, path: RouteNames.rSchedulingPage),
        AutoRoute(
            page: VehicleMainRoute.page, path: RouteNames.vehiclemainpage),
      ];
}
