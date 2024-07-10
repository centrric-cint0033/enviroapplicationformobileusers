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
    String? id,
    List<Week>? week,
    String? comments,
    String? attachment,
    @JsonKey(name: 'employee_id') String? employeeId,
    @JsonKey(name: 'whole_paid_hours') WholePaidHours? wholePaidHours,
    @JsonKey(name: 'whole_week_minus') WholeWeekMinus? wholeWeekMinus,
    @JsonKey(name: 'manager_signature') String? managerSignature,
    @JsonKey(name: 'employee_signature') String? employeeSignature,
    @JsonKey(name: 'whole_hours_total_worked')
    WholeHoursTotalWorked? wholeHoursTotalWorked,
  }) = _WeeklyReport;

  factory WeeklyReport.fromJson(Map<String, dynamic> json) =>
      _$WeeklyReportFromJson(json);
}
