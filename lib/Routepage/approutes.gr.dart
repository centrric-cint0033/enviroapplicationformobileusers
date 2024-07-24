// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i55;

import 'package:auto_route/auto_route.dart' as _i47;
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart'
    as _i54;
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart'
    as _i49;
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart'
    as _i52;
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart'
    as _i57;
import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/week.dart'
    as _i50;
import 'package:enviro_mobile_application/model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart'
    as _i53;
import 'package:enviro_mobile_application/view/01_auth/login_page.dart' as _i17;
import 'package:enviro_mobile_application/view/02_sales/sales_detail_page.dart'
    as _i25;
import 'package:enviro_mobile_application/view/02_sales/sales_page.dart'
    as _i26;
import 'package:enviro_mobile_application/view/02_sales/sales_quote_detail_list_page.dart'
    as _i27;
import 'package:enviro_mobile_application/view/03_vehicles/add_fuel_expense.dart'
    as _i1;
import 'package:enviro_mobile_application/view/03_vehicles/add_maintenance_report.dart'
    as _i2;
import 'package:enviro_mobile_application/view/03_vehicles/edit_fuel_expense.dart'
    as _i7;
import 'package:enviro_mobile_application/view/03_vehicles/edit_maintenance_report.dart'
    as _i8;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_detail_page.dart'
    as _i43;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_folder_detail_page.dart'
    as _i44;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_folder_page.dart'
    as _i45;
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_main_page.dart'
    as _i46;
import 'package:enviro_mobile_application/view/04_ohs/notifcation_detail_page.dart'
    as _i18;
import 'package:enviro_mobile_application/view/04_ohs/notification_archive_page.dart'
    as _i4;
import 'package:enviro_mobile_application/view/04_ohs/oh&s_detail_page.dart'
    as _i20;
import 'package:enviro_mobile_application/view/04_ohs/ohs_folder_detail_page.dart'
    as _i21;
import 'package:enviro_mobile_application/view/04_ohs/ohs_main_page.dart'
    as _i22;
import 'package:enviro_mobile_application/view/07_intranet/intranet_folder_detail_page.dart'
    as _i12;
import 'package:enviro_mobile_application/view/07_intranet/intranet_main_page.dart'
    as _i13;
import 'package:enviro_mobile_application/view/08_notification_page/notification_page.dart'
    as _i19;
import 'package:enviro_mobile_application/view/08_team/add_team_page.dart'
    as _i3;
import 'package:enviro_mobile_application/view/08_team/employee_files_page.dart'
    as _i10;
import 'package:enviro_mobile_application/view/08_team/leave_application_page.dart'
    as _i16;
import 'package:enviro_mobile_application/view/08_team/team_edit_page.dart'
    as _i37;
import 'package:enviro_mobile_application/view/08_team/team_main_page.dart'
    as _i38;
import 'package:enviro_mobile_application/view/08_team/team_profile_screen.dart'
    as _i39;
import 'package:enviro_mobile_application/view/08_team/time_sheet_edit_page.dart'
    as _i9;
import 'package:enviro_mobile_application/view/08_team/time_sheet_page.dart'
    as _i40;
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart'
    as _i24;
import 'package:enviro_mobile_application/view/10_shedule/current_job_status.dart'
    as _i6;
import 'package:enviro_mobile_application/view/10_shedule/jobcard_page.dart'
    as _i15;
import 'package:enviro_mobile_application/view/10_shedule/schedule_calender_page.dart'
    as _i5;
import 'package:enviro_mobile_application/view/10_shedule/schedule_comment_page.dart'
    as _i31;
import 'package:enviro_mobile_application/view/10_shedule/schedule_detail_page.dart'
    as _i33;
import 'package:enviro_mobile_application/view/10_shedule/schedule_image_page.dart'
    as _i28;
import 'package:enviro_mobile_application/view/10_shedule/schedule_main_page.dart'
    as _i29;
import 'package:enviro_mobile_application/view/10_shedule/schedule_signature.dart'
    as _i32;
import 'package:enviro_mobile_application/view/10_shedule/schedule_video_page.dart'
    as _i30;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_preinspection.dart'
    as _i42;
import 'package:enviro_mobile_application/view/10_shedule/update_vehicle_status.dart'
    as _i41;
import 'package:enviro_mobile_application/view/10_site/previous_job_details_screen.dart'
    as _i23;
import 'package:enviro_mobile_application/view/10_site/site_detail_screen.dart'
    as _i34;
import 'package:enviro_mobile_application/view/10_site/site_folder_detail.dart'
    as _i35;
import 'package:enviro_mobile_application/view/10_site/site_main_screen.dart'
    as _i36;
import 'package:enviro_mobile_application/view/home_page.dart' as _i11;
import 'package:enviro_mobile_application/view/intranet_page/intranet_page.dart'
    as _i14;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i56;
import 'package:flutter/cupertino.dart' as _i51;
import 'package:flutter/material.dart' as _i48;

