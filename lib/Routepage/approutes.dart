import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/guards.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';

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
        AutoRoute(page: OhsMainRoute.page, path: RouteNames.ohsPage),
        AutoRoute(page: IntranetMainRoute.page, path: RouteNames.intranetpage),
        AutoRoute(page: VehicleRoute.page, path: RouteNames.vehiclemainpage),
        AutoRoute(
            page: NewsOhsFolderInsideRoute.page,
            path: RouteNames.rNewsfolderinsidepage),
        AutoRoute(page: OhsDetailRoute.page, path: RouteNames.rOhsdetailpage),
        AutoRoute(
          page: NotificationDetailRoute.page,
          path: RouteNames.rNotificationdetailpage,
        ),
        AutoRoute(
          page: TeamRoute.page,
          path: RouteNames.teamPage,
        ),
        AutoRoute(
            page: TeamProfileRoute.page, path: RouteNames.teamProfileScreen),
        AutoRoute(page: TeamEditRoute.page, path: RouteNames.teamEditScreen),
        AutoRoute(page: AddTeamRoute.page, path: RouteNames.addTeamScreen),
        AutoRoute(
            page: EmployeeFilesRoute.page,
            path: RouteNames.employeeFilesScreen),
        AutoRoute(
            page: IntranetInsideRoute.page,
            path: RouteNames.rintranetinsidepage),
        AutoRoute(
            page: ProfileCreationRoute.page, path: RouteNames.rprofilepage),
        AutoRoute(
            page: NotificationRoute.page, path: RouteNames.rnotificationpage),
        AutoRoute(
            page: SalesDetailRoute.page, path: RouteNames.rSalesDetailPage),
        AutoRoute(page: ScheduleRoute.page, path: RouteNames.rshedulepage),
        AutoRoute(page: CalenderRoute.page, path: RouteNames.rcalenderpage),
        AutoRoute(
            page: SheduledetailRoute.page, path: RouteNames.rsheduledetailpage),
        AutoRoute(
            page: UpdateVehiclepreinspectionRoute.page,
            path: RouteNames.rupdatevehiclepreinspectionpage),
        AutoRoute(
            page: SheduledetailRoute2.page,
            path: RouteNames.rsheduledetail2page),
        AutoRoute(page: JobCardRoute.page, path: RouteNames.rjobcardpage),
        AutoRoute(
          page: SiteMainRoute.page,
          path: RouteNames.siteListPage,
        ),
        AutoRoute(
          page: SiteDetailRoute.page,
          path: RouteNames.siteDetailPage,
        ),
      ];
}
