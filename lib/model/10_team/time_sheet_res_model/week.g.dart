// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekImpl _$$WeekImplFromJson(Map<String, dynamic> json) => _$WeekImpl(
      day: json['day'] as String?,
      date: json['date'] as String?,
      sick: json['sick'] as String?,
      start: json['start'] as String?,
      annual: json['annual'] as String?,
      finish: json['finish'] as String?,
      fullTime: json['full_time'] as String?,
      halfTime: json['half_time'] as String?,
      otherDays: json['other_days'] as String?,
      normalHours: json['normal_hours'] as String?,
      publicHolidays: json['public_holidays'] as String?,
      totalHoursWorked: json['total_hours_worked'],
    );

Map<String, dynamic> _$$WeekImplToJson(_$WeekImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'date': instance.date,
      'sick': instance.sick,
      'start': instance.start,
      'annual': instance.annual,
      'finish': instance.finish,
      'full_time': instance.fullTime,
      'half_time': instance.halfTime,
      'other_days': instance.otherDays,
      'normal_hours': instance.normalHours,
      'public_holidays': instance.publicHolidays,
      'total_hours_worked': instance.totalHoursWorked,
    };
