// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart'
    as _i13;
import 'package:enviro_mobile_application/view/intranet_page/intranet_page.dart'
    as _i3;
import 'package:enviro_mobile_application/view/loginpage/calenderpage/calender_page.dart'
    as _i1;
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/homepage.dart'
    as _i2;
import 'package:enviro_mobile_application/view/loginpage/loginpage.dart' as _i4;
import 'package:enviro_mobile_application/view/main_screen/main_screen.dart'
    as _i5;
import 'package:enviro_mobile_application/view/news_fldr_inside_page/news_foldr_inside_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view/oh&s_detail_page/oh&s_detail_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/ohs_page/ohs_page.dart' as _i8;
import 'package:enviro_mobile_application/view/sales_page/sales_main_page.dart'
    as _i9;
import 'package:enviro_mobile_application/view/vehicle_main_page.dart/vehicle_main_page.dart'
    as _i10;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    CalendarRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CalendarPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.IntranetPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(key: args.key),
      );
    },
    MainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    NewsRouteInsideRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NewsPageInsidePage(),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OhsPage(),
      );
    },
    SalesMainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SalesMainPage(),
      );
    },
    VehicleMainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.VehicleMainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CalendarPage]
class CalendarRoute extends _i11.PageRouteInfo<void> {
  const CalendarRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
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
/// [_i3.IntranetPage]
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
/// [_i4.LoginPage]
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
/// [_i5.MainScreen]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NewsPageInsidePage]
class NewsRouteInsideRoute extends _i11.PageRouteInfo<void> {
  const NewsRouteInsideRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NewsRouteInsideRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRouteInsideRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OhsDetailPage]
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
/// [_i8.OhsPage]
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
/// [_i9.SalesMainPage]
class SalesMainRoute extends _i11.PageRouteInfo<void> {
  const SalesMainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SalesMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesMainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.VehicleMainPage]
class VehicleMainRoute extends _i11.PageRouteInfo<void> {
  const VehicleMainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          VehicleMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleMainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
