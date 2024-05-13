// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i32;
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart'
    as _i36;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i34;
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart'
    as _i38;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i8;
import 'package:enviro_mobile_application/view/02_sales/sales_detail_page.dart'
    as _i15;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart'
    as _i16;
import 'package:enviro_mobile_application/view/02_sales/sales_quote_detail_list_page.dart'
    as _i17;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i31;
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i9;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i12;
import 'package:enviro_mobile_application/view/04_ohs/ohs_main_page.dart'
    as _i13;
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/08_notification_page/notification_page.dart'
    as _i11;
import 'package:enviro_mobile_application/view/08_team/add_team_page.dart'
    as _i1;
import 'package:enviro_mobile_application/view/08_team/team_edit_page.dart'
    as _i26;
import 'package:enviro_mobile_application/view/08_team/team_main_page.dart'
    as _i27;
import 'package:enviro_mobile_application/view/08_team/team_profile_screen.dart'
    as _i28;
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart'
    as _i14;
import 'package:enviro_mobile_application/view/10_shedule/current_job_status.dart'
    as _i3;
import 'package:enviro_mobile_application/view/10_shedule/jobcard_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/10_shedule/shedule_calender_page.dart'
    as _i2;
import 'package:enviro_mobile_application/view/10_shedule/shedule_cmra_vdo_page.dart'
    as _i19;
import 'package:enviro_mobile_application/view/10_shedule/shedule_comment_page.dart'
    as _i20;
import 'package:enviro_mobile_application/view/10_shedule/shedule_detail_page.dart'
    as _i22;
import 'package:enviro_mobile_application/view/10_shedule/shedule_detail_page2.dart'
    as _i23;
import 'package:enviro_mobile_application/view/10_shedule/shedule_page.dart'
    as _i18;
import 'package:enviro_mobile_application/view/10_shedule/shedule_signature.dart'
    as _i21;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_preinspection.dart'
    as _i30;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_status.dart'
    as _i29;
import 'package:enviro_mobile_application/view/10_site/site_detail_screen.dart'
    as _i24;
import 'package:enviro_mobile_application/view/10_site/site_main_screen.dart'
    as _i25;
import 'package:enviro_mobile_application/view/home_page.dart' as _i4;
import 'package:enviro_mobile_application/view/intranet_page/intranet_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i37;
import 'package:flutter/cupertino.dart' as _i35;
import 'package:flutter/material.dart' as _i33;

abstract class $AppRouter extends _i32.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i32.PageFactory> pagesMap = {
    AddTeamRoute.name: (routeData) {
      final args = routeData.argsAs<AddTeamRouteArgs>(
          orElse: () => const AddTeamRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddTeamPage(key: args.key),
      );
    },
    CalenderRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CalenderPage(),
      );
    },
    CurrentJobStatusRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CurrentJobStatusPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    IntranetInsideRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetInsideRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.IntranetInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.IntranetPage(),
      );
    },
    JobCardRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.JobCardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.LoginPage(key: args.key),
      );
    },
    NewsOhsFolderInsideRoute.name: (routeData) {
      final args = routeData.argsAs<NewsOhsFolderInsideRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.NewsOhsFolderInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.NotificationPage(),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsMainRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.OhsMainPage(),
      );
    },
    ProfileCreationRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreationRouteArgs>(
          orElse: () => const ProfileCreationRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.ProfileCreationPage(key: args.key),
      );
    },
    SalesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SalesDetailRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.SalesDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SalesRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SalesPage(),
      );
    },
    SalesQuoteDetailListRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SalesQuoteDetailListPage(),
      );
    },
    ScheduleRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SchedulePage(),
      );
    },
    ScheduleVideoAndPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleVideoAndPhotoRouteArgs>(
          orElse: () => const ScheduleVideoAndPhotoRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ScheduleVideoAndPhotoPage(key: args.key),
      );
    },
    SheduleCommentRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SheduleCommentPage(),
      );
    },
    SheduleSignatureRoute.name: (routeData) {
      final args = routeData.argsAs<SheduleSignatureRouteArgs>(
          orElse: () => const SheduleSignatureRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.SheduleSignaturePage(key: args.key),
      );
    },
    SheduledetailRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.SheduledetailPage(),
      );
    },
    SheduledetailRoute2.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.SheduledetailPage2(),
      );
    },
    SiteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SiteDetailRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.SiteDetailScreen(
          key: args.key,
          index: args.index,
          type: args.type,
        ),
      );
    },
    SiteMainRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.SiteMainScreen(),
      );
    },
    TeamEditRoute.name: (routeData) {
      final args = routeData.argsAs<TeamEditRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.TeamEditPage(
          key: args.key,
          employeeDetatils: args.employeeDetatils,
        ),
      );
    },
    TeamRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.TeamPage(),
      );
    },
    TeamProfileRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.TeamProfileScreen(),
      );
    },
    UpdateVehicleStatusRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.UpdateVehicleStatusPage(),
      );
    },
    UpdateVehiclepreinspectionRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.UpdateVehiclepreinspectionPage(),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTeamPage]
