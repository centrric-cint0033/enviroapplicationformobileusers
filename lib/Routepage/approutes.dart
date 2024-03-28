import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/guards.dart';

import 'package:enviro_mobile_application/Routepage/routespage.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, path: RouteNames.loginpage),
        AutoRoute(
          page: HomeRoute.page,
          path: RouteNames.rHomePage,
          initial: true,
          guards: [AuthGuard()],
        ),
        AutoRoute(page: SalesRoute.page, path: RouteNames.rSalesPpage),
        AutoRoute(page: OhsRoute.page, path: RouteNames.ohsPage),
        AutoRoute(page: IntranetRoute.page, path: RouteNames.intranetpage),
        AutoRoute(page: SchedulingRoute.page, path: RouteNames.rSchedulingPage),
        AutoRoute(page: VehicleRoute.page, path: RouteNames.vehiclemainpage),
        AutoRoute(
          page: NewsRouteInsideRoute.page,
          path: RouteNames.rNewsfolderinsidepage,
        ),
        AutoRoute(page: OhsDetailRoute.page, path: RouteNames.rOhsdetailpage),
        AutoRoute(
          page: NotificationDetailRoute.page,
          path: RouteNames.rNotificationdetailpage,
        ),
        AutoRoute(
          page: IntranetInsideRoute.page,
          path: RouteNames.rintranetinsidepage,
        ),
      ];
}
