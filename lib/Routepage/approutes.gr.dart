// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart'
    as _i24;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i23;
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart'
    as _i26;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i5;
import 'package:enviro_mobile_application/view/02_sales/sales_detail_page.dart'
    as _i12;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart'
    as _i13;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i20;
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i9;
import 'package:enviro_mobile_application/view/04_ohs/ohs_page.dart' as _i10;
import 'package:enviro_mobile_application/view/06_scheduling/scheduling_page.dart'
    as _i14;
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart'
    as _i3;
import 'package:enviro_mobile_application/view/07_intranet/intranet_page.dart'
    as _i4;
import 'package:enviro_mobile_application/view/08_notification_page/notification_page.dart'
    as _i8;
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart'
    as _i11;
import 'package:enviro_mobile_application/view/10_site/site_detail_screen.dart'
    as _i15;
import 'package:enviro_mobile_application/view/10_site/site_list_screen.dart'
    as _i16;
import 'package:enviro_mobile_application/view/10_team/add_team_page.dart'
    as _i1;
import 'package:enviro_mobile_application/view/10_team/team_edit_page.dart'
    as _i17;
import 'package:enviro_mobile_application/view/10_team/team_main_page.dart'
    as _i18;
import 'package:enviro_mobile_application/view/10_team/team_profile_screen.dart'
    as _i19;
import 'package:enviro_mobile_application/view/home_page.dart' as _i2;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i25;
import 'package:flutter/material.dart' as _i22;

abstract class $AppRouter extends _i21.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    AddTeamRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddTeamPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    IntranetInsideRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetInsideRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.IntranetInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.IntranetPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.LoginPage(key: args.key),
      );
    },
    NewsRouteInsideRoute.name: (routeData) {
      final args = routeData.argsAs<NewsRouteInsideRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.NewsPageInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NotificationPage(),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OhsPage(),
      );
    },
    ProfileCreationRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreationRouteArgs>(
          orElse: () => const ProfileCreationRouteArgs());
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ProfileCreationPage(key: args.key),
      );
    },
    SalesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SalesDetailRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SalesDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SalesRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SalesPage(),
      );
    },
    SchedulingRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SchedulingPage(),
      );
    },
    SiteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SiteDetailRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.SiteDetailScreen(
          key: args.key,
          index: args.index,
          type: args.type,
        ),
      );
    },
    SiteListRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SiteListScreen(),
      );
    },
    TeamEditRoute.name: (routeData) {
      final args = routeData.argsAs<TeamEditRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.TeamEditPage(
          key: args.key,
          employeeDetatils: args.employeeDetatils,
        ),
      );
    },
    TeamRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.TeamPage(),
      );
    },
    TeamProfileRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.TeamProfileScreen(),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTeamPage]
