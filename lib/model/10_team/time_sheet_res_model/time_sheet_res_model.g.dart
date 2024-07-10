// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_sheet_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSheetResModelImpl _$$TimeSheetResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeSheetResModelImpl(
      id: json['id'] as num?,
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
      weeklyReport: json['weekly_report'] == null
          ? null
          : WeeklyReport.fromJson(
              json['weekly_report'] as Map<String, dynamic>),
      timesheetStatus: json['timesheet_status'] as String?,
      weekStartdate: json['week_startdate'] as String?,
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      editedDateTime: json['edited_date_time'] == null
          ? null
          : DateTime.parse(json['edited_date_time'] as String),
    );

Map<String, dynamic> _$$TimeSheetResModelImplToJson(
        _$TimeSheetResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee': instance.employee,
      'weekly_report': instance.weeklyReport,
      'timesheet_status': instance.timesheetStatus,
      'week_startdate': instance.weekStartdate,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
    };
