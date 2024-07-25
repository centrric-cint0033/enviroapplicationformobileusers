// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whole_week_minus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WholeWeekMinusImpl _$$WholeWeekMinusImplFromJson(Map<String, dynamic> json) =>
    _$WholeWeekMinusImpl(
      sick: json['sick'],
      annual: json['annual'],
      fullTime: json['full_time'],
      halfTime: json['half_time'],
      otherDays: json['other_days'],
      normalHours: json['normal_hours'],
      publicHolidays: json['public_holidays'],
      totalHoursWorked: json['total_hours_worked'],
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
