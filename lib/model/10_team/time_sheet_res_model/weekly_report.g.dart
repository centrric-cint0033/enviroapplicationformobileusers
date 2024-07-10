// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyReportImpl _$$WeeklyReportImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyReportImpl(
      id: json['id'] as String?,
      week: (json['week'] as List<dynamic>?)
          ?.map((e) => Week.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: json['comments'] as String?,
      attachment: json['attachment'] as String?,
      employeeId: json['employee_id'] as String?,
      wholePaidHours: json['whole_paid_hours'] == null
          ? null
          : WholePaidHours.fromJson(
              json['whole_paid_hours'] as Map<String, dynamic>),
      wholeWeekMinus: json['whole_week_minus'] == null
          ? null
          : WholeWeekMinus.fromJson(
              json['whole_week_minus'] as Map<String, dynamic>),
      managerSignature: json['manager_signature'] as String?,
      employeeSignature: json['employee_signature'] as String?,
      wholeHoursTotalWorked: json['whole_hours_total_worked'] == null
          ? null
          : WholeHoursTotalWorked.fromJson(
              json['whole_hours_total_worked'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeeklyReportImplToJson(_$WeeklyReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'week': instance.week,
      'comments': instance.comments,
      'attachment': instance.attachment,
      'employee_id': instance.employeeId,
      'whole_paid_hours': instance.wholePaidHours,
      'whole_week_minus': instance.wholeWeekMinus,
      'manager_signature': instance.managerSignature,
      'employee_signature': instance.employeeSignature,
      'whole_hours_total_worked': instance.wholeHoursTotalWorked,
    };
