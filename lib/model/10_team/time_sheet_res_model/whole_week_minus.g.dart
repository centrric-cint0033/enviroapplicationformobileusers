// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whole_week_minus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WholeWeekMinusImpl _$$WholeWeekMinusImplFromJson(Map<String, dynamic> json) =>
    _$WholeWeekMinusImpl(
      sick: json['sick'] as num?,
      annual: json['annual'] as num?,
      fullTime: json['full_time'] as num?,
      halfTime: json['half_time'] as num?,
      otherDays: json['other_days'] as num?,
      normalHours: json['normal_hours'] as num?,
      publicHolidays: json['public_holidays'] as num?,
      totalHoursWorked: json['total_hours_worked'] as num?,
    );

Map<String, dynamic> _$$WholeWeekMinusImplToJson(
        _$WholeWeekMinusImpl instance) =>
    <String, dynamic>{
      'sick': instance.sick,
      'annual': instance.annual,
      'full_time': instance.fullTime,
      'half_time': instance.halfTime,
      'other_days': instance.otherDays,
      'normal_hours': instance.normalHours,
      'public_holidays': instance.publicHolidays,
      'total_hours_worked': instance.totalHoursWorked,
    };
