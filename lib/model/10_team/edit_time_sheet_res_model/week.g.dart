// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekImpl _$$WeekImplFromJson(Map<String, dynamic> json) => _$WeekImpl(
      annual: json['annual'],
      date: json['date'] as String?,
      day: json['day'] as String?,
      finish: json['finish'],
      fullTime: json['full_time'],
      halfTime: json['half_time'],
      normalHours: json['normal_hours'],
      otherDays: json['other_days'],
      publicHolidays: json['public_holidays'],
      sick: json['sick'],
      start: json['start'],
      totalHoursWorked: json['total_hours_worked'],
    );

Map<String, dynamic> _$$WeekImplToJson(_$WeekImpl instance) =>
    <String, dynamic>{
      'annual': instance.annual,
      'date': instance.date,
      'day': instance.day,
      'finish': instance.finish,
      'full_time': instance.fullTime,
      'half_time': instance.halfTime,
      'normal_hours': instance.normalHours,
      'other_days': instance.otherDays,
      'public_holidays': instance.publicHolidays,
      'sick': instance.sick,
      'start': instance.start,
      'total_hours_worked': instance.totalHoursWorked,
    };
