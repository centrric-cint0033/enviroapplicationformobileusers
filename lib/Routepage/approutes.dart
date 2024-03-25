import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';

import 'package:enviro_mobile_application/Routepage/routespage.dart';

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