abstract class $AppRouter extends _i47.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i47.PageFactory> pagesMap = {
    AddFuelExpenseRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddFuelExpensePage(),
      );
    },
    AddMaintenanceReportRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddMaintenanceReportPage(),
      );
    },
    AddTeamRoute.name: (routeData) {
      final args = routeData.argsAs<AddTeamRouteArgs>(
          orElse: () => const AddTeamRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AddTeamPage(key: args.key),
      );
    },
    ArchiveNotificationRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ArchiveNotificationPage(),
      );
    },
    CalenderRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CalenderPage(),
      );
    },
    CurrentJobStatusRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CurrentJobStatusPage(),
      );
    },
    EditFuelExpenseRoute.name: (routeData) {
      final args = routeData.argsAs<EditFuelExpenseRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.EditFuelExpensePage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    EditMaintenanceReportRoute.name: (routeData) {
      final args = routeData.argsAs<EditMaintenanceReportRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.EditMaintenanceReportPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    EditTimeSheetRoute.name: (routeData) {
      final args = routeData.argsAs<EditTimeSheetRouteArgs>(
          orElse: () => const EditTimeSheetRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.EditTimeSheetPage(
          key: args.key,
          timesheetWeek: args.timesheetWeek,
          date: args.date,
          day: args.day,
          weekStartDate: args.weekStartDate,
        ),
      );
    },
    EmployeeFilesRoute.name: (routeData) {
      final args = routeData.argsAs<EmployeeFilesRouteArgs>(
          orElse: () => const EmployeeFilesRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.EmployeeFilesPage(
          key: args.key,
          employeeId: args.employeeId,
          folderName: args.folderName,
          folderId: args.folderId,
          searchType: args.searchType,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.HomePage(),
      );
    },
    IntranetFolderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetFolderDetailRouteArgs>(
          orElse: () => const IntranetFolderDetailRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.IntranetFolderDetailPage(
          key: args.key,
          folderName: args.folderName,
          searchType: args.searchType,
        ),
      );
    },
    IntranetMainRoute.name: (routeData) {
      final args = routeData.argsAs<IntranetMainRouteArgs>(
          orElse: () => const IntranetMainRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.IntranetMainPage(
          key: args.key,
          vehicleId: args.vehicleId,
          vehicleType: args.vehicleType,
        ),
      );
    },
    IntranetRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.IntranetPage(),
      );
    },
    JobCardRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.JobCardPage(),
      );
    },
    LeaveApplicationRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.LeaveApplicationPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.LoginPage(key: args.key),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.NotificationDetailPage(
          key: args.key,
          data: args.data,
          index: args.index,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.NotificationPage(),
      );
    },
    OhsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsDetailRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.OhsDetailPage(
          key: args.key,
          data: args.data,
          index: args.index,
        ),
      );
    },
    OhsFolderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OhsFolderDetailRouteArgs>(
          orElse: () => const OhsFolderDetailRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.OhsFolderDetailPage(
          key: args.key,
          folderName: args.folderName,
          searchType: args.searchType,
        ),
      );
    },
    OhsMainRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.OhsMainPage(),
      );
    },
    PreviousJobetailRoute.name: (routeData) {
      final args = routeData.argsAs<PreviousJobetailRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.PreviousJobetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    ProfileCreationRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileCreationRouteArgs>(
          orElse: () => const ProfileCreationRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.ProfileCreationPage(key: args.key),
      );
    },
    SalesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SalesDetailRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.SalesDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SalesRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SalesPage(),
      );
    },
    SalesQuoteDetailListRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SalesQuoteDetailListPage(),
      );
    },
    ScheduleImageRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleImageRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.ScheduleImageScreen(
          key: args.key,
          fromJobStarted: args.fromJobStarted,
          id: args.id,
          fromAddMedia: args.fromAddMedia,
        ),
      );
    },
    ScheduleMainRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.ScheduleMainPage(),
      );
    },
    ScheduleVideoRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleVideoRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.ScheduleVideoScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    SheduleCommentRoute.name: (routeData) {
      final args = routeData.argsAs<SheduleCommentRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i31.SheduleCommentPage(
          key: args.key,
          id: args.id,
          i: args.i,
        ),
      );
    },
    SheduleSignatureRoute.name: (routeData) {
      final args = routeData.argsAs<SheduleSignatureRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.SheduleSignaturePage(
          i: args.i,
          pickedtypes: args.pickedtypes,
          id: args.id,
          key: args.key,
        ),
      );
    },
    SheduledetailRoute.name: (routeData) {
      final args = routeData.argsAs<SheduledetailRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i33.SheduledetailPage(
          key: args.key,
          id: args.id,
          i: args.i,
          driversIndex: args.driversIndex,
        ),
      );
    },
    SiteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SiteDetailRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i34.SiteDetailScreen(
          key: args.key,
          index: args.index,
          type: args.type,
        ),
      );
    },
    SiteFolderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SiteFolderDetailRouteArgs>(
          orElse: () => const SiteFolderDetailRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i35.SiteFolderDetailPage(
          key: args.key,
          folderName: args.folderName,
          searchType: args.searchType,
          siteId: args.siteId,
        ),
      );
    },
    SiteMainRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.SiteMainScreen(),
      );
    },
    TeamEditRoute.name: (routeData) {
      final args = routeData.argsAs<TeamEditRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i37.TeamEditPage(
          key: args.key,
          employeeDetatils: args.employeeDetatils,
        ),
      );
    },
    TeamRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i38.TeamPage(),
      );
    },
    TeamProfileRoute.name: (routeData) {
      final args = routeData.argsAs<TeamProfileRouteArgs>(
          orElse: () => const TeamProfileRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i39.TeamProfileScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    TimeSheetRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i40.TimeSheetPage(),
      );
    },
    UpdateVehicleStatusRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i41.UpdateVehicleStatusPage(),
      );
    },
    UpdateVehiclepreinspectionRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateVehiclepreinspectionRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i42.UpdateVehiclepreinspectionPage(
          key: args.key,
          index: args.index,
          driversIndex: args.driversIndex,
        ),
      );
    },
    VehicleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<VehicleDetailRouteArgs>();
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i43.VehicleDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    VehicleFolderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<VehicleFolderDetailRouteArgs>(
          orElse: () => const VehicleFolderDetailRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i44.VehicleFolderDetailPage(
          key: args.key,
          folderName: args.folderName,
          searchType: args.searchType,
          vehicleId: args.vehicleId,
          vehicleType: args.vehicleType,
          folder: args.folder,
        ),
      );
    },
    VehicleFolderRoute.name: (routeData) {
      final args = routeData.argsAs<VehicleFolderRouteArgs>(
          orElse: () => const VehicleFolderRouteArgs());
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i45.VehicleFolderPage(
          key: args.key,
          vehicleId: args.vehicleId,
          vehicleType: args.vehicleType,
        ),
      );
    },
    VehicleRoute.name: (routeData) {
      return _i47.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i46.VehiclePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddFuelExpensePage]
