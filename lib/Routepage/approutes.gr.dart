// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i39;

import 'package:auto_route/auto_route.dart' as _i34;
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart'
    as _i38;
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart'
    as _i42;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i37;
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart'
    as _i41;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i9;
import 'package:enviro_mobile_application/view/02_sales/sales_detail_page.dart'
    as _i16;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart'
    as _i17;
import 'package:enviro_mobile_application/view/02_sales/sales_quote_detail_list_page.dart'
    as _i18;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_detail_page.dart'
    as _i32;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i33;
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i11;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i13;
import 'package:enviro_mobile_application/view/04_ohs/ohs_main_page.dart'
    as _i14;
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/07_intranet/intranet_main_page.dart'
    as _i6;
import 'package:enviro_mobile_application/view/08_notification_page/notification_page.dart'
    as _i12;
import 'package:enviro_mobile_application/view/08_team/add_team_page.dart'
    as _i1;
import 'package:enviro_mobile_application/view/08_team/employee_files_page.dart'
    as _i3;
import 'package:enviro_mobile_application/view/08_team/team_edit_page.dart'
    as _i27;
import 'package:enviro_mobile_application/view/08_team/team_main_page.dart'
    as _i28;
import 'package:enviro_mobile_application/view/08_team/team_profile_screen.dart'
    as _i29;
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart'
    as _i15;
import 'package:enviro_mobile_application/view/10_shedule/current_job_status.dart'
    as _i2;
import 'package:enviro_mobile_application/view/10_shedule/jobcard_page.dart'
    as _i8;
import 'package:enviro_mobile_application/view/10_shedule/shedule_cmra_vdo_page.dart'
    as _i20;
import 'package:enviro_mobile_application/view/10_shedule/shedule_comment_page.dart'
    as _i21;
import 'package:enviro_mobile_application/view/10_shedule/shedule_detail_page.dart'
    as _i23;
import 'package:enviro_mobile_application/view/10_shedule/shedule_detail_page2.dart'
    as _i24;
import 'package:enviro_mobile_application/view/10_shedule/shedule_page.dart'
    as _i19;
import 'package:enviro_mobile_application/view/10_shedule/shedule_signature.dart'
    as _i22;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_preinspection.dart'
    as _i31;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_status.dart'
    as _i30;
import 'package:enviro_mobile_application/view/10_site/site_detail_screen.dart'
    as _i25;
import 'package:enviro_mobile_application/view/10_site/site_main_screen.dart'
    as _i26;
import 'package:enviro_mobile_application/view/home_page.dart' as _i4;
import 'package:enviro_mobile_application/view/intranet_page/intranet_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i40;
import 'package:flutter/cupertino.dart' as _i36;
import 'package:flutter/material.dart' as _i35;

