// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveResModelImpl _$$LeaveResModelImplFromJson(Map<String, dynamic> json) =>
    _$LeaveResModelImpl(
      id: json['id'] as num?,
      approvedStatus: json['approved_status'],
      employeeName: json['employee_name'] as String?,
      employeeDp: json['employee_dp'] as String?,
      jobIds: json['job_ids'] as List<dynamic>?,
      leaveType: json['leave_type'] as String?,
      reason: json['reason'] as String?,
      attachment: json['attachment'] as String?,
      leaveForm: json['leave_form'] as String?,
      leaveFrom: json['leave_from'] as String?,
      leaveTo: json['leave_to'] as String?,
      lastWorkingDay: json['last_working_day'] as String?,
      returnWorkingDay: json['return_working_day'] as String?,
      normalWorkingDays: json['normal_working_days'] as String?,
      normalWorkingHours: json['normal_working_hours'] as String?,
      publicHolidays: json['public_holidays'] as String?,
      publicHolidayHours: json['public_holiday_hours'] as String?,
      otherDays: json['other_days'] as String?,
      otherHours: json['other_hours'] as String?,
      totalDays: json['total_days'] as String?,
      totalHours: json['total_hours'] as String?,
      comments: json['comments'] as String?,
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      editedDateTime: json['edited_date_time'] == null
          ? null
          : DateTime.parse(json['edited_date_time'] as String),
      employee: json['employee'] as num?,
    );

Map<String, dynamic> _$$LeaveResModelImplToJson(_$LeaveResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'approved_status': instance.approvedStatus,
      'employee_name': instance.employeeName,
      'employee_dp': instance.employeeDp,
      'job_ids': instance.jobIds,
      'leave_type': instance.leaveType,
      'reason': instance.reason,
      'attachment': instance.attachment,
      'leave_form': instance.leaveForm,
      'leave_from': instance.leaveFrom,
      'leave_to': instance.leaveTo,
      'last_working_day': instance.lastWorkingDay,
      'return_working_day': instance.returnWorkingDay,
      'normal_working_days': instance.normalWorkingDays,
      'normal_working_hours': instance.normalWorkingHours,
      'public_holidays': instance.publicHolidays,
      'public_holiday_hours': instance.publicHolidayHours,
      'other_days': instance.otherDays,
      'other_hours': instance.otherHours,
      'total_days': instance.totalDays,
      'total_hours': instance.totalHours,
      'comments': instance.comments,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
      'employee': instance.employee,
    };