class AddFuelExpenseRoute extends _i47.PageRouteInfo<void> {
  const AddFuelExpenseRoute({List<_i47.PageRouteInfo>? children})
      : super(
          AddFuelExpenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddFuelExpenseRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddMaintenanceReportPage]
class AddMaintenanceReportRoute extends _i47.PageRouteInfo<void> {
  const AddMaintenanceReportRoute({List<_i47.PageRouteInfo>? children})
      : super(
          AddMaintenanceReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddMaintenanceReportRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddTeamPage]
class AddTeamRoute extends _i47.PageRouteInfo<AddTeamRouteArgs> {
  AddTeamRoute({
    _i48.Key? key,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          AddTeamRoute.name,
          args: AddTeamRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddTeamRoute';

  static const _i47.PageInfo<AddTeamRouteArgs> page =
      _i47.PageInfo<AddTeamRouteArgs>(name);
}

class AddTeamRouteArgs {
  const AddTeamRouteArgs({this.key});

  final _i48.Key? key;

  @override
  String toString() {
    return 'AddTeamRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.ArchiveNotificationPage]
class ArchiveNotificationRoute extends _i47.PageRouteInfo<void> {
  const ArchiveNotificationRoute({List<_i47.PageRouteInfo>? children})
      : super(
          ArchiveNotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArchiveNotificationRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CalenderPage]
class CalenderRoute extends _i47.PageRouteInfo<void> {
  const CalenderRoute({List<_i47.PageRouteInfo>? children})
      : super(
          CalenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalenderRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CurrentJobStatusPage]
class CurrentJobStatusRoute extends _i47.PageRouteInfo<void> {
  const CurrentJobStatusRoute({List<_i47.PageRouteInfo>? children})
      : super(
          CurrentJobStatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurrentJobStatusRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EditFuelExpensePage]
class EditFuelExpenseRoute
    extends _i47.PageRouteInfo<EditFuelExpenseRouteArgs> {
  EditFuelExpenseRoute({
    _i48.Key? key,
    required _i49.VehicleModel data,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          EditFuelExpenseRoute.name,
          args: EditFuelExpenseRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'EditFuelExpenseRoute';

  static const _i47.PageInfo<EditFuelExpenseRouteArgs> page =
      _i47.PageInfo<EditFuelExpenseRouteArgs>(name);
}

class EditFuelExpenseRouteArgs {
  const EditFuelExpenseRouteArgs({
    this.key,
    required this.data,
  });

  final _i48.Key? key;

  final _i49.VehicleModel data;

  @override
  String toString() {
    return 'EditFuelExpenseRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i8.EditMaintenanceReportPage]
class EditMaintenanceReportRoute
    extends _i47.PageRouteInfo<EditMaintenanceReportRouteArgs> {
  EditMaintenanceReportRoute({
    _i48.Key? key,
    required _i49.VehicleModel data,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          EditMaintenanceReportRoute.name,
          args: EditMaintenanceReportRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'EditMaintenanceReportRoute';

  static const _i47.PageInfo<EditMaintenanceReportRouteArgs> page =
      _i47.PageInfo<EditMaintenanceReportRouteArgs>(name);
}

class EditMaintenanceReportRouteArgs {
  const EditMaintenanceReportRouteArgs({
    this.key,
    required this.data,
  });

  final _i48.Key? key;

  final _i49.VehicleModel data;

  @override
  String toString() {
    return 'EditMaintenanceReportRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i9.EditTimeSheetPage]
class EditTimeSheetRoute extends _i47.PageRouteInfo<EditTimeSheetRouteArgs> {
  EditTimeSheetRoute({
    _i48.Key? key,
    _i50.Week? timesheetWeek,
    String? date,
    String? day,
    String? weekStartDate,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          EditTimeSheetRoute.name,
          args: EditTimeSheetRouteArgs(
            key: key,
            timesheetWeek: timesheetWeek,
            date: date,
            day: day,
            weekStartDate: weekStartDate,
          ),
          initialChildren: children,
        );

  static const String name = 'EditTimeSheetRoute';

  static const _i47.PageInfo<EditTimeSheetRouteArgs> page =
      _i47.PageInfo<EditTimeSheetRouteArgs>(name);
}

class EditTimeSheetRouteArgs {
  const EditTimeSheetRouteArgs({
    this.key,
    this.timesheetWeek,
    this.date,
    this.day,
    this.weekStartDate,
  });

  final _i48.Key? key;

  final _i50.Week? timesheetWeek;

  final String? date;

  final String? day;

  final String? weekStartDate;

  @override
  String toString() {
    return 'EditTimeSheetRouteArgs{key: $key, timesheetWeek: $timesheetWeek, date: $date, day: $day, weekStartDate: $weekStartDate}';
  }
}

/// generated route for
/// [_i10.EmployeeFilesPage]
class EmployeeFilesRoute extends _i47.PageRouteInfo<EmployeeFilesRouteArgs> {
  EmployeeFilesRoute({
    _i51.Key? key,
    num? employeeId,
    String? folderName,
    num? folderId,
    String? searchType,
    List<_i47.PageRouteInfo>? children,
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

  static const _i47.PageInfo<EmployeeFilesRouteArgs> page =
      _i47.PageInfo<EmployeeFilesRouteArgs>(name);
}

class EmployeeFilesRouteArgs {
  const EmployeeFilesRouteArgs({
    this.key,
    this.employeeId,
    this.folderName,
    this.folderId,
    this.searchType,
  });

  final _i51.Key? key;

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
/// [_i11.HomePage]
class HomeRoute extends _i47.PageRouteInfo<void> {
  const HomeRoute({List<_i47.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i12.IntranetFolderDetailPage]
class IntranetFolderDetailRoute
    extends _i47.PageRouteInfo<IntranetFolderDetailRouteArgs> {
  IntranetFolderDetailRoute({
    _i51.Key? key,
    String? folderName,
    String? searchType,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          IntranetFolderDetailRoute.name,
          args: IntranetFolderDetailRouteArgs(
            key: key,
            folderName: folderName,
            searchType: searchType,
          ),
          initialChildren: children,
        );

  static const String name = 'IntranetFolderDetailRoute';

  static const _i47.PageInfo<IntranetFolderDetailRouteArgs> page =
      _i47.PageInfo<IntranetFolderDetailRouteArgs>(name);
}

class IntranetFolderDetailRouteArgs {
  const IntranetFolderDetailRouteArgs({
    this.key,
    this.folderName,
    this.searchType,
  });

  final _i51.Key? key;

  final String? folderName;

  final String? searchType;

  @override
  String toString() {
    return 'IntranetFolderDetailRouteArgs{key: $key, folderName: $folderName, searchType: $searchType}';
  }
}

/// generated route for
/// [_i13.IntranetMainPage]
class IntranetMainRoute extends _i47.PageRouteInfo<IntranetMainRouteArgs> {
  IntranetMainRoute({
    _i48.Key? key,
    int? vehicleId,
    String? vehicleType,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          IntranetMainRoute.name,
          args: IntranetMainRouteArgs(
            key: key,
            vehicleId: vehicleId,
            vehicleType: vehicleType,
          ),
          initialChildren: children,
        );

  static const String name = 'IntranetMainRoute';

  static const _i47.PageInfo<IntranetMainRouteArgs> page =
      _i47.PageInfo<IntranetMainRouteArgs>(name);
}

class IntranetMainRouteArgs {
  const IntranetMainRouteArgs({
    this.key,
    this.vehicleId,
    this.vehicleType,
  });

  final _i48.Key? key;

  final int? vehicleId;

  final String? vehicleType;

  @override
  String toString() {
    return 'IntranetMainRouteArgs{key: $key, vehicleId: $vehicleId, vehicleType: $vehicleType}';
  }
}

/// generated route for
/// [_i14.IntranetPage]
class IntranetRoute extends _i47.PageRouteInfo<void> {
  const IntranetRoute({List<_i47.PageRouteInfo>? children})
      : super(
          IntranetRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntranetRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i15.JobCardPage]
class JobCardRoute extends _i47.PageRouteInfo<void> {
  const JobCardRoute({List<_i47.PageRouteInfo>? children})
      : super(
          JobCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobCardRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i16.LeaveApplicationPage]
class LeaveApplicationRoute extends _i47.PageRouteInfo<void> {
  const LeaveApplicationRoute({List<_i47.PageRouteInfo>? children})
      : super(
          LeaveApplicationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeaveApplicationRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i17.LoginPage]
class LoginRoute extends _i47.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i48.Key? key,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i47.PageInfo<LoginRouteArgs> page =
      _i47.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i48.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i18.NotificationDetailPage]
class NotificationDetailRoute
    extends _i47.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i48.Key? key,
    required _i52.OhsRespModel data,
    required int index,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            data: data,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i47.PageInfo<NotificationDetailRouteArgs> page =
      _i47.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.data,
    required this.index,
  });

  final _i48.Key? key;

  final _i52.OhsRespModel data;

  final int index;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, data: $data, index: $index}';
  }
}

/// generated route for
/// [_i19.NotificationPage]
class NotificationRoute extends _i47.PageRouteInfo<void> {
  const NotificationRoute({List<_i47.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i20.OhsDetailPage]
class OhsDetailRoute extends _i47.PageRouteInfo<OhsDetailRouteArgs> {
  OhsDetailRoute({
    _i48.Key? key,
    required _i52.OhsRespModel data,
    required int index,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          OhsDetailRoute.name,
          args: OhsDetailRouteArgs(
            key: key,
            data: data,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsDetailRoute';

  static const _i47.PageInfo<OhsDetailRouteArgs> page =
      _i47.PageInfo<OhsDetailRouteArgs>(name);
}

class OhsDetailRouteArgs {
  const OhsDetailRouteArgs({
    this.key,
    required this.data,
    required this.index,
  });

  final _i48.Key? key;

  final _i52.OhsRespModel data;

  final int index;

  @override
  String toString() {
    return 'OhsDetailRouteArgs{key: $key, data: $data, index: $index}';
  }
}

/// generated route for
/// [_i21.OhsFolderDetailPage]
class OhsFolderDetailRoute
    extends _i47.PageRouteInfo<OhsFolderDetailRouteArgs> {
  OhsFolderDetailRoute({
    _i51.Key? key,
    String? folderName,
    String? searchType,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          OhsFolderDetailRoute.name,
          args: OhsFolderDetailRouteArgs(
            key: key,
            folderName: folderName,
            searchType: searchType,
          ),
          initialChildren: children,
        );

  static const String name = 'OhsFolderDetailRoute';

  static const _i47.PageInfo<OhsFolderDetailRouteArgs> page =
      _i47.PageInfo<OhsFolderDetailRouteArgs>(name);
}

class OhsFolderDetailRouteArgs {
  const OhsFolderDetailRouteArgs({
    this.key,
    this.folderName,
    this.searchType,
  });

  final _i51.Key? key;

  final String? folderName;

  final String? searchType;

  @override
  String toString() {
    return 'OhsFolderDetailRouteArgs{key: $key, folderName: $folderName, searchType: $searchType}';
  }
}

/// generated route for
/// [_i22.OhsMainPage]
class OhsMainRoute extends _i47.PageRouteInfo<void> {
  const OhsMainRoute({List<_i47.PageRouteInfo>? children})
      : super(
          OhsMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'OhsMainRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i23.PreviousJobetailPage]
class PreviousJobetailRoute
    extends _i47.PageRouteInfo<PreviousJobetailRouteArgs> {
  PreviousJobetailRoute({
    _i48.Key? key,
    required _i53.PreviousSaleResModel data,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          PreviousJobetailRoute.name,
          args: PreviousJobetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'PreviousJobetailRoute';

  static const _i47.PageInfo<PreviousJobetailRouteArgs> page =
      _i47.PageInfo<PreviousJobetailRouteArgs>(name);
}

class PreviousJobetailRouteArgs {
  const PreviousJobetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i48.Key? key;

  final _i53.PreviousSaleResModel data;

  @override
  String toString() {
    return 'PreviousJobetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i24.ProfileCreationPage]
class ProfileCreationRoute
    extends _i47.PageRouteInfo<ProfileCreationRouteArgs> {
  ProfileCreationRoute({
    _i48.Key? key,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          ProfileCreationRoute.name,
          args: ProfileCreationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileCreationRoute';

  static const _i47.PageInfo<ProfileCreationRouteArgs> page =
      _i47.PageInfo<ProfileCreationRouteArgs>(name);
}

class ProfileCreationRouteArgs {
  const ProfileCreationRouteArgs({this.key});

  final _i48.Key? key;

  @override
  String toString() {
    return 'ProfileCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i25.SalesDetailPage]
class SalesDetailRoute extends _i47.PageRouteInfo<SalesDetailRouteArgs> {
  SalesDetailRoute({
    _i51.Key? key,
    required _i54.SalesModel? data,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          SalesDetailRoute.name,
          args: SalesDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SalesDetailRoute';

  static const _i47.PageInfo<SalesDetailRouteArgs> page =
      _i47.PageInfo<SalesDetailRouteArgs>(name);
}

class SalesDetailRouteArgs {
  const SalesDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i51.Key? key;

  final _i54.SalesModel? data;

  @override
  String toString() {
    return 'SalesDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i26.SalesPage]
class SalesRoute extends _i47.PageRouteInfo<void> {
  const SalesRoute({List<_i47.PageRouteInfo>? children})
      : super(
          SalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i27.SalesQuoteDetailListPage]
class SalesQuoteDetailListRoute extends _i47.PageRouteInfo<void> {
  const SalesQuoteDetailListRoute({List<_i47.PageRouteInfo>? children})
      : super(
          SalesQuoteDetailListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesQuoteDetailListRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i28.ScheduleImageScreen]
class ScheduleImageRoute extends _i47.PageRouteInfo<ScheduleImageRouteArgs> {
  ScheduleImageRoute({
    _i48.Key? key,
    bool fromJobStarted = false,
    required int id,
    bool fromAddMedia = false,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          ScheduleImageRoute.name,
          args: ScheduleImageRouteArgs(
            key: key,
            fromJobStarted: fromJobStarted,
            id: id,
            fromAddMedia: fromAddMedia,
          ),
          initialChildren: children,
        );

  static const String name = 'ScheduleImageRoute';

  static const _i47.PageInfo<ScheduleImageRouteArgs> page =
      _i47.PageInfo<ScheduleImageRouteArgs>(name);
}

class ScheduleImageRouteArgs {
  const ScheduleImageRouteArgs({
    this.key,
    this.fromJobStarted = false,
    required this.id,
    this.fromAddMedia = false,
  });

  final _i48.Key? key;

  final bool fromJobStarted;

  final int id;

  final bool fromAddMedia;

  @override
  String toString() {
    return 'ScheduleImageRouteArgs{key: $key, fromJobStarted: $fromJobStarted, id: $id, fromAddMedia: $fromAddMedia}';
  }
}

/// generated route for
/// [_i29.ScheduleMainPage]
class ScheduleMainRoute extends _i47.PageRouteInfo<void> {
  const ScheduleMainRoute({List<_i47.PageRouteInfo>? children})
      : super(
          ScheduleMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleMainRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i30.ScheduleVideoScreen]
class ScheduleVideoRoute extends _i47.PageRouteInfo<ScheduleVideoRouteArgs> {
  ScheduleVideoRoute({
    _i48.Key? key,
    required int id,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          ScheduleVideoRoute.name,
          args: ScheduleVideoRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ScheduleVideoRoute';

  static const _i47.PageInfo<ScheduleVideoRouteArgs> page =
      _i47.PageInfo<ScheduleVideoRouteArgs>(name);
}

class ScheduleVideoRouteArgs {
  const ScheduleVideoRouteArgs({
    this.key,
    required this.id,
  });

  final _i48.Key? key;

  final int id;

  @override
  String toString() {
    return 'ScheduleVideoRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i31.SheduleCommentPage]
class SheduleCommentRoute extends _i47.PageRouteInfo<SheduleCommentRouteArgs> {
  SheduleCommentRoute({
    _i48.Key? key,
    required int id,
    required int i,
    List<_i47.PageRouteInfo>? children,
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

  static const _i47.PageInfo<SheduleCommentRouteArgs> page =
      _i47.PageInfo<SheduleCommentRouteArgs>(name);
}

class SheduleCommentRouteArgs {
  const SheduleCommentRouteArgs({
    this.key,
    required this.id,
    required this.i,
  });

  final _i48.Key? key;

  final int id;

  final int i;

  @override
  String toString() {
    return 'SheduleCommentRouteArgs{key: $key, id: $id, i: $i}';
  }
}

/// generated route for
/// [_i32.SheduleSignaturePage]
class SheduleSignatureRoute
    extends _i47.PageRouteInfo<SheduleSignatureRouteArgs> {
  SheduleSignatureRoute({
    required int i,
    _i55.Uint8List? pickedtypes,
    required int id,
    _i48.Key? key,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          SheduleSignatureRoute.name,
          args: SheduleSignatureRouteArgs(
            i: i,
            pickedtypes: pickedtypes,
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SheduleSignatureRoute';

  static const _i47.PageInfo<SheduleSignatureRouteArgs> page =
      _i47.PageInfo<SheduleSignatureRouteArgs>(name);
}

class SheduleSignatureRouteArgs {
  const SheduleSignatureRouteArgs({
    required this.i,
    this.pickedtypes,
    required this.id,
    this.key,
  });

  final int i;

  final _i55.Uint8List? pickedtypes;

  final int id;

  final _i48.Key? key;

  @override
  String toString() {
    return 'SheduleSignatureRouteArgs{i: $i, pickedtypes: $pickedtypes, id: $id, key: $key}';
  }
}

/// generated route for
/// [_i33.SheduledetailPage]
class SheduledetailRoute extends _i47.PageRouteInfo<SheduledetailRouteArgs> {
  SheduledetailRoute({
    _i48.Key? key,
    required int id,
    required int i,
    required int driversIndex,
    List<_i47.PageRouteInfo>? children,
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

  static const _i47.PageInfo<SheduledetailRouteArgs> page =
      _i47.PageInfo<SheduledetailRouteArgs>(name);
}

class SheduledetailRouteArgs {
  const SheduledetailRouteArgs({
    this.key,
    required this.id,
    required this.i,
    required this.driversIndex,
  });

  final _i48.Key? key;

  final int id;

  final int i;

  final int driversIndex;

  @override
  String toString() {
    return 'SheduledetailRouteArgs{key: $key, id: $id, i: $i, driversIndex: $driversIndex}';
  }
}

/// generated route for
/// [_i34.SiteDetailScreen]
class SiteDetailRoute extends _i47.PageRouteInfo<SiteDetailRouteArgs> {
  SiteDetailRoute({
    _i48.Key? key,
    required int index,
    required _i56.SiteType type,
    List<_i47.PageRouteInfo>? children,
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

  static const _i47.PageInfo<SiteDetailRouteArgs> page =
      _i47.PageInfo<SiteDetailRouteArgs>(name);
}

class SiteDetailRouteArgs {
  const SiteDetailRouteArgs({
    this.key,
    required this.index,
    required this.type,
  });

  final _i48.Key? key;

  final int index;

  final _i56.SiteType type;

  @override
  String toString() {
    return 'SiteDetailRouteArgs{key: $key, index: $index, type: $type}';
  }
}

/// generated route for
/// [_i35.SiteFolderDetailPage]
class SiteFolderDetailRoute
    extends _i47.PageRouteInfo<SiteFolderDetailRouteArgs> {
  SiteFolderDetailRoute({
    _i51.Key? key,
    String? folderName,
    String? searchType,
    int? siteId,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          SiteFolderDetailRoute.name,
          args: SiteFolderDetailRouteArgs(
            key: key,
            folderName: folderName,
            searchType: searchType,
            siteId: siteId,
          ),
          initialChildren: children,
        );

  static const String name = 'SiteFolderDetailRoute';

  static const _i47.PageInfo<SiteFolderDetailRouteArgs> page =
      _i47.PageInfo<SiteFolderDetailRouteArgs>(name);
}

class SiteFolderDetailRouteArgs {
  const SiteFolderDetailRouteArgs({
    this.key,
    this.folderName,
    this.searchType,
    this.siteId,
  });

  final _i51.Key? key;

  final String? folderName;

  final String? searchType;

  final int? siteId;

  @override
  String toString() {
    return 'SiteFolderDetailRouteArgs{key: $key, folderName: $folderName, searchType: $searchType, siteId: $siteId}';
  }
}

/// generated route for
/// [_i36.SiteMainScreen]
class SiteMainRoute extends _i47.PageRouteInfo<void> {
  const SiteMainRoute({List<_i47.PageRouteInfo>? children})
      : super(
          SiteMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'SiteMainRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i37.TeamEditPage]
class TeamEditRoute extends _i47.PageRouteInfo<TeamEditRouteArgs> {
  TeamEditRoute({
    _i48.Key? key,
    required _i57.TeamProfileEmployeeDetailsResModel employeeDetatils,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          TeamEditRoute.name,
          args: TeamEditRouteArgs(
            key: key,
            employeeDetatils: employeeDetatils,
          ),
          initialChildren: children,
        );

  static const String name = 'TeamEditRoute';

  static const _i47.PageInfo<TeamEditRouteArgs> page =
      _i47.PageInfo<TeamEditRouteArgs>(name);
}

class TeamEditRouteArgs {
  const TeamEditRouteArgs({
    this.key,
    required this.employeeDetatils,
  });

  final _i48.Key? key;

  final _i57.TeamProfileEmployeeDetailsResModel employeeDetatils;

  @override
  String toString() {
    return 'TeamEditRouteArgs{key: $key, employeeDetatils: $employeeDetatils}';
  }
}

/// generated route for
/// [_i38.TeamPage]
class TeamRoute extends _i47.PageRouteInfo<void> {
  const TeamRoute({List<_i47.PageRouteInfo>? children})
      : super(
          TeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeamRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i39.TeamProfileScreen]
class TeamProfileRoute extends _i47.PageRouteInfo<TeamProfileRouteArgs> {
  TeamProfileRoute({
    _i48.Key? key,
    num? id,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          TeamProfileRoute.name,
          args: TeamProfileRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'TeamProfileRoute';

  static const _i47.PageInfo<TeamProfileRouteArgs> page =
      _i47.PageInfo<TeamProfileRouteArgs>(name);
}

class TeamProfileRouteArgs {
  const TeamProfileRouteArgs({
    this.key,
    this.id,
  });

  final _i48.Key? key;

  final num? id;

  @override
  String toString() {
    return 'TeamProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i40.TimeSheetPage]
class TimeSheetRoute extends _i47.PageRouteInfo<void> {
  const TimeSheetRoute({List<_i47.PageRouteInfo>? children})
      : super(
          TimeSheetRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeSheetRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i41.UpdateVehicleStatusPage]
class UpdateVehicleStatusRoute extends _i47.PageRouteInfo<void> {
  const UpdateVehicleStatusRoute({List<_i47.PageRouteInfo>? children})
      : super(
          UpdateVehicleStatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateVehicleStatusRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}

/// generated route for
/// [_i42.UpdateVehiclepreinspectionPage]
class UpdateVehiclepreinspectionRoute
    extends _i47.PageRouteInfo<UpdateVehiclepreinspectionRouteArgs> {
  UpdateVehiclepreinspectionRoute({
    _i51.Key? key,
    required int index,
    required int driversIndex,
    List<_i47.PageRouteInfo>? children,
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

  static const _i47.PageInfo<UpdateVehiclepreinspectionRouteArgs> page =
      _i47.PageInfo<UpdateVehiclepreinspectionRouteArgs>(name);
}

class UpdateVehiclepreinspectionRouteArgs {
  const UpdateVehiclepreinspectionRouteArgs({
    this.key,
    required this.index,
    required this.driversIndex,
  });

  final _i51.Key? key;

  final int index;

  final int driversIndex;

  @override
  String toString() {
    return 'UpdateVehiclepreinspectionRouteArgs{key: $key, index: $index, driversIndex: $driversIndex}';
  }
}

/// generated route for
/// [_i43.VehicleDetailPage]
class VehicleDetailRoute extends _i47.PageRouteInfo<VehicleDetailRouteArgs> {
  VehicleDetailRoute({
    _i48.Key? key,
    required _i49.VehicleModel data,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          VehicleDetailRoute.name,
          args: VehicleDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'VehicleDetailRoute';

  static const _i47.PageInfo<VehicleDetailRouteArgs> page =
      _i47.PageInfo<VehicleDetailRouteArgs>(name);
}

class VehicleDetailRouteArgs {
  const VehicleDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i48.Key? key;

  final _i49.VehicleModel data;

  @override
  String toString() {
    return 'VehicleDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i44.VehicleFolderDetailPage]
class VehicleFolderDetailRoute
    extends _i47.PageRouteInfo<VehicleFolderDetailRouteArgs> {
  VehicleFolderDetailRoute({
    _i51.Key? key,
    String? folderName,
    String? searchType,
    int? vehicleId,
    String? vehicleType,
    int? folder,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          VehicleFolderDetailRoute.name,
          args: VehicleFolderDetailRouteArgs(
            key: key,
            folderName: folderName,
            searchType: searchType,
            vehicleId: vehicleId,
            vehicleType: vehicleType,
            folder: folder,
          ),
          initialChildren: children,
        );

  static const String name = 'VehicleFolderDetailRoute';

  static const _i47.PageInfo<VehicleFolderDetailRouteArgs> page =
      _i47.PageInfo<VehicleFolderDetailRouteArgs>(name);
}

class VehicleFolderDetailRouteArgs {
  const VehicleFolderDetailRouteArgs({
    this.key,
    this.folderName,
    this.searchType,
    this.vehicleId,
    this.vehicleType,
    this.folder,
  });

  final _i51.Key? key;

  final String? folderName;

  final String? searchType;

  final int? vehicleId;

  final String? vehicleType;

  final int? folder;

  @override
  String toString() {
    return 'VehicleFolderDetailRouteArgs{key: $key, folderName: $folderName, searchType: $searchType, vehicleId: $vehicleId, vehicleType: $vehicleType, folder: $folder}';
  }
}

/// generated route for
/// [_i45.VehicleFolderPage]
class VehicleFolderRoute extends _i47.PageRouteInfo<VehicleFolderRouteArgs> {
  VehicleFolderRoute({
    _i48.Key? key,
    int? vehicleId,
    String? vehicleType,
    List<_i47.PageRouteInfo>? children,
  }) : super(
          VehicleFolderRoute.name,
          args: VehicleFolderRouteArgs(
            key: key,
            vehicleId: vehicleId,
            vehicleType: vehicleType,
          ),
          initialChildren: children,
        );

  static const String name = 'VehicleFolderRoute';

  static const _i47.PageInfo<VehicleFolderRouteArgs> page =
      _i47.PageInfo<VehicleFolderRouteArgs>(name);
}

class VehicleFolderRouteArgs {
  const VehicleFolderRouteArgs({
    this.key,
    this.vehicleId,
    this.vehicleType,
  });

  final _i48.Key? key;

  final int? vehicleId;

  final String? vehicleType;

  @override
  String toString() {
    return 'VehicleFolderRouteArgs{key: $key, vehicleId: $vehicleId, vehicleType: $vehicleType}';
  }
}

/// generated route for
/// [_i46.VehiclePage]
class VehicleRoute extends _i47.PageRouteInfo<void> {
  const VehicleRoute({List<_i47.PageRouteInfo>? children})
      : super(
          VehicleRoute.name,
          initialChildren: children,
        );

  static const String name = 'VehicleRoute';

  static const _i47.PageInfo<void> page = _i47.PageInfo<void>(name);
}
