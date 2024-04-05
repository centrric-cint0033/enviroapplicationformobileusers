// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
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
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i8;
import 'package:enviro_mobile_application/view/04_ohs/ohs_page.dart' as _i9;
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart'
    as _i2;
import 'package:enviro_mobile_application/view/07_intranet/intranet_page.dart'
    as _i3;
import 'package:enviro_mobile_application/view/08_notification_page/notification_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart'
    as _i10;
import 'package:enviro_mobile_application/view/10_shedule/shedule_page.dart'
    as _i13;
import 'package:enviro_mobile_application/view/home_page.dart' as _i1;
import 'package:flutter/material.dart' as _i16;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    IntranetInsideRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetInsideRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
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
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(key: args.key),
      );
    },
    NewsRouteInsideRoute.name: (routeData) {
      final args = routeData.argsAs<NewsRouteInsideRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.NewsPageInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
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
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
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
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SalesPage(),
      );
    },
    ScheduleRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SchedulePage(),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

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
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<LoginRouteArgs> page =
      _i15.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.NewsPageInsidePage]
class NewsRouteInsideRoute
    extends _i15.PageRouteInfo<NewsRouteInsideRouteArgs> {
  NewsRouteInsideRoute({
    _i16.Key? key,
    required int parentId,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          NewsRouteInsideRoute.name,
          args: NewsRouteInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRouteInsideRoute';

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
}

/// generated route for
/// [_i6.NotificationDetailPage]
class NotificationDetailRoute
    extends _i15.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i16.Key? key,
    required _i17.OhsRespModel data,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i15.PageInfo<NotificationDetailRouteArgs> page =
      _i15.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i16.Key? key;

  final _i17.OhsRespModel data;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
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
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i15.PageInfo<OhsDetailRouteArgs> page =
      _i15.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i16.Key? key;

  final _i17.OhsRespModel data;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i9.OhsPage]
class OhsRoute extends _i15.PageRouteInfo<void> {
  const OhsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OhsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsRoute';

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
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SchedulePage]
class ScheduleRoute extends _i15.PageRouteInfo<void> {
  const ScheduleRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ScheduleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.VehiclePage]
class VehicleRoute extends _i15.PageRouteInfo<void> {
  const VehicleRoute({List<_i15.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
