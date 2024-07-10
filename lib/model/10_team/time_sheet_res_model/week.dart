import 'package:freezed_annotation/freezed_annotation.dart';

part 'week.freezed.dart';
part 'week.g.dart';

@freezed
class Week with _$Week {
  factory Week({
    String? day,
    String? date,
    String? sick,
    String? start,
    String? annual,
    String? finish,
    @JsonKey(name: 'full_time') String? fullTime,
    @JsonKey(name: 'half_time') String? halfTime,
    @JsonKey(name: 'other_days') String? otherDays,
    @JsonKey(name: 'normal_hours') String? normalHours,
    @JsonKey(name: 'public_holidays') String? publicHolidays,
    @JsonKey(name: 'total_hours_worked') dynamic totalHoursWorked,
  }) = _Week;

  factory Week.fromJson(Map<String, dynamic> json) => _$WeekFromJson(json);
}
