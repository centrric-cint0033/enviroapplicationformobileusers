import 'package:freezed_annotation/freezed_annotation.dart';

import 'weekly_report.dart';

part 'edit_time_sheet_res_model.freezed.dart';
part 'edit_time_sheet_res_model.g.dart';

@freezed
class EditTimeSheetResModel with _$EditTimeSheetResModel {
  factory EditTimeSheetResModel({
    num? id,
    @JsonKey(name: 'weekly_report') WeeklyReport? weeklyReport,
    @JsonKey(name: 'timesheet_status') String? timesheetStatus,
    @JsonKey(name: 'week_startdate') String? weekStartdate,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
    num? employee,
  }) = _EditTimeSheetResModel;

  factory EditTimeSheetResModel.fromJson(Map<String, dynamic> json) =>
      _$EditTimeSheetResModelFromJson(json);
}
