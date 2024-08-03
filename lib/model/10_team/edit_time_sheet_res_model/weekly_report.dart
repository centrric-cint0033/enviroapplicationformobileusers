import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/week.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'whole_hours_total_worked.dart';
import 'whole_paid_hours.dart';
import 'whole_week_minus.dart';

part 'weekly_report.freezed.dart';
part 'weekly_report.g.dart';

@freezed
class WeeklyReport with _$WeeklyReport {
  factory WeeklyReport({
    @JsonKey(name: 'employee_id') dynamic employeeId,
    dynamic comments,
    @JsonKey(name: 'employee_signature') dynamic employeeSignature,
    @JsonKey(name: 'manager_signature') dynamic managerSignature,
    String? attachment,
    @JsonKey(name: 'whole_hours_total_worked')
    WholeHoursTotalWorked? wholeHoursTotalWorked,
    @JsonKey(name: 'whole_week_minus') WholeWeekMinus? wholeWeekMinus,
    @JsonKey(name: 'whole_paid_hours') WholePaidHours? wholePaidHours,
    List<Week>? week,
  }) = _WeeklyReport;

  factory WeeklyReport.fromJson(Map<String, dynamic> json) =>
      _$WeeklyReportFromJson(json);
}
