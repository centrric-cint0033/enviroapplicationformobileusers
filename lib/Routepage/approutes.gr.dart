// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
<<<<<<< HEAD
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i14;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i3;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart' as _i8;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i11;
=======
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart'
    as _i18;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i17;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i4;
import 'package:enviro_mobile_application/view/02_sales/sales_detail_page.dart'
    as _i11;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart'
    as _i12;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i14;
>>>>>>> dev_jithin
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i8;
import 'package:enviro_mobile_application/view/04_ohs/ohs_page.dart' as _i9;
import 'package:enviro_mobile_application/view/06_scheduling/scheduling_page.dart'
    as _i13;
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart'
    as _i2;
<<<<<<< HEAD
import 'package:enviro_mobile_application/view/10_team/team_main_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/home_page.dart' as _i1;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
=======
import 'package:enviro_mobile_application/view/07_intranet/intranet_page.dart'
    as _i3;
import 'package:enviro_mobile_application/view/08_notification_page/notification_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart'
    as _i10;
import 'package:enviro_mobile_application/view/home_page.dart' as _i1;
import 'package:flutter/material.dart' as _i16;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
<<<<<<< HEAD
    IntranetRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
=======
    IntranetInsideRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetInsideRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: _i2.IntranetInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.IntranetPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: _i4.LoginPage(key: args.key),
      );
    },
    NewsRouteInsideRoute.name: (routeData) {
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      final args = routeData.argsAs<NewsRouteInsideRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: _i5.NewsPageInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: _i6.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationPage(),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: _i8.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsRoute.name: (routeData) {
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: const _i9.OhsPage(),
      );
    },
    ProfileCreationRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreationRouteArgs>(
          orElse: () => const ProfileCreationRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ProfileCreationPage(key: args.key),
      );
    },
    SalesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SalesDetailRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SalesDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SalesRoute.name: (routeData) {
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: const _i12.SalesPage(),
      );
    },
    SchedulingRoute.name: (routeData) {
<<<<<<< HEAD
      return _i12.AutoRoutePage<dynamic>(
=======
      return _i15.AutoRoutePage<dynamic>(
>>>>>>> dev_jithin
        routeData: routeData,
        child: const _i13.SchedulingPage(),
      );
    },
<<<<<<< HEAD
    TeamRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TeamPage(),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.VehiclePage(),
=======
    VehicleRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.VehiclePage(),
>>>>>>> dev_jithin
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
<<<<<<< HEAD
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
=======
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
>>>>>>> dev_jithin
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.IntranetPage]
class IntranetRoute extends _i12.PageRouteInfo<void> {
  const IntranetRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.IntranetInsidePage]
