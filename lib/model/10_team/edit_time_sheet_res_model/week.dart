import 'package:freezed_annotation/freezed_annotation.dart';

part 'week.freezed.dart';
part 'week.g.dart';

@freezed
class Week with _$Week {
  factory Week({
    dynamic annual,
    String? date,
    String? day,
    dynamic finish,
    @JsonKey(name: 'full_time') dynamic fullTime,
    @JsonKey(name: 'half_time') dynamic halfTime,
    @JsonKey(name: 'normal_hours') dynamic normalHours,
    @JsonKey(name: 'other_days') dynamic otherDays,
    @JsonKey(name: 'public_holidays') dynamic publicHolidays,
    dynamic sick,
    dynamic start,
    @JsonKey(name: 'total_hours_worked') dynamic totalHoursWorked,
  }) = _Week;

  factory Week.fromJson(Map<String, dynamic> json) => _$WeekFromJson(json);
}
