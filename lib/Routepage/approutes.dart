import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';

import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/calender_page.dart';
import 'package:enviro_mobile_application/view/notification_detail_page/notifcation_detail_page.dart';
import 'package:enviro_mobile_application/view/oh&s_detail_page/oh&s_detail_page.dart';

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
        AutoRoute(page: SalesMainRoute.page, path: RouteNames.salesmainpage),
        AutoRoute(page: OhsRoute.page, path: RouteNames.ohsPage),
        AutoRoute(page: IntranetRoute.page, path: RouteNames.intranetpage),
        AutoRoute(page: CalendarRoute.page, path: RouteNames.calenderpage),
        AutoRoute(
            page: VehicleMainRoute.page, path: RouteNames.vehiclemainpage),
        AutoRoute(
            page: NewsRouteInsideRoute.page,
            path: RouteNames.newsfolderinsidepage),
        AutoRoute(page: OhsDetailRoute.page, path: RouteNames.ohsdetailpage),
        AutoRoute(
            page: NotificationDetailRoute.page,
            path: RouteNames.notificationdetailpage),
      ];
}
