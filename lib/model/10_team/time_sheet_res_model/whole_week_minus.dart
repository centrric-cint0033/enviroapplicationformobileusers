// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'whole_week_minus.freezed.dart';
part 'whole_week_minus.g.dart';

@freezed
class WholeWeekMinus with _$WholeWeekMinus {
  factory WholeWeekMinus({
    dynamic sick,
    dynamic annual,
    @JsonKey(name: 'full_time') dynamic fullTime,
    @JsonKey(name: 'half_time') dynamic halfTime,
    @JsonKey(name: 'other_days') dynamic otherDays,
    @JsonKey(name: 'normal_hours') dynamic normalHours,
    @JsonKey(name: 'public_holidays') dynamic publicHolidays,
    @JsonKey(name: 'total_hours_worked') dynamic totalHoursWorked,
  }) = _WholeWeekMinus;

  factory WholeWeekMinus.fromJson(Map<String, dynamic> json) =>
      _$WholeWeekMinusFromJson(json);
}
