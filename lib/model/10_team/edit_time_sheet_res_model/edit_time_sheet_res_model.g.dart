// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_time_sheet_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditTimeSheetResModelImpl _$$EditTimeSheetResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditTimeSheetResModelImpl(
      id: json['id'] as num?,
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
      employee: json['employee'] as num?,
    );

Map<String, dynamic> _$$EditTimeSheetResModelImplToJson(
        _$EditTimeSheetResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekly_report': instance.weeklyReport,
      'timesheet_status': instance.timesheetStatus,
      'week_startdate': instance.weekStartdate,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
      'employee': instance.employee,
    };
