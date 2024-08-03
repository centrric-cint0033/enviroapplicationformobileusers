// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekImpl _$$WeekImplFromJson(Map<String, dynamic> json) => _$WeekImpl(
      day: json['day'] as String?,
      date: json['date'] as String?,
      sick: json['sick'],
      start: const TimeOfDayConverter().fromJson(json['start'] as String?),
      annual: json['annual'],
      finish: const TimeOfDayConverter().fromJson(json['finish'] as String?),
      fullTime: json['full_time'],
      halfTime: json['half_time'],
      otherDays: json['other_days'],
      normalHours: json['normal_hours'],
      publicHolidays: json['public_holidays'],
      totalHoursWorked: json['total_hours_worked'],
    );

Map<String, dynamic> _$$WeekImplToJson(_$WeekImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'date': instance.date,
      'sick': instance.sick,
      'start': const TimeOfDayConverter().toJson(instance.start),
      'annual': instance.annual,
      'finish': const TimeOfDayConverter().toJson(instance.finish),
      'full_time': instance.fullTime,
      'half_time': instance.halfTime,
      'other_days': instance.otherDays,
      'normal_hours': instance.normalHours,
      'public_holidays': instance.publicHolidays,
      'total_hours_worked': instance.totalHoursWorked,
    };
