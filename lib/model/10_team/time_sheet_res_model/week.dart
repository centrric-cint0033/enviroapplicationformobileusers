// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'week.freezed.dart';
part 'week.g.dart';

class TimeOfDayConverter implements JsonConverter<TimeOfDay?, String?> {
  const TimeOfDayConverter();

  @override
  TimeOfDay? fromJson(String? json) {
    if (json == null) return null;
    final parts = json.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  @override
  String? toJson(TimeOfDay? object) {
    if (object == null) return null;
    return '${object.hour}:${object.minute}';
  }
}

@freezed
class Week with _$Week {
  factory Week({
    String? day,
    String? date,
    dynamic sick,
    @TimeOfDayConverter() TimeOfDay? start,
    dynamic annual,
    @TimeOfDayConverter() TimeOfDay? finish,
    @JsonKey(name: 'full_time') dynamic fullTime,
    @JsonKey(name: 'half_time') dynamic halfTime,
    @JsonKey(name: 'other_days') dynamic otherDays,
    @JsonKey(name: 'normal_hours') dynamic normalHours,
    @JsonKey(name: 'public_holidays') dynamic publicHolidays,
    @JsonKey(name: 'total_hours_worked') dynamic totalHoursWorked,
  }) = _Week;

  factory Week.fromJson(Map<String, dynamic> json) => _$WeekFromJson(json);
}