class AddTeamRoute extends _i21.PageRouteInfo<void> {
  const AddTeamRoute({List<_i21.PageRouteInfo>? children})
      : super(
          AddTeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTeamRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i21.PageRouteInfo<void> {
  const HomeRoute({List<_i21.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i3.IntranetInsidePage]
class IntranetInsideRoute extends _i21.PageRouteInfo<IntranetInsideRouteArgs> {
  IntranetInsideRoute({
    _i22.Key? key,
    required int parentId,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          IntranetInsideRoute.name,
          args: IntranetInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'IntranetInsideRoute';

  static const _i21.PageInfo<IntranetInsideRouteArgs> page =
      _i21.PageInfo<IntranetInsideRouteArgs>(name);
}

class IntranetInsideRouteArgs {
  const IntranetInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i22.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'IntranetInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i4.IntranetPage]
class IntranetRoute extends _i21.PageRouteInfo<void> {
  const IntranetRoute({List<_i21.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i21.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i22.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i21.PageInfo<LoginRouteArgs> page =
      _i21.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.NewsPageInsidePage]
class NewsRouteInsideRoute
    extends _i21.PageRouteInfo<NewsRouteInsideRouteArgs> {
  NewsRouteInsideRoute({
    _i22.Key? key,
    required int parentId,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          NewsRouteInsideRoute.name,
          args: NewsRouteInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRouteInsideRoute';

  static const _i21.PageInfo<NewsRouteInsideRouteArgs> page =
      _i21.PageInfo<NewsRouteInsideRouteArgs>(name);
}

class NewsRouteInsideRouteArgs {
  const NewsRouteInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i22.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'NewsRouteInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i7.NotificationDetailPage]
class NotificationDetailRoute
    extends _i21.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i22.Key? key,
    required _i23.OhsRespModel data,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i21.PageInfo<NotificationDetailRouteArgs> page =
      _i21.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i22.Key? key;

  final _i23.OhsRespModel data;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i8.NotificationPage]
class NotificationRoute extends _i21.PageRouteInfo<void> {
  const NotificationRoute({List<_i21.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OhsDetailPage]
class OhsDetailRoute extends _i21.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i22.Key? key,
    required _i23.OhsRespModel data,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i21.PageInfo<OhsDetailRouteArgs> page =
      _i21.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i22.Key? key;

  final _i23.OhsRespModel data;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i10.OhsPage]
class OhsRoute extends _i21.PageRouteInfo<void> {
  const OhsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          OhsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProfileCreationPage]
class ProfileCreationRoute
    extends _i21.PageRouteInfo<ProfileCreationRouteArgs> {
  ProfileCreationRoute({
    _i22.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          ProfileCreationRoute.name,
          args: ProfileCreationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileCreationRoute';

  static const _i21.PageInfo<ProfileCreationRouteArgs> page =
      _i21.PageInfo<ProfileCreationRouteArgs>(name);
}

class ProfileCreationRouteArgs {
  const ProfileCreationRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'ProfileCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.SalesDetailPage]
class SalesDetailRoute extends _i21.PageRouteInfo<SalesDetailRouteArgs> {
  SalesDetailRoute({
    _i22.Key? key,
    required _i24.SalesModel? data,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          SalesDetailRoute.name,
          args: SalesDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SalesDetailRoute';

  static const _i21.PageInfo<SalesDetailRouteArgs> page =
      _i21.PageInfo<SalesDetailRouteArgs>(name);
}

class SalesDetailRouteArgs {
  const SalesDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i22.Key? key;

  final _i24.SalesModel? data;

  @override
  String toString() {
    return 'SalesDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i13.SalesPage]
class SalesRoute extends _i21.PageRouteInfo<void> {
  const SalesRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SchedulingPage]
class SchedulingRoute extends _i21.PageRouteInfo<void> {
  const SchedulingRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SchedulingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SchedulingRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SiteDetailScreen]
class SiteDetailRoute extends _i21.PageRouteInfo<SiteDetailRouteArgs> {
  SiteDetailRoute({
    _i22.Key? key,
    required int index,
    required _i25.SiteType type,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          SiteDetailRoute.name,
          args: SiteDetailRouteArgs(
            key: key,
            index: index,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'SiteDetailRoute';

  static const _i21.PageInfo<SiteDetailRouteArgs> page =
      _i21.PageInfo<SiteDetailRouteArgs>(name);
}

class SiteDetailRouteArgs {
  const SiteDetailRouteArgs({
    this.key,
    required this.index,
    required this.type,
  });

  final _i22.Key? key;

  final int index;

  final _i25.SiteType type;

  @override
  String toString() {
    return 'SiteDetailRouteArgs{key: $key, index: $index, type: $type}';
  }
}

/// generated route for
/// [_i16.SiteListScreen]
class SiteListRoute extends _i21.PageRouteInfo<void> {
  const SiteListRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SiteListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SiteListRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i17.TeamEditPage]
class TeamEditRoute extends _i21.PageRouteInfo<TeamEditRouteArgs> {
  TeamEditRoute({
    _i22.Key? key,
    required _i26.TeamProfileEmployeeDetailsResModel employeeDetatils,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          TeamEditRoute.name,
          args: TeamEditRouteArgs(
            key: key,
            employeeDetatils: employeeDetatils,
          ),
          initialChildren: children,
        );

  static const String name = 'TeamEditRoute';

  static const _i21.PageInfo<TeamEditRouteArgs> page =
      _i21.PageInfo<TeamEditRouteArgs>(name);
}

class TeamEditRouteArgs {
  const TeamEditRouteArgs({
    this.key,
    required this.employeeDetatils,
  });

  final _i22.Key? key;

  final _i26.TeamProfileEmployeeDetailsResModel employeeDetatils;

  @override
  String toString() {
    return 'TeamEditRouteArgs{key: $key, employeeDetatils: $employeeDetatils}';
  }
}

/// generated route for
/// [_i18.TeamPage]
class TeamRoute extends _i21.PageRouteInfo<void> {
  const TeamRoute({List<_i21.PageRouteInfo>? children})
      : super(
          TeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i19.TeamProfileScreen]
class TeamProfileRoute extends _i21.PageRouteInfo<void> {
  const TeamProfileRoute({List<_i21.PageRouteInfo>? children})
      : super(
          TeamProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamProfileRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i20.VehiclePage]
class VehicleRoute extends _i21.PageRouteInfo<void> {
  const VehicleRoute({List<_i21.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}
