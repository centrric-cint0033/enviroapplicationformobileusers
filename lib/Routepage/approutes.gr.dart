// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i3;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart' as _i5;
import 'package:enviro_mobile_application/view/06_scheduling/scheduling_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view/07_intranet/intranet_page.dart'
    as _i2;
import 'package:enviro_mobile_application/view/home_page.dart' as _i1;
import 'package:enviro_mobile_application/view/ohs_page/ohs_page.dart' as _i4;
import 'package:enviro_mobile_application/view/vehicle_main_page.dart/vehicle_main_page.dart'
    as _i7;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.IntranetPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(key: args.key),
      );
    },
    OhsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OhsPage(),
      );
    },
    SalesRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SalesPage(),
      );
    },
    SchedulingRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SchedulingPage(),
      );
    },
    VehicleMainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.VehicleMainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.IntranetPage]
class IntranetRoute extends _i8.PageRouteInfo<void> {
  const IntranetRoute({List<_i8.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<LoginRouteArgs> page =
      _i8.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OhsPage]
class OhsRoute extends _i8.PageRouteInfo<void> {
  const OhsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OhsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SalesPage]
class SalesRoute extends _i8.PageRouteInfo<void> {
  const SalesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SchedulingPage]
class SchedulingRoute extends _i8.PageRouteInfo<void> {
  const SchedulingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SchedulingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SchedulingRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.VehicleMainPage]
class VehicleMainRoute extends _i8.PageRouteInfo<void> {
  const VehicleMainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          VehicleMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleMainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
