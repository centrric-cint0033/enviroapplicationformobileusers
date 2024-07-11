// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyReportImpl _$$WeeklyReportImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyReportImpl(
      employeeId: json['employee_id'],
      comments: json['comments'],
      employeeSignature: json['employee_signature'],
      managerSignature: json['manager_signature'],
      attachment: json['attachment'] as String?,
      wholeHoursTotalWorked: json['whole_hours_total_worked'] == null
          ? null
          : WholeHoursTotalWorked.fromJson(
              json['whole_hours_total_worked'] as Map<String, dynamic>),
      wholeWeekMinus: json['whole_week_minus'] == null
          ? null
          : WholeWeekMinus.fromJson(
              json['whole_week_minus'] as Map<String, dynamic>),
      wholePaidHours: json['whole_paid_hours'] == null
          ? null
          : WholePaidHours.fromJson(
              json['whole_paid_hours'] as Map<String, dynamic>),
      week: (json['week'] as List<dynamic>?)
          ?.map((e) => Week.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeeklyReportImplToJson(_$WeeklyReportImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'comments': instance.comments,
      'employee_signature': instance.employeeSignature,
      'manager_signature': instance.managerSignature,
      'attachment': instance.attachment,
      'whole_hours_total_worked': instance.wholeHoursTotalWorked,
      'whole_week_minus': instance.wholeWeekMinus,
      'whole_paid_hours': instance.wholePaidHours,
      'week': instance.week,
    };