class IntranetInsideRoute extends _i15.PageRouteInfo<IntranetInsideRouteArgs> {
  IntranetInsideRoute({
    _i16.Key? key,
    required int parentId,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          IntranetInsideRoute.name,
          args: IntranetInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'IntranetInsideRoute';

  static const _i15.PageInfo<IntranetInsideRouteArgs> page =
      _i15.PageInfo<IntranetInsideRouteArgs>(name);
}

class IntranetInsideRouteArgs {
  const IntranetInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i16.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'IntranetInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i3.IntranetPage]
class IntranetRoute extends _i15.PageRouteInfo<void> {
  const IntranetRoute({List<_i15.PageRouteInfo>? children})
>>>>>>> dev_jithin
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
=======
  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
>>>>>>> dev_jithin
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<LoginRouteArgs> page =
      _i12.PageInfo<LoginRouteArgs>(name);
=======
  static const _i15.PageInfo<LoginRouteArgs> page =
      _i15.PageInfo<LoginRouteArgs>(name);
>>>>>>> dev_jithin
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

<<<<<<< HEAD
  final _i13.Key? key;
=======
  final _i16.Key? key;
>>>>>>> dev_jithin

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
<<<<<<< HEAD
/// [_i4.NewsPageInsidePage]
class NewsRouteInsideRoute extends _i12.PageRouteInfo<void> {
  const NewsRouteInsideRoute({List<_i12.PageRouteInfo>? children})
      : super(
=======
/// [_i5.NewsPageInsidePage]
class NewsRouteInsideRoute
    extends _i15.PageRouteInfo<NewsRouteInsideRouteArgs> {
  NewsRouteInsideRoute({
    _i16.Key? key,
    required int parentId,
    List<_i15.PageRouteInfo>? children,
  }) : super(
>>>>>>> dev_jithin
          NewsRouteInsideRoute.name,
          args: NewsRouteInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRouteInsideRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
=======
  static const _i15.PageInfo<NewsRouteInsideRouteArgs> page =
      _i15.PageInfo<NewsRouteInsideRouteArgs>(name);
}

class NewsRouteInsideRouteArgs {
  const NewsRouteInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i16.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'NewsRouteInsideRouteArgs{key: $key, parentId: $parentId}';
  }
>>>>>>> dev_jithin
}

/// generated route for
/// [_i6.NotificationDetailPage]
class NotificationDetailRoute
<<<<<<< HEAD
    extends _i12.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i13.Key? key,
    required _i14.OhsRespModel data,
    List<_i12.PageRouteInfo>? children,
=======
    extends _i15.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i16.Key? key,
    required _i17.OhsRespModel data,
    List<_i15.PageRouteInfo>? children,
>>>>>>> dev_jithin
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<NotificationDetailRouteArgs> page =
      _i12.PageInfo<NotificationDetailRouteArgs>(name);
=======
  static const _i15.PageInfo<NotificationDetailRouteArgs> page =
      _i15.PageInfo<NotificationDetailRouteArgs>(name);
>>>>>>> dev_jithin
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

<<<<<<< HEAD
  final _i13.Key? key;

  final _i14.OhsRespModel data;
=======
  final _i16.Key? key;

  final _i17.OhsRespModel data;
>>>>>>> dev_jithin

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
<<<<<<< HEAD
/// [_i6.OhsDetailPage]
class OhsDetailRoute extends _i12.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i13.Key? key,
    required _i14.OhsRespModel data,
    List<_i12.PageRouteInfo>? children,
=======
/// [_i7.NotificationPage]
class NotificationRoute extends _i15.PageRouteInfo<void> {
  const NotificationRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OhsDetailPage]
class OhsDetailRoute extends _i15.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i16.Key? key,
    required _i17.OhsRespModel data,
    List<_i15.PageRouteInfo>? children,
>>>>>>> dev_jithin
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<OhsDetailRouteArgs> page =
      _i12.PageInfo<OhsDetailRouteArgs>(name);
=======
  static const _i15.PageInfo<OhsDetailRouteArgs> page =
      _i15.PageInfo<OhsDetailRouteArgs>(name);
>>>>>>> dev_jithin
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

<<<<<<< HEAD
  final _i13.Key? key;

  final _i14.OhsRespModel data;
=======
  final _i16.Key? key;

  final _i17.OhsRespModel data;
>>>>>>> dev_jithin

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
<<<<<<< HEAD
/// [_i7.OhsPage]
class OhsRoute extends _i12.PageRouteInfo<void> {
  const OhsRoute({List<_i12.PageRouteInfo>? children})
=======
/// [_i9.OhsPage]
class OhsRoute extends _i15.PageRouteInfo<void> {
  const OhsRoute({List<_i15.PageRouteInfo>? children})
>>>>>>> dev_jithin
      : super(
          OhsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SalesPage]
class SalesRoute extends _i12.PageRouteInfo<void> {
  const SalesRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProfileCreationPage]
class ProfileCreationRoute
    extends _i15.PageRouteInfo<ProfileCreationRouteArgs> {
  ProfileCreationRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ProfileCreationRoute.name,
          args: ProfileCreationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileCreationRoute';

  static const _i15.PageInfo<ProfileCreationRouteArgs> page =
      _i15.PageInfo<ProfileCreationRouteArgs>(name);
}

class ProfileCreationRouteArgs {
  const ProfileCreationRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'ProfileCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.SalesDetailPage]
class SalesDetailRoute extends _i15.PageRouteInfo<SalesDetailRouteArgs> {
  SalesDetailRoute({
    _i16.Key? key,
    required _i18.SalesModel? data,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SalesDetailRoute.name,
          args: SalesDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SalesDetailRoute';

  static const _i15.PageInfo<SalesDetailRouteArgs> page =
      _i15.PageInfo<SalesDetailRouteArgs>(name);
}

class SalesDetailRouteArgs {
  const SalesDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i16.Key? key;

  final _i18.SalesModel? data;

  @override
  String toString() {
    return 'SalesDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i12.SalesPage]
class SalesRoute extends _i15.PageRouteInfo<void> {
  const SalesRoute({List<_i15.PageRouteInfo>? children})
>>>>>>> dev_jithin
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SchedulingPage]
class SchedulingRoute extends _i12.PageRouteInfo<void> {
  const SchedulingRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SchedulingPage]
class SchedulingRoute extends _i15.PageRouteInfo<void> {
  const SchedulingRoute({List<_i15.PageRouteInfo>? children})
>>>>>>> dev_jithin
      : super(
          SchedulingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SchedulingRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TeamPage]
class TeamRoute extends _i12.PageRouteInfo<void> {
  const TeamRoute({List<_i12.PageRouteInfo>? children})
      : super(
          TeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.VehiclePage]
class VehicleRoute extends _i12.PageRouteInfo<void> {
  const VehicleRoute({List<_i12.PageRouteInfo>? children})
=======
  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.VehiclePage]
class VehicleRoute extends _i15.PageRouteInfo<void> {
  const VehicleRoute({List<_i15.PageRouteInfo>? children})
>>>>>>> dev_jithin
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

<<<<<<< HEAD
  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
=======
  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
>>>>>>> dev_jithin
}
