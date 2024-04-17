// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart'
    as _i23;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i22;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i6;
import 'package:enviro_mobile_application/view/02_sales/sales_detail_page.dart'
    as _i13;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart'
    as _i14;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i19;
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i8;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/04_ohs/ohs_page.dart' as _i11;
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart'
    as _i3;
import 'package:enviro_mobile_application/view/07_intranet/intranet_page.dart'
    as _i4;
import 'package:enviro_mobile_application/view/08_notification_page/notification_page.dart'
    as _i9;
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart'
    as _i12;
import 'package:enviro_mobile_application/view/10_shedule/jobcard_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/10_shedule/shedule_calender_page.dart'
    as _i1;
import 'package:enviro_mobile_application/view/10_shedule/shedule_detail_page.dart'
    as _i16;
import 'package:enviro_mobile_application/view/10_shedule/shedule_detail_page2.dart'
    as _i17;
import 'package:enviro_mobile_application/view/10_shedule/shedule_page.dart'
    as _i15;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_preinspection.dart'
    as _i18;
import 'package:enviro_mobile_application/view/home_page.dart' as _i2;
import 'package:flutter/material.dart' as _i21;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    CalenderRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CalenderPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    IntranetInsideRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetInsideRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.IntranetInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.IntranetPage(),
      );
    },
    JobCardRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.JobCardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.LoginPage(key: args.key),
      );
    },
    NewsRouteInsideRoute.name: (routeData) {
      final args = routeData.argsAs<NewsRouteInsideRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.NewsPageInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationPage(),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OhsPage(),
      );
    },
    ProfileCreationRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreationRouteArgs>(
          orElse: () => const ProfileCreationRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ProfileCreationPage(key: args.key),
      );
    },
    SalesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SalesDetailRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.SalesDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SalesRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SalesPage(),
      );
    },
    ScheduleRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SchedulePage(),
      );
    },
    SheduledetailRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SheduledetailPage(),
      );
    },
    SheduledetailRoute2.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SheduledetailPage2(),
      );
    },
    UpdateVehiclepreinspectionRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.UpdateVehiclepreinspectionPage(),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CalenderPage]
class CalenderRoute extends _i20.PageRouteInfo<void> {
  const CalenderRoute({List<_i20.PageRouteInfo>? children})
      : super(
          CalenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalenderRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i20.PageRouteInfo<void> {
  const HomeRoute({List<_i20.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.IntranetInsidePage]
class IntranetInsideRoute extends _i20.PageRouteInfo<IntranetInsideRouteArgs> {
  IntranetInsideRoute({
    _i21.Key? key,
    required int parentId,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          IntranetInsideRoute.name,
          args: IntranetInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'IntranetInsideRoute';

  static const _i20.PageInfo<IntranetInsideRouteArgs> page =
      _i20.PageInfo<IntranetInsideRouteArgs>(name);
}

class IntranetInsideRouteArgs {
  const IntranetInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i21.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'IntranetInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i4.IntranetPage]
class IntranetRoute extends _i20.PageRouteInfo<void> {
  const IntranetRoute({List<_i20.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.JobCardPage]
class JobCardRoute extends _i20.PageRouteInfo<void> {
  const JobCardRoute({List<_i20.PageRouteInfo>? children})
      : super(
          JobCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobCardRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i20.PageInfo<LoginRouteArgs> page =
      _i20.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.NewsPageInsidePage]
class NewsRouteInsideRoute
    extends _i20.PageRouteInfo<NewsRouteInsideRouteArgs> {
  NewsRouteInsideRoute({
    _i21.Key? key,
    required int parentId,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          NewsRouteInsideRoute.name,
          args: NewsRouteInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRouteInsideRoute';

  static const _i20.PageInfo<NewsRouteInsideRouteArgs> page =
      _i20.PageInfo<NewsRouteInsideRouteArgs>(name);
}

class NewsRouteInsideRouteArgs {
  const NewsRouteInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i21.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'NewsRouteInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i8.NotificationDetailPage]
class NotificationDetailRoute
    extends _i20.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i21.Key? key,
    required _i22.OhsRespModel data,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i20.PageInfo<NotificationDetailRouteArgs> page =
      _i20.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i21.Key? key;

  final _i22.OhsRespModel data;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i9.NotificationPage]
class NotificationRoute extends _i20.PageRouteInfo<void> {
  const NotificationRoute({List<_i20.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OhsDetailPage]
class OhsDetailRoute extends _i20.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i21.Key? key,
    required _i22.OhsRespModel data,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i20.PageInfo<OhsDetailRouteArgs> page =
      _i20.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i21.Key? key;

  final _i22.OhsRespModel data;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i11.OhsPage]
class OhsRoute extends _i20.PageRouteInfo<void> {
  const OhsRoute({List<_i20.PageRouteInfo>? children})
      : super(
          OhsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfileCreationPage]
class ProfileCreationRoute
    extends _i20.PageRouteInfo<ProfileCreationRouteArgs> {
  ProfileCreationRoute({
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ProfileCreationRoute.name,
          args: ProfileCreationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileCreationRoute';

  static const _i20.PageInfo<ProfileCreationRouteArgs> page =
      _i20.PageInfo<ProfileCreationRouteArgs>(name);
}

class ProfileCreationRouteArgs {
  const ProfileCreationRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'ProfileCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.SalesDetailPage]
class SalesDetailRoute extends _i20.PageRouteInfo<SalesDetailRouteArgs> {
  SalesDetailRoute({
    _i21.Key? key,
    required _i23.SalesModel? data,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SalesDetailRoute.name,
          args: SalesDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SalesDetailRoute';

  static const _i20.PageInfo<SalesDetailRouteArgs> page =
      _i20.PageInfo<SalesDetailRouteArgs>(name);
}

class SalesDetailRouteArgs {
  const SalesDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i21.Key? key;

  final _i23.SalesModel? data;

  @override
  String toString() {
    return 'SalesDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i14.SalesPage]
class SalesRoute extends _i20.PageRouteInfo<void> {
  const SalesRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SchedulePage]
class ScheduleRoute extends _i20.PageRouteInfo<void> {
  const ScheduleRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ScheduleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SheduledetailPage]
class SheduledetailRoute extends _i20.PageRouteInfo<void> {
  const SheduledetailRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SheduledetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SheduledetailRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SheduledetailPage2]
class SheduledetailRoute2 extends _i20.PageRouteInfo<void> {
  const SheduledetailRoute2({List<_i20.PageRouteInfo>? children})
      : super(
          SheduledetailRoute2.name,
          initialChildren: children,
        );

  static const String name = 'SheduledetailRoute2';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i18.UpdateVehiclepreinspectionPage]
class UpdateVehiclepreinspectionRoute extends _i20.PageRouteInfo<void> {
  const UpdateVehiclepreinspectionRoute({List<_i20.PageRouteInfo>? children})
      : super(
          UpdateVehiclepreinspectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateVehiclepreinspectionRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.VehiclePage]
class VehicleRoute extends _i20.PageRouteInfo<void> {
  const VehicleRoute({List<_i20.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
