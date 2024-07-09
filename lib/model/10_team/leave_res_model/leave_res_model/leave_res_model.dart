import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_res_model.freezed.dart';
part 'leave_res_model.g.dart';

@freezed
class LeaveResModel with _$LeaveResModel {
  factory LeaveResModel({
    num? id,
    @JsonKey(name: 'approved_status') dynamic approvedStatus,
    @JsonKey(name: 'employee_name') String? employeeName,
    @JsonKey(name: 'employee_dp') String? employeeDp,
    @JsonKey(name: 'job_ids') List<dynamic>? jobIds,
    @JsonKey(name: 'leave_type') String? leaveType,
    String? reason,
    String? attachment,
    @JsonKey(name: 'leave_form') String? leaveForm,
    @JsonKey(name: 'leave_from') String? leaveFrom,
    @JsonKey(name: 'leave_to') String? leaveTo,
    @JsonKey(name: 'last_working_day') String? lastWorkingDay,
    @JsonKey(name: 'return_working_day') String? returnWorkingDay,
    @JsonKey(name: 'normal_working_days') String? normalWorkingDays,
    @JsonKey(name: 'normal_working_hours') String? normalWorkingHours,
    @JsonKey(name: 'public_holidays') String? publicHolidays,
    @JsonKey(name: 'public_holiday_hours') String? publicHolidayHours,
    @JsonKey(name: 'other_days') String? otherDays,
    @JsonKey(name: 'other_hours') String? otherHours,
    @JsonKey(name: 'total_days') String? totalDays,
    @JsonKey(name: 'total_hours') String? totalHours,
    String? comments,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
    num? employee,
  }) = _LeaveResModel;

  factory LeaveResModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveResModelFromJson(json);
}
