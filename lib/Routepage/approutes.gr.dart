// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart'
    as _i14;
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
import 'package:enviro_mobile_application/view/notification_detail_page/notifcation_detail_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/oh&s_detail_page/oh&s_detail_page.dart'
    as _i8;
import 'package:enviro_mobile_application/view/ohs_page/ohs_page.dart' as _i9;
import 'package:enviro_mobile_application/view/sales_page/sales_main_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/vehicle_main_page.dart/vehicle_main_page.dart'
    as _i11;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    CalendarRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CalendarPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
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
    MainRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    NewsRouteInsideRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NewsPageInsidePage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OhsPage(),
      );
    },
    SalesMainRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SalesMainPage(),
      );
    },
    VehicleMainRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.VehicleMainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CalendarPage]
class CalendarRoute extends _i12.PageRouteInfo<void> {
  const CalendarRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
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
/// [_i5.MainScreen]
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NewsPageInsidePage]
class NewsRouteInsideRoute extends _i12.PageRouteInfo<void> {
  const NewsRouteInsideRoute({List<_i12.PageRouteInfo>? children})
      : super(
          NewsRouteInsideRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRouteInsideRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotificationDetailPage]
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
/// [_i8.OhsDetailPage]
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
/// [_i9.OhsPage]
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
/// [_i10.SalesMainPage]
class SalesMainRoute extends _i12.PageRouteInfo<void> {
  const SalesMainRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SalesMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesMainRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.VehicleMainPage]
class VehicleMainRoute extends _i12.PageRouteInfo<void> {
  const VehicleMainRoute({List<_i12.PageRouteInfo>? children})
      : super(
          VehicleMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleMainRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
