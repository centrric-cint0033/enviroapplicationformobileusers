// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i13;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i3;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart' as _i8;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i4;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view/04_ohs/ohs_page.dart' as _i7;
import 'package:enviro_mobile_application/view/06_scheduling/scheduling_page.dart'
    as _i9;
import 'package:enviro_mobile_application/view/07_intranet/intranet_page.dart'
    as _i2;
import 'package:enviro_mobile_application/view/home_page.dart' as _i1;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.IntranetPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(key: args.key),
      );
    },
    NewsRouteInsideRoute.name: (routeData) {
      final args = routeData.argsAs<NewsRouteInsideRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.NewsPageInsidePage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OhsPage(),
      );
    },
    SalesRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SalesPage(),
      );
    },
    SchedulingRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SchedulingPage(),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.IntranetPage]
class IntranetRoute extends _i11.PageRouteInfo<void> {
  const IntranetRoute({List<_i11.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<LoginRouteArgs> page =
      _i11.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.NewsPageInsidePage]
class NewsRouteInsideRoute
    extends _i11.PageRouteInfo<NewsRouteInsideRouteArgs> {
  NewsRouteInsideRoute({
    _i12.Key? key,
    required int id,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          NewsRouteInsideRoute.name,
          args: NewsRouteInsideRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRouteInsideRoute';

  static const _i11.PageInfo<NewsRouteInsideRouteArgs> page =
      _i11.PageInfo<NewsRouteInsideRouteArgs>(name);
}

class NewsRouteInsideRouteArgs {
  const NewsRouteInsideRouteArgs({
    this.key,
    required this.id,
  });

  final _i12.Key? key;

  final int id;

  @override
  String toString() {
    return 'NewsRouteInsideRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.NotificationDetailPage]
class NotificationDetailRoute
    extends _i11.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i12.Key? key,
    required _i13.OhsRespModel data,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i11.PageInfo<NotificationDetailRouteArgs> page =
      _i11.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i12.Key? key;

  final _i13.OhsRespModel data;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i6.OhsDetailPage]
class OhsDetailRoute extends _i11.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i12.Key? key,
    required _i13.OhsRespModel data,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i11.PageInfo<OhsDetailRouteArgs> page =
      _i11.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i12.Key? key;

  final _i13.OhsRespModel data;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i7.OhsPage]
class OhsRoute extends _i11.PageRouteInfo<void> {
  const OhsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OhsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SalesPage]
class SalesRoute extends _i11.PageRouteInfo<void> {
  const SalesRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SchedulingPage]
class SchedulingRoute extends _i11.PageRouteInfo<void> {
  const SchedulingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SchedulingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SchedulingRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.VehiclePage]
class VehicleRoute extends _i11.PageRouteInfo<void> {
  const VehicleRoute({List<_i11.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