class AddTeamRoute extends _i32.PageRouteInfo<AddTeamRouteArgs> {
  AddTeamRoute({
    _i33.Key? key,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          AddTeamRoute.name,
          args: AddTeamRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddTeamRoute';

  static const _i32.PageInfo<AddTeamRouteArgs> page =
      _i32.PageInfo<AddTeamRouteArgs>(name);
}

class AddTeamRouteArgs {
  const AddTeamRouteArgs({this.key});

  final _i33.Key? key;

  @override
  String toString() {
    return 'AddTeamRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CalenderPage]
class CalenderRoute extends _i32.PageRouteInfo<void> {
  const CalenderRoute({List<_i32.PageRouteInfo>? children})
      : super(
          CalenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalenderRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CurrentJobStatusPage]
class CurrentJobStatusRoute extends _i32.PageRouteInfo<void> {
  const CurrentJobStatusRoute({List<_i32.PageRouteInfo>? children})
      : super(
          CurrentJobStatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurrentJobStatusRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i32.PageRouteInfo<void> {
  const HomeRoute({List<_i32.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i5.IntranetInsidePage]
class IntranetInsideRoute extends _i32.PageRouteInfo<IntranetInsideRouteArgs> {
  IntranetInsideRoute({
    _i33.Key? key,
    required int parentId,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          IntranetInsideRoute.name,
          args: IntranetInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'IntranetInsideRoute';

  static const _i32.PageInfo<IntranetInsideRouteArgs> page =
      _i32.PageInfo<IntranetInsideRouteArgs>(name);
}

class IntranetInsideRouteArgs {
  const IntranetInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i33.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'IntranetInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i6.IntranetPage]
class IntranetRoute extends _i32.PageRouteInfo<void> {
  const IntranetRoute({List<_i32.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i7.JobCardPage]
class JobCardRoute extends _i32.PageRouteInfo<void> {
  const JobCardRoute({List<_i32.PageRouteInfo>? children})
      : super(
          JobCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobCardRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i32.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i33.Key? key,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i32.PageInfo<LoginRouteArgs> page =
      _i32.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i33.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.NewsOhsFolderInsidePage]
class NewsOhsFolderInsideRoute
    extends _i32.PageRouteInfo<NewsOhsFolderInsideRouteArgs> {
  NewsOhsFolderInsideRoute({
    _i33.Key? key,
    required int parentId,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          NewsOhsFolderInsideRoute.name,
          args: NewsOhsFolderInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsOhsFolderInsideRoute';

  static const _i32.PageInfo<NewsOhsFolderInsideRouteArgs> page =
      _i32.PageInfo<NewsOhsFolderInsideRouteArgs>(name);
}

class NewsOhsFolderInsideRouteArgs {
  const NewsOhsFolderInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i33.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'NewsOhsFolderInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i10.NotificationDetailPage]
class NotificationDetailRoute
    extends _i32.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i33.Key? key,
    required _i34.OhsRespModel data,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i32.PageInfo<NotificationDetailRouteArgs> page =
      _i32.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i33.Key? key;

  final _i34.OhsRespModel data;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i11.NotificationPage]
class NotificationRoute extends _i32.PageRouteInfo<void> {
  const NotificationRoute({List<_i32.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OhsDetailPage]
class OhsDetailRoute extends _i32.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i33.Key? key,
    required _i34.OhsRespModel data,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i32.PageInfo<OhsDetailRouteArgs> page =
      _i32.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i33.Key? key;

  final _i34.OhsRespModel data;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i13.OhsMainPage]
class OhsMainRoute extends _i32.PageRouteInfo<void> {
  const OhsMainRoute({List<_i32.PageRouteInfo>? children})
      : super(
          OhsMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsMainRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ProfileCreationPage]
class ProfileCreationRoute
    extends _i32.PageRouteInfo<ProfileCreationRouteArgs> {
  ProfileCreationRoute({
    _i33.Key? key,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          ProfileCreationRoute.name,
          args: ProfileCreationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileCreationRoute';

  static const _i32.PageInfo<ProfileCreationRouteArgs> page =
      _i32.PageInfo<ProfileCreationRouteArgs>(name);
}

class ProfileCreationRouteArgs {
  const ProfileCreationRouteArgs({this.key});

  final _i33.Key? key;

  @override
  String toString() {
    return 'ProfileCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.SalesDetailPage]
class SalesDetailRoute extends _i32.PageRouteInfo<SalesDetailRouteArgs> {
  SalesDetailRoute({
    _i35.Key? key,
    required _i36.SalesModel? data,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          SalesDetailRoute.name,
          args: SalesDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SalesDetailRoute';

  static const _i32.PageInfo<SalesDetailRouteArgs> page =
      _i32.PageInfo<SalesDetailRouteArgs>(name);
}

class SalesDetailRouteArgs {
  const SalesDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i35.Key? key;

  final _i36.SalesModel? data;

  @override
  String toString() {
    return 'SalesDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i16.SalesPage]
class SalesRoute extends _i32.PageRouteInfo<void> {
  const SalesRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SalesQuoteDetailListPage]
class SalesQuoteDetailListRoute extends _i32.PageRouteInfo<void> {
  const SalesQuoteDetailListRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SalesQuoteDetailListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesQuoteDetailListRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SchedulePage]
class ScheduleRoute extends _i32.PageRouteInfo<void> {
  const ScheduleRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ScheduleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ScheduleVideoAndPhotoPage]
class ScheduleVideoAndPhotoRoute
    extends _i32.PageRouteInfo<ScheduleVideoAndPhotoRouteArgs> {
  ScheduleVideoAndPhotoRoute({
    _i33.Key? key,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          ScheduleVideoAndPhotoRoute.name,
          args: ScheduleVideoAndPhotoRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ScheduleVideoAndPhotoRoute';

  static const _i32.PageInfo<ScheduleVideoAndPhotoRouteArgs> page =
      _i32.PageInfo<ScheduleVideoAndPhotoRouteArgs>(name);
}

class ScheduleVideoAndPhotoRouteArgs {
  const ScheduleVideoAndPhotoRouteArgs({this.key});

  final _i33.Key? key;

  @override
  String toString() {
    return 'ScheduleVideoAndPhotoRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i20.SheduleCommentPage]
class SheduleCommentRoute extends _i32.PageRouteInfo<void> {
  const SheduleCommentRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SheduleCommentRoute.name,
          initialChildren: children,
        );

  static const String name = 'SheduleCommentRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SheduleSignaturePage]
class SheduleSignatureRoute
    extends _i32.PageRouteInfo<SheduleSignatureRouteArgs> {
  SheduleSignatureRoute({
    _i33.Key? key,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          SheduleSignatureRoute.name,
          args: SheduleSignatureRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SheduleSignatureRoute';

  static const _i32.PageInfo<SheduleSignatureRouteArgs> page =
      _i32.PageInfo<SheduleSignatureRouteArgs>(name);
}

class SheduleSignatureRouteArgs {
  const SheduleSignatureRouteArgs({this.key});

  final _i33.Key? key;

  @override
  String toString() {
    return 'SheduleSignatureRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i22.SheduledetailPage]
class SheduledetailRoute extends _i32.PageRouteInfo<void> {
  const SheduledetailRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SheduledetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SheduledetailRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i23.SheduledetailPage2]
class SheduledetailRoute2 extends _i32.PageRouteInfo<void> {
  const SheduledetailRoute2({List<_i32.PageRouteInfo>? children})
      : super(
          SheduledetailRoute2.name,
          initialChildren: children,
        );

  static const String name = 'SheduledetailRoute2';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i24.SiteDetailScreen]
class SiteDetailRoute extends _i32.PageRouteInfo<SiteDetailRouteArgs> {
  SiteDetailRoute({
    _i33.Key? key,
    required int index,
    required _i37.SiteType type,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<SiteDetailRouteArgs> page =
      _i32.PageInfo<SiteDetailRouteArgs>(name);
}

class SiteDetailRouteArgs {
  const SiteDetailRouteArgs({
    this.key,
    required this.index,
    required this.type,
  });

  final _i33.Key? key;

  final int index;

  final _i37.SiteType type;

  @override
  String toString() {
    return 'SiteDetailRouteArgs{key: $key, index: $index, type: $type}';
  }
}

/// generated route for
/// [_i25.SiteMainScreen]
class SiteMainRoute extends _i32.PageRouteInfo<void> {
  const SiteMainRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SiteMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'SiteMainRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i26.TeamEditPage]
class TeamEditRoute extends _i32.PageRouteInfo<TeamEditRouteArgs> {
  TeamEditRoute({
    _i33.Key? key,
    required _i38.TeamProfileEmployeeDetailsResModel employeeDetatils,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          TeamEditRoute.name,
          args: TeamEditRouteArgs(
            key: key,
            employeeDetatils: employeeDetatils,
          ),
          initialChildren: children,
        );

  static const String name = 'TeamEditRoute';

  static const _i32.PageInfo<TeamEditRouteArgs> page =
      _i32.PageInfo<TeamEditRouteArgs>(name);
}

class TeamEditRouteArgs {
  const TeamEditRouteArgs({
    this.key,
    required this.employeeDetatils,
  });

  final _i33.Key? key;

  final _i38.TeamProfileEmployeeDetailsResModel employeeDetatils;

  @override
  String toString() {
    return 'TeamEditRouteArgs{key: $key, employeeDetatils: $employeeDetatils}';
  }
}

/// generated route for
/// [_i27.TeamPage]
class TeamRoute extends _i32.PageRouteInfo<void> {
  const TeamRoute({List<_i32.PageRouteInfo>? children})
      : super(
          TeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i28.TeamProfileScreen]
class TeamProfileRoute extends _i32.PageRouteInfo<void> {
  const TeamProfileRoute({List<_i32.PageRouteInfo>? children})
      : super(
          TeamProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamProfileRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i29.UpdateVehicleStatusPage]
class UpdateVehicleStatusRoute extends _i32.PageRouteInfo<void> {
  const UpdateVehicleStatusRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UpdateVehicleStatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateVehicleStatusRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i30.UpdateVehiclepreinspectionPage]
class UpdateVehiclepreinspectionRoute extends _i32.PageRouteInfo<void> {
  const UpdateVehiclepreinspectionRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UpdateVehiclepreinspectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateVehiclepreinspectionRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i31.VehiclePage]
class VehicleRoute extends _i32.PageRouteInfo<void> {
  const VehicleRoute({List<_i32.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}
