// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'week.dart';
import 'whole_hours_total_worked.dart';
import 'whole_paid_hours.dart';
import 'whole_week_minus.dart';

part 'weekly_report.freezed.dart';
part 'weekly_report.g.dart';

@freezed
class WeeklyReport with _$WeeklyReport {
  factory WeeklyReport({
    dynamic id,
    List<Week>? week,
    dynamic comments,
    dynamic attachment,
    @JsonKey(name: 'employee_id') dynamic employeeId,
    @JsonKey(name: 'whole_paid_hours') WholePaidHours? wholePaidHours,
    @JsonKey(name: 'whole_week_minus') WholeWeekMinus? wholeWeekMinus,
    @JsonKey(name: 'manager_signature') dynamic managerSignature,
    @JsonKey(name: 'employee_signature') dynamic employeeSignature,
    @JsonKey(name: 'whole_hours_total_worked')
    WholeHoursTotalWorked? wholeHoursTotalWorked,
  }) = _WeeklyReport;

  factory WeeklyReport.fromJson(Map<String, dynamic> json) =>
      _$WeeklyReportFromJson(json);
}
