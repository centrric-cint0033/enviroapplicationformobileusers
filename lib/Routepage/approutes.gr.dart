// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i14;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i4;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart' as _i9;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i11;
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/04_ohs/ohs_page.dart' as _i8;
import 'package:enviro_mobile_application/view/06_scheduling/scheduling_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart'
    as _i2;
import 'package:enviro_mobile_application/view/07_intranet/intranet_page.dart'
    as _i3;
import 'package:enviro_mobile_application/view/home_page.dart' as _i1;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    IntranetInsideRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetInsideRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.IntranetInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.IntranetPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(key: args.key),
      );
    },
    NewsRouteInsideRoute.name: (routeData) {
      final args = routeData.argsAs<NewsRouteInsideRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.NewsPageInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OhsPage(),
      );
    },
    SalesRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SalesPage(),
      );
    },
    SchedulingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SchedulingPage(),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.IntranetInsidePage]
class IntranetInsideRoute extends _i12.PageRouteInfo<IntranetInsideRouteArgs> {
  IntranetInsideRoute({
    _i13.Key? key,
    required int parentId,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          IntranetInsideRoute.name,
          args: IntranetInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'IntranetInsideRoute';

  static const _i12.PageInfo<IntranetInsideRouteArgs> page =
      _i12.PageInfo<IntranetInsideRouteArgs>(name);
}

class IntranetInsideRouteArgs {
  const IntranetInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i13.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'IntranetInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i3.IntranetPage]
class IntranetRoute extends _i12.PageRouteInfo<void> {
  const IntranetRoute({List<_i12.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<LoginRouteArgs> page =
      _i12.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.NewsPageInsidePage]
class NewsRouteInsideRoute
    extends _i12.PageRouteInfo<NewsRouteInsideRouteArgs> {
  NewsRouteInsideRoute({
    _i13.Key? key,
    required int parentId,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          NewsRouteInsideRoute.name,
          args: NewsRouteInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRouteInsideRoute';

  static const _i12.PageInfo<NewsRouteInsideRouteArgs> page =
      _i12.PageInfo<NewsRouteInsideRouteArgs>(name);
}

class NewsRouteInsideRouteArgs {
  const NewsRouteInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i13.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'NewsRouteInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i6.NotificationDetailPage]
class NotificationDetailRoute
    extends _i12.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i13.Key? key,
    required _i14.OhsRespModel data,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i12.PageInfo<NotificationDetailRouteArgs> page =
      _i12.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i13.Key? key;

  final _i14.OhsRespModel data;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i7.OhsDetailPage]
class OhsDetailRoute extends _i12.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i13.Key? key,
    required _i14.OhsRespModel data,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i12.PageInfo<OhsDetailRouteArgs> page =
      _i12.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i13.Key? key;

  final _i14.OhsRespModel data;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i8.OhsPage]
class OhsRoute extends _i12.PageRouteInfo<void> {
  const OhsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OhsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SalesPage]
class SalesRoute extends _i12.PageRouteInfo<void> {
  const SalesRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SchedulingPage]
class SchedulingRoute extends _i12.PageRouteInfo<void> {
  const SchedulingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SchedulingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SchedulingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.VehiclePage]
class VehicleRoute extends _i12.PageRouteInfo<void> {
  const VehicleRoute({List<_i12.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
