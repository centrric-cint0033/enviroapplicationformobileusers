// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i40;

import 'package:auto_route/auto_route.dart' as _i35;
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart'
    as _i39;
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart'
    as _i43;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i38;
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart'
    as _i42;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i11;
import 'package:enviro_mobile_application/view/02_sales/sales_detail_page.dart'
    as _i18;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart'
    as _i19;
import 'package:enviro_mobile_application/view/02_sales/sales_quote_detail_list_page.dart'
    as _i20;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_detail_page.dart'
    as _i33;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i34;
import 'package:enviro_mobile_application/view/04_ohs/news_foldr_inside_page.dart'
    as _i12;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i13;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i15;
import 'package:enviro_mobile_application/view/04_ohs/ohs_main_page.dart'
    as _i16;
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart'
    as _i7;
import 'package:enviro_mobile_application/view/07_intranet/intranet_main_page.dart'
    as _i8;
import 'package:enviro_mobile_application/view/08_notification_page/notification_page.dart'
    as _i14;
import 'package:enviro_mobile_application/view/08_team/add_team_page.dart'
    as _i1;
import 'package:enviro_mobile_application/view/08_team/employee_files_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/08_team/team_edit_page.dart'
    as _i28;
import 'package:enviro_mobile_application/view/08_team/team_main_page.dart'
    as _i29;
import 'package:enviro_mobile_application/view/08_team/team_profile_screen.dart'
    as _i30;
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart'
    as _i17;
import 'package:enviro_mobile_application/view/10_shedule/camera_gallery_screen.dart'
    as _i3;
import 'package:enviro_mobile_application/view/10_shedule/current_job_status.dart'
    as _i4;
import 'package:enviro_mobile_application/view/10_shedule/jobcard_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/10_shedule/schedule_main_page.dart'
    as _i21;
import 'package:enviro_mobile_application/view/10_shedule/shedule_calender_page.dart'
    as _i2;
import 'package:enviro_mobile_application/view/10_shedule/shedule_cmra_vdo_page.dart'
    as _i22;
import 'package:enviro_mobile_application/view/10_shedule/shedule_comment_page.dart'
    as _i23;
import 'package:enviro_mobile_application/view/10_shedule/shedule_detail_page.dart'
    as _i25;
import 'package:enviro_mobile_application/view/10_shedule/shedule_signature.dart'
    as _i24;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_preinspection.dart'
    as _i32;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_status.dart'
    as _i31;
import 'package:enviro_mobile_application/view/10_site/site_detail_screen.dart'
    as _i26;
import 'package:enviro_mobile_application/view/10_site/site_main_screen.dart'
    as _i27;
import 'package:enviro_mobile_application/view/home_page.dart' as _i6;
import 'package:enviro_mobile_application/view/intranet_page/intranet_page.dart'
    as _i9;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i41;
import 'package:flutter/cupertino.dart' as _i37;
import 'package:flutter/material.dart' as _i36;

