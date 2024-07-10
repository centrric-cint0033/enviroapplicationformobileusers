import 'package:freezed_annotation/freezed_annotation.dart';

part 'whole_week_minus.freezed.dart';
part 'whole_week_minus.g.dart';

@freezed
class WholeWeekMinus with _$WholeWeekMinus {
  factory WholeWeekMinus({
    num? sick,
    num? annual,
    @JsonKey(name: 'full_time') num? fullTime,
    @JsonKey(name: 'half_time') num? halfTime,
    @JsonKey(name: 'other_days') num? otherDays,
    @JsonKey(name: 'normal_hours') num? normalHours,
    @JsonKey(name: 'public_holidays') num? publicHolidays,
    @JsonKey(name: 'total_hours_worked') num? totalHoursWorked,
  }) = _WholeWeekMinus;

  factory WholeWeekMinus.fromJson(Map<String, dynamic> json) =>
      _$WholeWeekMinusFromJson(json);
}
