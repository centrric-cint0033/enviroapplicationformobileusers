import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';

import 'package:enviro_mobile_application/Routepage/routespage.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: RouteNames.homePage,
          // guards: [AuthGuard()]
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: RouteNames.loginpage,
          initial: true,
        )
      ];
}