abstract class $AppRouter extends _i35.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i35.PageFactory> pagesMap = {
    AddTeamRoute.name: (routeData) {
      final args = routeData.argsAs<AddTeamRouteArgs>(
          orElse: () => const AddTeamRouteArgs());
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddTeamPage(key: args.key),
      );
    },
    CalenderRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CalenderPage(),
      );
    },
    CameraGalleryRoute.name: (routeData) {
      final args = routeData.argsAs<CameraGalleryRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CameraGalleryScreen(
          key: args.key,
          fromJobStarted: args.fromJobStarted,
          fromJobFinished: args.fromJobFinished,
          id: args.id,
        ),
      );
    },
    CurrentJobStatusRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CurrentJobStatusPage(),
      );
    },
    EmployeeFilesRoute.name: (routeData) {
      final args = routeData.argsAs<EmployeeFilesRouteArgs>(
          orElse: () => const EmployeeFilesRouteArgs());
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EmployeeFilesPage(
          key: args.key,
          employeeId: args.employeeId,
          folderName: args.folderName,
          folderId: args.folderId,
          searchType: args.searchType,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    IntranetInsideRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetInsideRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.IntranetInsidePage(
          key: args.key,
          parentId: args.parentId,
          folderName: args.folderName,
        ),
      );
    },
    IntranetMainRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.IntranetMainPage(),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.IntranetPage(),
      );
    },
    JobCardRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.JobCardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.LoginPage(key: args.key),
      );
    },
    NewsOhsFolderInsideRoute.name: (routeData) {
      final args = routeData.argsAs<NewsOhsFolderInsideRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.NewsOhsFolderInsidePage(
          key: args.key,
          parentId: args.parentId,
        ),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.NotificationDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.NotificationPage(),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.OhsDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OhsMainRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.OhsMainPage(),
      );
    },
    ProfileCreationRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreationRouteArgs>(
          orElse: () => const ProfileCreationRouteArgs());
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.ProfileCreationPage(key: args.key),
      );
    },
    SalesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SalesDetailRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.SalesDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SalesRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.SalesPage(),
      );
    },
    SalesQuoteDetailListRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SalesQuoteDetailListPage(),
      );
    },
    ScheduleMainRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.ScheduleMainPage(),
      );
    },
    ScheduleVideoAndPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleVideoAndPhotoRouteArgs>(
          orElse: () => const ScheduleVideoAndPhotoRouteArgs());
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.ScheduleVideoAndPhotoPage(key: args.key),
      );
    },
    SheduleCommentRoute.name: (routeData) {
      final args = routeData.argsAs<SheduleCommentRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.SheduleCommentPage(
          key: args.key,
          id: args.id,
          i: args.i,
        ),
      );
    },
    SheduleSignatureRoute.name: (routeData) {
      final args = routeData.argsAs<SheduleSignatureRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.SheduleSignaturePage(
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
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.SheduledetailPage(
          key: args.key,
          id: args.id,
          i: args.i,
          driversIndex: args.driversIndex,
        ),
      );
    },
    SiteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SiteDetailRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.SiteDetailScreen(
          key: args.key,
          index: args.index,
          type: args.type,
        ),
      );
    },
    SiteMainRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SiteMainScreen(),
      );
    },
    TeamEditRoute.name: (routeData) {
      final args = routeData.argsAs<TeamEditRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.TeamEditPage(
          key: args.key,
          employeeDetatils: args.employeeDetatils,
        ),
      );
    },
    TeamRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.TeamPage(),
      );
    },
    TeamProfileRoute.name: (routeData) {
      final args = routeData.argsAs<TeamProfileRouteArgs>(
          orElse: () => const TeamProfileRouteArgs());
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.TeamProfileScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    UpdateVehicleStatusRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.UpdateVehicleStatusPage(),
      );
    },
    UpdateVehiclepreinspectionRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateVehiclepreinspectionRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.UpdateVehiclepreinspectionPage(
          key: args.key,
          index: args.index,
          driversIndex: args.driversIndex,
        ),
      );
    },
    VehicleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<VehicleDetailRouteArgs>();
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i33.VehicleDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i35.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTeamPage]
class AddTeamRoute extends _i35.PageRouteInfo<AddTeamRouteArgs> {
  AddTeamRoute({
    _i36.Key? key,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          AddTeamRoute.name,
          args: AddTeamRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddTeamRoute';

  static const _i35.PageInfo<AddTeamRouteArgs> page =
      _i35.PageInfo<AddTeamRouteArgs>(name);
}

class AddTeamRouteArgs {
  const AddTeamRouteArgs({this.key});

  final _i36.Key? key;

  @override
  String toString() {
    return 'AddTeamRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CalenderPage]
class CalenderRoute extends _i35.PageRouteInfo<void> {
  const CalenderRoute({List<_i35.PageRouteInfo>? children})
      : super(
          CalenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalenderRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CameraGalleryScreen]
class CameraGalleryRoute extends _i35.PageRouteInfo<CameraGalleryRouteArgs> {
  CameraGalleryRoute({
    _i36.Key? key,
    bool fromJobStarted = false,
    bool fromJobFinished = false,
    required int id,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          CameraGalleryRoute.name,
          args: CameraGalleryRouteArgs(
            key: key,
            fromJobStarted: fromJobStarted,
            fromJobFinished: fromJobFinished,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraGalleryRoute';

  static const _i35.PageInfo<CameraGalleryRouteArgs> page =
      _i35.PageInfo<CameraGalleryRouteArgs>(name);
}

class CameraGalleryRouteArgs {
  const CameraGalleryRouteArgs({
    this.key,
    this.fromJobStarted = false,
    this.fromJobFinished = false,
    required this.id,
  });

  final _i36.Key? key;

  final bool fromJobStarted;

  final bool fromJobFinished;

  final int id;

  @override
  String toString() {
    return 'CameraGalleryRouteArgs{key: $key, fromJobStarted: $fromJobStarted, fromJobFinished: $fromJobFinished, id: $id}';
  }
}

/// generated route for
/// [_i4.CurrentJobStatusPage]
class CurrentJobStatusRoute extends _i35.PageRouteInfo<void> {
  const CurrentJobStatusRoute({List<_i35.PageRouteInfo>? children})
      : super(
          CurrentJobStatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurrentJobStatusRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EmployeeFilesPage]
class EmployeeFilesRoute extends _i35.PageRouteInfo<EmployeeFilesRouteArgs> {
  EmployeeFilesRoute({
    _i37.Key? key,
    num? employeeId,
    String? folderName,
    num? folderId,
    String? searchType,
    List<_i35.PageRouteInfo>? children,
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

  static const _i35.PageInfo<EmployeeFilesRouteArgs> page =
      _i35.PageInfo<EmployeeFilesRouteArgs>(name);
}

class EmployeeFilesRouteArgs {
  const EmployeeFilesRouteArgs({
    this.key,
    this.employeeId,
    this.folderName,
    this.folderId,
    this.searchType,
  });

  final _i37.Key? key;

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
/// [_i6.HomePage]
class HomeRoute extends _i35.PageRouteInfo<void> {
  const HomeRoute({List<_i35.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i7.IntranetInsidePage]
class IntranetInsideRoute extends _i35.PageRouteInfo<IntranetInsideRouteArgs> {
  IntranetInsideRoute({
    _i36.Key? key,
    required int parentId,
    required String folderName,
    List<_i35.PageRouteInfo>? children,
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

  static const _i35.PageInfo<IntranetInsideRouteArgs> page =
      _i35.PageInfo<IntranetInsideRouteArgs>(name);
}

class IntranetInsideRouteArgs {
  const IntranetInsideRouteArgs({
    this.key,
    required this.parentId,
    required this.folderName,
  });

  final _i36.Key? key;

  final int parentId;

  final String folderName;

  @override
  String toString() {
    return 'IntranetInsideRouteArgs{key: $key, parentId: $parentId, folderName: $folderName}';
  }
}

/// generated route for
/// [_i8.IntranetMainPage]
class IntranetMainRoute extends _i35.PageRouteInfo<void> {
  const IntranetMainRoute({List<_i35.PageRouteInfo>? children})
      : super(
          IntranetMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetMainRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i9.IntranetPage]
class IntranetRoute extends _i35.PageRouteInfo<void> {
  const IntranetRoute({List<_i35.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i10.JobCardPage]
class JobCardRoute extends _i35.PageRouteInfo<void> {
  const JobCardRoute({List<_i35.PageRouteInfo>? children})
      : super(
          JobCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobCardRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i11.LoginPage]
class LoginRoute extends _i35.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i36.Key? key,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i35.PageInfo<LoginRouteArgs> page =
      _i35.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i36.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.NewsOhsFolderInsidePage]
class NewsOhsFolderInsideRoute
    extends _i35.PageRouteInfo<NewsOhsFolderInsideRouteArgs> {
  NewsOhsFolderInsideRoute({
    _i36.Key? key,
    required int parentId,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          NewsOhsFolderInsideRoute.name,
          args: NewsOhsFolderInsideRouteArgs(
            key: key,
            parentId: parentId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsOhsFolderInsideRoute';

  static const _i35.PageInfo<NewsOhsFolderInsideRouteArgs> page =
      _i35.PageInfo<NewsOhsFolderInsideRouteArgs>(name);
}

class NewsOhsFolderInsideRouteArgs {
  const NewsOhsFolderInsideRouteArgs({
    this.key,
    required this.parentId,
  });

  final _i36.Key? key;

  final int parentId;

  @override
  String toString() {
    return 'NewsOhsFolderInsideRouteArgs{key: $key, parentId: $parentId}';
  }
}

/// generated route for
/// [_i13.NotificationDetailPage]
class NotificationDetailRoute
    extends _i35.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i36.Key? key,
    required _i38.OhsRespModel data,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i35.PageInfo<NotificationDetailRouteArgs> page =
      _i35.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i36.Key? key;

  final _i38.OhsRespModel data;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i14.NotificationPage]
class NotificationRoute extends _i35.PageRouteInfo<void> {
  const NotificationRoute({List<_i35.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i15.OhsDetailPage]
class OhsDetailRoute extends _i35.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i36.Key? key,
    required _i38.OhsRespModel data,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i35.PageInfo<OhsDetailRouteArgs> page =
      _i35.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i36.Key? key;

  final _i38.OhsRespModel data;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i16.OhsMainPage]
class OhsMainRoute extends _i35.PageRouteInfo<void> {
  const OhsMainRoute({List<_i35.PageRouteInfo>? children})
      : super(
          OhsMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsMainRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ProfileCreationPage]
class ProfileCreationRoute
    extends _i35.PageRouteInfo<ProfileCreationRouteArgs> {
  ProfileCreationRoute({
    _i36.Key? key,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          ProfileCreationRoute.name,
          args: ProfileCreationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileCreationRoute';

  static const _i35.PageInfo<ProfileCreationRouteArgs> page =
      _i35.PageInfo<ProfileCreationRouteArgs>(name);
}

class ProfileCreationRouteArgs {
  const ProfileCreationRouteArgs({this.key});

  final _i36.Key? key;

  @override
  String toString() {
    return 'ProfileCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i18.SalesDetailPage]
class SalesDetailRoute extends _i35.PageRouteInfo<SalesDetailRouteArgs> {
  SalesDetailRoute({
    _i37.Key? key,
    required _i39.SalesModel? data,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          SalesDetailRoute.name,
          args: SalesDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SalesDetailRoute';

  static const _i35.PageInfo<SalesDetailRouteArgs> page =
      _i35.PageInfo<SalesDetailRouteArgs>(name);
}

class SalesDetailRouteArgs {
  const SalesDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i37.Key? key;

  final _i39.SalesModel? data;

  @override
  String toString() {
    return 'SalesDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i19.SalesPage]
class SalesRoute extends _i35.PageRouteInfo<void> {
  const SalesRoute({List<_i35.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SalesQuoteDetailListPage]
class SalesQuoteDetailListRoute extends _i35.PageRouteInfo<void> {
  const SalesQuoteDetailListRoute({List<_i35.PageRouteInfo>? children})
      : super(
          SalesQuoteDetailListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesQuoteDetailListRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i21.ScheduleMainPage]
class ScheduleMainRoute extends _i35.PageRouteInfo<void> {
  const ScheduleMainRoute({List<_i35.PageRouteInfo>? children})
      : super(
          ScheduleMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleMainRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i22.ScheduleVideoAndPhotoPage]
class ScheduleVideoAndPhotoRoute
    extends _i35.PageRouteInfo<ScheduleVideoAndPhotoRouteArgs> {
  ScheduleVideoAndPhotoRoute({
    _i36.Key? key,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          ScheduleVideoAndPhotoRoute.name,
          args: ScheduleVideoAndPhotoRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ScheduleVideoAndPhotoRoute';

  static const _i35.PageInfo<ScheduleVideoAndPhotoRouteArgs> page =
      _i35.PageInfo<ScheduleVideoAndPhotoRouteArgs>(name);
}

class ScheduleVideoAndPhotoRouteArgs {
  const ScheduleVideoAndPhotoRouteArgs({this.key});

  final _i36.Key? key;

  @override
  String toString() {
    return 'ScheduleVideoAndPhotoRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i23.SheduleCommentPage]
class SheduleCommentRoute extends _i35.PageRouteInfo<SheduleCommentRouteArgs> {
  SheduleCommentRoute({
    _i36.Key? key,
    required int id,
    required int i,
    List<_i35.PageRouteInfo>? children,
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

  static const _i35.PageInfo<SheduleCommentRouteArgs> page =
      _i35.PageInfo<SheduleCommentRouteArgs>(name);
}

class SheduleCommentRouteArgs {
  const SheduleCommentRouteArgs({
    this.key,
    required this.id,
    required this.i,
  });

  final _i36.Key? key;

  final int id;

  final int i;

  @override
  String toString() {
    return 'SheduleCommentRouteArgs{key: $key, id: $id, i: $i}';
  }
}

/// generated route for
/// [_i24.SheduleSignaturePage]
class SheduleSignatureRoute
    extends _i35.PageRouteInfo<SheduleSignatureRouteArgs> {
  SheduleSignatureRoute({
    required int i,
    _i40.Uint8List? picker,
    _i40.Uint8List? pickedtypes,
    required int id,
    _i36.Key? key,
    List<_i35.PageRouteInfo>? children,
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

  static const _i35.PageInfo<SheduleSignatureRouteArgs> page =
      _i35.PageInfo<SheduleSignatureRouteArgs>(name);
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

  final _i40.Uint8List? picker;

  final _i40.Uint8List? pickedtypes;

  final int id;

  final _i36.Key? key;

  @override
  String toString() {
    return 'SheduleSignatureRouteArgs{i: $i, picker: $picker, pickedtypes: $pickedtypes, id: $id, key: $key}';
  }
}

/// generated route for
/// [_i25.SheduledetailPage]
class SheduledetailRoute extends _i35.PageRouteInfo<SheduledetailRouteArgs> {
  SheduledetailRoute({
    _i36.Key? key,
    required int id,
    required int i,
    required int driversIndex,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          SheduledetailRoute.name,
          args: SheduledetailRouteArgs(
            key: key,
            id: id,
            i: i,
            driversIndex: driversIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'SheduledetailRoute';

  static const _i35.PageInfo<SheduledetailRouteArgs> page =
      _i35.PageInfo<SheduledetailRouteArgs>(name);
}

class SheduledetailRouteArgs {
  const SheduledetailRouteArgs({
    this.key,
    required this.id,
    required this.i,
    required this.driversIndex,
  });

  final _i36.Key? key;

  final int id;

  final int i;

  final int driversIndex;

  @override
  String toString() {
    return 'SheduledetailRouteArgs{key: $key, id: $id, i: $i, driversIndex: $driversIndex}';
  }
}

/// generated route for
/// [_i26.SiteDetailScreen]
class SiteDetailRoute extends _i35.PageRouteInfo<SiteDetailRouteArgs> {
  SiteDetailRoute({
    _i36.Key? key,
    required int index,
    required _i41.SiteType type,
    List<_i35.PageRouteInfo>? children,
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

  static const _i35.PageInfo<SiteDetailRouteArgs> page =
      _i35.PageInfo<SiteDetailRouteArgs>(name);
}

class SiteDetailRouteArgs {
  const SiteDetailRouteArgs({
    this.key,
    required this.index,
    required this.type,
  });

  final _i36.Key? key;

  final int index;

  final _i41.SiteType type;

  @override
  String toString() {
    return 'SiteDetailRouteArgs{key: $key, index: $index, type: $type}';
  }
}

/// generated route for
/// [_i27.SiteMainScreen]
class SiteMainRoute extends _i35.PageRouteInfo<void> {
  const SiteMainRoute({List<_i35.PageRouteInfo>? children})
      : super(
          SiteMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'SiteMainRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i28.TeamEditPage]
class TeamEditRoute extends _i35.PageRouteInfo<TeamEditRouteArgs> {
  TeamEditRoute({
    _i36.Key? key,
    required _i42.TeamProfileEmployeeDetailsResModel employeeDetatils,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          TeamEditRoute.name,
          args: TeamEditRouteArgs(
            key: key,
            employeeDetatils: employeeDetatils,
          ),
          initialChildren: children,
        );

  static const String name = 'TeamEditRoute';

  static const _i35.PageInfo<TeamEditRouteArgs> page =
      _i35.PageInfo<TeamEditRouteArgs>(name);
}

class TeamEditRouteArgs {
  const TeamEditRouteArgs({
    this.key,
    required this.employeeDetatils,
  });

  final _i36.Key? key;

  final _i42.TeamProfileEmployeeDetailsResModel employeeDetatils;

  @override
  String toString() {
    return 'TeamEditRouteArgs{key: $key, employeeDetatils: $employeeDetatils}';
  }
}

/// generated route for
/// [_i29.TeamPage]
class TeamRoute extends _i35.PageRouteInfo<void> {
  const TeamRoute({List<_i35.PageRouteInfo>? children})
      : super(
          TeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i30.TeamProfileScreen]
class TeamProfileRoute extends _i35.PageRouteInfo<TeamProfileRouteArgs> {
  TeamProfileRoute({
    _i36.Key? key,
    num? id,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          TeamProfileRoute.name,
          args: TeamProfileRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'TeamProfileRoute';

  static const _i35.PageInfo<TeamProfileRouteArgs> page =
      _i35.PageInfo<TeamProfileRouteArgs>(name);
}

class TeamProfileRouteArgs {
  const TeamProfileRouteArgs({
    this.key,
    this.id,
  });

  final _i36.Key? key;

  final num? id;

  @override
  String toString() {
    return 'TeamProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i31.UpdateVehicleStatusPage]
class UpdateVehicleStatusRoute extends _i35.PageRouteInfo<void> {
  const UpdateVehicleStatusRoute({List<_i35.PageRouteInfo>? children})
      : super(
          UpdateVehicleStatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateVehicleStatusRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}

/// generated route for
/// [_i32.UpdateVehiclepreinspectionPage]
class UpdateVehiclepreinspectionRoute
    extends _i35.PageRouteInfo<UpdateVehiclepreinspectionRouteArgs> {
  UpdateVehiclepreinspectionRoute({
    _i37.Key? key,
    required int index,
    required int driversIndex,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          UpdateVehiclepreinspectionRoute.name,
          args: UpdateVehiclepreinspectionRouteArgs(
            key: key,
            index: index,
            driversIndex: driversIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateVehiclepreinspectionRoute';

  static const _i35.PageInfo<UpdateVehiclepreinspectionRouteArgs> page =
      _i35.PageInfo<UpdateVehiclepreinspectionRouteArgs>(name);
}

class UpdateVehiclepreinspectionRouteArgs {
  const UpdateVehiclepreinspectionRouteArgs({
    this.key,
    required this.index,
    required this.driversIndex,
  });

  final _i37.Key? key;

  final int index;

  final int driversIndex;

  @override
  String toString() {
    return 'UpdateVehiclepreinspectionRouteArgs{key: $key, index: $index, driversIndex: $driversIndex}';
  }
}

/// generated route for
/// [_i33.VehicleDetailPage]
class VehicleDetailRoute extends _i35.PageRouteInfo<VehicleDetailRouteArgs> {
  VehicleDetailRoute({
    _i36.Key? key,
    required _i43.VehicleModel data,
    List<_i35.PageRouteInfo>? children,
  }) : super(
          VehicleDetailRoute.name,
          args: VehicleDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'VehicleDetailRoute';

  static const _i35.PageInfo<VehicleDetailRouteArgs> page =
      _i35.PageInfo<VehicleDetailRouteArgs>(name);
}

class VehicleDetailRouteArgs {
  const VehicleDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i36.Key? key;

  final _i43.VehicleModel data;

  @override
  String toString() {
    return 'VehicleDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i34.VehiclePage]
class VehicleRoute extends _i35.PageRouteInfo<void> {
  const VehicleRoute({List<_i35.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i35.PageInfo<void> page = _i35.PageInfo<void>(name);
}