abstract class $AppRouter extends _i34.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i34.PageFactory> pagesMap = {
    AddTeamRoute.name: (routeData) {
      final args = routeData.argsAs<AddTeamRouteArgs>(
          orElse: () => const AddTeamRouteArgs());
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddTeamPage(key: args.key),
      );
    },
    CurrentJobStatusRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CurrentJobStatusPage(),
      );
    },
    EmployeeFilesRoute.name: (routeData) {
      final args = routeData.argsAs<EmployeeFilesRouteArgs>(
          orElse: () => const EmployeeFilesRouteArgs());
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.EmployeeFilesPage(
          key: args.key,
          employeeId: args.employeeId,
          folderName: args.folderName,
          folderId: args.folderId,
          searchType: args.searchType,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    IntranetInsideRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetInsideRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.IntranetInsidePage(
          key: args.key,
          parentId: args.parentId,
          folderName: args.folderName,
        ),
      );
    },
    IntranetMainRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.IntranetMainPage(),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.IntranetPage(),
      );
    },
    JobCardRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.JobCardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.LoginPage(key: args.key),
      );
    },
    NewsOhsFolderInsideRoute.name: (routeData) {
      final args = routeData.argsAs<NewsOhsFolderInsideRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.NewsOhsFolderInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.NotificationPage(),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsMainRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.OhsMainPage(),
      );
    },
    ProfileCreationRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreationRouteArgs>(
          orElse: () => const ProfileCreationRouteArgs());
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.ProfileCreationPage(key: args.key),
      );
    },
    SalesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SalesDetailRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.SalesDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SalesRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SalesPage(),
      );
    },
    SalesQuoteDetailListRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SalesQuoteDetailListPage(),
      );
    },
    ScheduleRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleRouteArgs>(
          orElse: () => const ScheduleRouteArgs());
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.SchedulePage(key: args.key),
      );
    },
    ScheduleVideoAndPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleVideoAndPhotoRouteArgs>(
          orElse: () => const ScheduleVideoAndPhotoRouteArgs());
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.ScheduleVideoAndPhotoPage(key: args.key),
      );
    },
    SheduleCommentRoute.name: (routeData) {
      final args = routeData.argsAs<SheduleCommentRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.SheduleCommentPage(
          key: args.key,
          id: args.id,
          i: args.i,
        ),
      );
    },
    SheduleSignatureRoute.name: (routeData) {
      final args = routeData.argsAs<SheduleSignatureRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.SheduleSignaturePage(
          i: args.i,
          picker: args.picker,
          pickedtypes: args.pickedtypes,
          id: args.id,
          key: args.key,
        ),
      );
    },
    SheduledetailRoute.name: (routeData) {
      final args = routeData.argsAs<SheduledetailRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.SheduledetailPage(
          key: args.key,
          id: args.id,
          i: args.i,
        ),
      );
    },
    SheduledetailRoute2.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.SheduledetailPage2(),
      );
    },
    SiteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SiteDetailRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.SiteDetailScreen(
          key: args.key,
          index: args.index,
          type: args.type,
        ),
      );
    },
    SiteMainRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SiteMainScreen(),
      );
    },
    TeamEditRoute.name: (routeData) {
      final args = routeData.argsAs<TeamEditRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.TeamEditPage(
          key: args.key,
          employeeDetatils: args.employeeDetatils,
        ),
      );
    },
    TeamRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.TeamPage(),
      );
    },
    TeamProfileRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.TeamProfileScreen(),
      );
    },
    UpdateVehicleStatusRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.UpdateVehicleStatusPage(),
      );
    },
    UpdateVehiclepreinspectionRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.UpdateVehiclepreinspectionPage(),
      );
    },
    VehicleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<VehicleDetailRouteArgs>();
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.VehicleDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i34.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTeamPage]
class AddTeamRoute extends _i34.PageRouteInfo<AddTeamRouteArgs> {
  AddTeamRoute({
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          AddTeamRoute.name,
          args: AddTeamRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddTeamRoute';

  static const _i34.PageInfo<AddTeamRouteArgs> page =
      _i34.PageInfo<AddTeamRouteArgs>(name);
}

class AddTeamRouteArgs {
  const AddTeamRouteArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'AddTeamRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CurrentJobStatusPage]
class CurrentJobStatusRoute extends _i34.PageRouteInfo<void> {
  const CurrentJobStatusRoute({List<_i34.PageRouteInfo>? children})
      : super(
          CurrentJobStatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurrentJobStatusRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EmployeeFilesPage]
class EmployeeFilesRoute extends _i34.PageRouteInfo<EmployeeFilesRouteArgs> {
  EmployeeFilesRoute({
    _i36.Key? key,
    num? employeeId,
    String? folderName,
    num? folderId,
    String? searchType,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          EmployeeFilesRoute.name,
          args: EmployeeFilesRouteArgs(
            key: key,
            employeeId: employeeId,
            folderName: folderName,
            folderId: folderId,
            searchType: searchType,
          ),
          initialChildren: children,
        );

  static const String name = 'EmployeeFilesRoute';

  static const _i34.PageInfo<EmployeeFilesRouteArgs> page =
      _i34.PageInfo<EmployeeFilesRouteArgs>(name);
}

class EmployeeFilesRouteArgs {
  const EmployeeFilesRouteArgs({
    this.key,
    this.employeeId,
    this.folderName,
    this.folderId,
    this.searchType,
  });

  final _i36.Key? key;

  final num? employeeId;

  final String? folderName;

  final num? folderId;

  final String? searchType;

  @override
  String toString() {
    return 'EmployeeFilesRouteArgs{key: $key, employeeId: $employeeId, folderName: $folderName, folderId: $folderId, searchType: $searchType}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i34.PageRouteInfo<void> {
  const HomeRoute({List<_i34.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i5.IntranetInsidePage]
class IntranetInsideRoute extends _i34.PageRouteInfo<IntranetInsideRouteArgs> {
  IntranetInsideRoute({
    _i35.Key? key,
    required int parentId,
    required String folderName,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          IntranetInsideRoute.name,
          args: IntranetInsideRouteArgs(
            key: key,
            parentId: parentId,
            folderName: folderName,
          ),
          initialChildren: children,
        );

  static const String name = 'IntranetInsideRoute';

  static const _i34.PageInfo<IntranetInsideRouteArgs> page =
      _i34.PageInfo<IntranetInsideRouteArgs>(name);
}

class IntranetInsideRouteArgs {
  const IntranetInsideRouteArgs({
    this.key,
    required this.parentId,
    required this.folderName,
  });

  final _i35.Key? key;

  final int parentId;

  final String folderName;

  @override
  String toString() {
    return 'IntranetInsideRouteArgs{key: $key, parentId: $parentId, folderName: $folderName}';
  }
}

/// generated route for
/// [_i6.IntranetMainPage]
class IntranetMainRoute extends _i34.PageRouteInfo<void> {
  const IntranetMainRoute({List<_i34.PageRouteInfo>? children})
      : super(
          IntranetMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetMainRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i7.IntranetPage]
class IntranetRoute extends _i34.PageRouteInfo<void> {
  const IntranetRoute({List<_i34.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i8.JobCardPage]
class JobCardRoute extends _i34.PageRouteInfo<void> {
  const JobCardRoute({List<_i34.PageRouteInfo>? children})
      : super(
          JobCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobCardRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginRoute extends _i34.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i34.PageInfo<LoginRouteArgs> page =
      _i34.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.NewsOhsFolderInsidePage]
class NewsOhsFolderInsideRoute
    extends _i34.PageRouteInfo<NewsOhsFolderInsideRouteArgs> {
  NewsOhsFolderInsideRoute({
    _i35.Key? key,
    required int parentId,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          NewsOhsFolderInsideRoute.name,
          args: NewsOhsFolderInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsOhsFolderInsideRoute';

  static const _i34.PageInfo<NewsOhsFolderInsideRouteArgs> page =
      _i34.PageInfo<NewsOhsFolderInsideRouteArgs>(name);
}

class NewsOhsFolderInsideRouteArgs {
  const NewsOhsFolderInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i35.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'NewsOhsFolderInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i11.NotificationDetailPage]
class NotificationDetailRoute
    extends _i34.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i35.Key? key,
    required _i37.OhsRespModel data,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i34.PageInfo<NotificationDetailRouteArgs> page =
      _i34.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i35.Key? key;

  final _i37.OhsRespModel data;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i12.NotificationPage]
class NotificationRoute extends _i34.PageRouteInfo<void> {
  const NotificationRoute({List<_i34.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i13.OhsDetailPage]
class OhsDetailRoute extends _i34.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i35.Key? key,
    required _i37.OhsRespModel data,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i34.PageInfo<OhsDetailRouteArgs> page =
      _i34.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i35.Key? key;

  final _i37.OhsRespModel data;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i14.OhsMainPage]
class OhsMainRoute extends _i34.PageRouteInfo<void> {
  const OhsMainRoute({List<_i34.PageRouteInfo>? children})
      : super(
          OhsMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsMainRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ProfileCreationPage]
class ProfileCreationRoute
    extends _i34.PageRouteInfo<ProfileCreationRouteArgs> {
  ProfileCreationRoute({
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          ProfileCreationRoute.name,
          args: ProfileCreationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileCreationRoute';

  static const _i34.PageInfo<ProfileCreationRouteArgs> page =
      _i34.PageInfo<ProfileCreationRouteArgs>(name);
}

class ProfileCreationRouteArgs {
  const ProfileCreationRouteArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'ProfileCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.SalesDetailPage]
class SalesDetailRoute extends _i34.PageRouteInfo<SalesDetailRouteArgs> {
  SalesDetailRoute({
    _i36.Key? key,
    required _i38.SalesModel? data,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          SalesDetailRoute.name,
          args: SalesDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SalesDetailRoute';

  static const _i34.PageInfo<SalesDetailRouteArgs> page =
      _i34.PageInfo<SalesDetailRouteArgs>(name);
}

class SalesDetailRouteArgs {
  const SalesDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i36.Key? key;

  final _i38.SalesModel? data;

  @override
  String toString() {
    return 'SalesDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i17.SalesPage]
class SalesRoute extends _i34.PageRouteInfo<void> {
  const SalesRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SalesQuoteDetailListPage]
class SalesQuoteDetailListRoute extends _i34.PageRouteInfo<void> {
  const SalesQuoteDetailListRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SalesQuoteDetailListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesQuoteDetailListRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i19.SchedulePage]
class ScheduleRoute extends _i34.PageRouteInfo<ScheduleRouteArgs> {
  ScheduleRoute({
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          ScheduleRoute.name,
          args: ScheduleRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ScheduleRoute';

  static const _i34.PageInfo<ScheduleRouteArgs> page =
      _i34.PageInfo<ScheduleRouteArgs>(name);
}

class ScheduleRouteArgs {
  const ScheduleRouteArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'ScheduleRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i20.ScheduleVideoAndPhotoPage]
class ScheduleVideoAndPhotoRoute
    extends _i34.PageRouteInfo<ScheduleVideoAndPhotoRouteArgs> {
  ScheduleVideoAndPhotoRoute({
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          ScheduleVideoAndPhotoRoute.name,
          args: ScheduleVideoAndPhotoRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ScheduleVideoAndPhotoRoute';

  static const _i34.PageInfo<ScheduleVideoAndPhotoRouteArgs> page =
      _i34.PageInfo<ScheduleVideoAndPhotoRouteArgs>(name);
}

class ScheduleVideoAndPhotoRouteArgs {
  const ScheduleVideoAndPhotoRouteArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'ScheduleVideoAndPhotoRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i21.SheduleCommentPage]
class SheduleCommentRoute extends _i34.PageRouteInfo<SheduleCommentRouteArgs> {
  SheduleCommentRoute({
    _i35.Key? key,
    required int id,
    required int i,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          SheduleCommentRoute.name,
          args: SheduleCommentRouteArgs(
            key: key,
            id: id,
            i: i,
          ),
          initialChildren: children,
        );

  static const String name = 'SheduleCommentRoute';

  static const _i34.PageInfo<SheduleCommentRouteArgs> page =
      _i34.PageInfo<SheduleCommentRouteArgs>(name);
}

class SheduleCommentRouteArgs {
  const SheduleCommentRouteArgs({
    this.key,
    required this.id,
    required this.i,
  });

  final _i35.Key? key;

  final int id;

  final int i;

  @override
  String toString() {
    return 'SheduleCommentRouteArgs{key: $key, id: $id, i: $i}';
  }
}

/// generated route for
/// [_i22.SheduleSignaturePage]
class SheduleSignatureRoute
    extends _i34.PageRouteInfo<SheduleSignatureRouteArgs> {
  SheduleSignatureRoute({
    required int i,
    _i39.Uint8List? picker,
    _i39.Uint8List? pickedtypes,
    required int id,
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          SheduleSignatureRoute.name,
          args: SheduleSignatureRouteArgs(
            i: i,
            picker: picker,
            pickedtypes: pickedtypes,
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SheduleSignatureRoute';

  static const _i34.PageInfo<SheduleSignatureRouteArgs> page =
      _i34.PageInfo<SheduleSignatureRouteArgs>(name);
}

class SheduleSignatureRouteArgs {
  const SheduleSignatureRouteArgs({
    required this.i,
    this.picker,
    this.pickedtypes,
    required this.id,
    this.key,
  });

  final int i;

  final _i39.Uint8List? picker;

  final _i39.Uint8List? pickedtypes;

  final int id;

  final _i35.Key? key;

  @override
  String toString() {
    return 'SheduleSignatureRouteArgs{i: $i, picker: $picker, pickedtypes: $pickedtypes, id: $id, key: $key}';
  }
}

/// generated route for
/// [_i23.SheduledetailPage]
class SheduledetailRoute extends _i34.PageRouteInfo<SheduledetailRouteArgs> {
  SheduledetailRoute({
    _i35.Key? key,
    required int id,
    required int i,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          SheduledetailRoute.name,
          args: SheduledetailRouteArgs(
            key: key,
            id: id,
            i: i,
          ),
          initialChildren: children,
        );

  static const String name = 'SheduledetailRoute';

  static const _i34.PageInfo<SheduledetailRouteArgs> page =
      _i34.PageInfo<SheduledetailRouteArgs>(name);
}

class SheduledetailRouteArgs {
  const SheduledetailRouteArgs({
    this.key,
    required this.id,
    required this.i,
  });

  final _i35.Key? key;

  final int id;

  final int i;

  @override
  String toString() {
    return 'SheduledetailRouteArgs{key: $key, id: $id, i: $i}';
  }
}

/// generated route for
/// [_i24.SheduledetailPage2]
class SheduledetailRoute2 extends _i34.PageRouteInfo<void> {
  const SheduledetailRoute2({List<_i34.PageRouteInfo>? children})
      : super(
          SheduledetailRoute2.name,
          initialChildren: children,
        );

  static const String name = 'SheduledetailRoute2';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i25.SiteDetailScreen]
class SiteDetailRoute extends _i34.PageRouteInfo<SiteDetailRouteArgs> {
  SiteDetailRoute({
    _i35.Key? key,
    required int index,
    required _i40.SiteType type,
    List<_i34.PageRouteInfo>? children,
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

  static const _i34.PageInfo<SiteDetailRouteArgs> page =
      _i34.PageInfo<SiteDetailRouteArgs>(name);
}

class SiteDetailRouteArgs {
  const SiteDetailRouteArgs({
    this.key,
    required this.index,
    required this.type,
  });

  final _i35.Key? key;

  final int index;

  final _i40.SiteType type;

  @override
  String toString() {
    return 'SiteDetailRouteArgs{key: $key, index: $index, type: $type}';
  }
}

/// generated route for
/// [_i26.SiteMainScreen]
class SiteMainRoute extends _i34.PageRouteInfo<void> {
  const SiteMainRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SiteMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'SiteMainRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i27.TeamEditPage]
class TeamEditRoute extends _i34.PageRouteInfo<TeamEditRouteArgs> {
  TeamEditRoute({
    _i35.Key? key,
    required _i41.TeamProfileEmployeeDetailsResModel employeeDetatils,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          TeamEditRoute.name,
          args: TeamEditRouteArgs(
            key: key,
            employeeDetatils: employeeDetatils,
          ),
          initialChildren: children,
        );

  static const String name = 'TeamEditRoute';

  static const _i34.PageInfo<TeamEditRouteArgs> page =
      _i34.PageInfo<TeamEditRouteArgs>(name);
}

class TeamEditRouteArgs {
  const TeamEditRouteArgs({
    this.key,
    required this.employeeDetatils,
  });

  final _i35.Key? key;

  final _i41.TeamProfileEmployeeDetailsResModel employeeDetatils;

  @override
  String toString() {
    return 'TeamEditRouteArgs{key: $key, employeeDetatils: $employeeDetatils}';
  }
}

/// generated route for
/// [_i28.TeamPage]
class TeamRoute extends _i34.PageRouteInfo<void> {
  const TeamRoute({List<_i34.PageRouteInfo>? children})
      : super(
          TeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i29.TeamProfileScreen]
class TeamProfileRoute extends _i34.PageRouteInfo<void> {
  const TeamProfileRoute({List<_i34.PageRouteInfo>? children})
      : super(
          TeamProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamProfileRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i30.UpdateVehicleStatusPage]
class UpdateVehicleStatusRoute extends _i34.PageRouteInfo<void> {
  const UpdateVehicleStatusRoute({List<_i34.PageRouteInfo>? children})
      : super(
          UpdateVehicleStatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateVehicleStatusRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i31.UpdateVehiclepreinspectionPage]
class UpdateVehiclepreinspectionRoute extends _i34.PageRouteInfo<void> {
  const UpdateVehiclepreinspectionRoute({List<_i34.PageRouteInfo>? children})
      : super(
          UpdateVehiclepreinspectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateVehiclepreinspectionRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}

/// generated route for
/// [_i32.VehicleDetailPage]
class VehicleDetailRoute extends _i34.PageRouteInfo<VehicleDetailRouteArgs> {
  VehicleDetailRoute({
    _i35.Key? key,
    required _i42.VehicleModel data,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          VehicleDetailRoute.name,
          args: VehicleDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'VehicleDetailRoute';

  static const _i34.PageInfo<VehicleDetailRouteArgs> page =
      _i34.PageInfo<VehicleDetailRouteArgs>(name);
}

class VehicleDetailRouteArgs {
  const VehicleDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i35.Key? key;

  final _i42.VehicleModel data;

  @override
  String toString() {
    return 'VehicleDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i33.VehiclePage]
class VehicleRoute extends _i34.PageRouteInfo<void> {
  const VehicleRoute({List<_i34.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i34.PageInfo<void> page = _i34.PageInfo<void>(name);
}
