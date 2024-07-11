import 'package:freezed_annotation/freezed_annotation.dart';

import 'employee.dart';
import 'weekly_report.dart';

part 'time_sheet_res_model.freezed.dart';
part 'time_sheet_res_model.g.dart';

@freezed
class TimeSheetResModel with _$TimeSheetResModel {
  static TimeSheetResModel empty() {
    return TimeSheetResModel(
        // Initialize properties with default or empty values
        );
  }

  factory TimeSheetResModel({
    num? id,
    Employee? employee,
    @JsonKey(name: 'weekly_report') WeeklyReport? weeklyReport,
    @JsonKey(name: 'timesheet_status') String? timesheetStatus,
    @JsonKey(name: 'week_startdate') String? weekStartdate,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
  }) = _TimeSheetResModel;

  factory TimeSheetResModel.fromJson(Map<String, dynamic> json) =>
      _$TimeSheetResModelFromJson(json);
}
