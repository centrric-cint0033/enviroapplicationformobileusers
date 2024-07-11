import 'package:freezed_annotation/freezed_annotation.dart';

part 'whole_hours_total_worked.freezed.dart';
part 'whole_hours_total_worked.g.dart';

@freezed
class WholeHoursTotalWorked with _$WholeHoursTotalWorked {
  factory WholeHoursTotalWorked({
    num? annual,
    @JsonKey(name: 'full_time') num? fullTime,
    @JsonKey(name: 'half_time') num? halfTime,
    @JsonKey(name: 'normal_hours') num? normalHours,
    @JsonKey(name: 'other_days') num? otherDays,
    @JsonKey(name: 'public_holidays') num? publicHolidays,
    num? sick,
    @JsonKey(name: 'total_hours_worked') num? totalHoursWorked,
  }) = _WholeHoursTotalWorked;

  factory WholeHoursTotalWorked.fromJson(Map<String, dynamic> json) =>
      _$WholeHoursTotalWorkedFromJson(json);
}
