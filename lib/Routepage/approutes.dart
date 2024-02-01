import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';

import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/loginpage/oh&s_page/oh&s_page.dart';
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
        AutoRoute(page: SalesMainRoute.page, path: RouteNames.salesmainpage),
        AutoRoute(page: OhsRoute.page, path: RouteNames.OhsPage)
      ];
}
