import 'package:freezed_annotation/freezed_annotation.dart';

part 'whole_paid_hours.freezed.dart';
part 'whole_paid_hours.g.dart';

@freezed
class WholePaidHours with _$WholePaidHours {
  factory WholePaidHours({
    num? annual,
    @JsonKey(name: 'full_time') num? fullTime,
    @JsonKey(name: 'half_time') num? halfTime,
    @JsonKey(name: 'normal_hours') num? normalHours,
    @JsonKey(name: 'other_days') num? otherDays,
    @JsonKey(name: 'public_holidays') num? publicHolidays,
    num? sick,
    @JsonKey(name: 'total_hours_worked') num? totalHoursWorked,
  }) = _WholePaidHours;

  factory WholePaidHours.fromJson(Map<String, dynamic> json) =>
      _$WholePaidHoursFromJson(json);
}
