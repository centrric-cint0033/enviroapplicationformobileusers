// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_sheet_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeSheetResModel _$TimeSheetResModelFromJson(Map<String, dynamic> json) {
  return _TimeSheetResModel.fromJson(json);
}

/// @nodoc
mixin _$TimeSheetResModel {
  num? get id => throw _privateConstructorUsedError;
  Employee? get employee => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_report')
  WeeklyReport? get weeklyReport => throw _privateConstructorUsedError;
  @JsonKey(name: 'timesheet_status')
  String? get timesheetStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'week_startdate')
  String? get weekStartdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date_time')
  DateTime? get createdDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_date_time')
  DateTime? get editedDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSheetResModelCopyWith<TimeSheetResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSheetResModelCopyWith<$Res> {
  factory $TimeSheetResModelCopyWith(
          TimeSheetResModel value, $Res Function(TimeSheetResModel) then) =
      _$TimeSheetResModelCopyWithImpl<$Res, TimeSheetResModel>;
  @useResult
  $Res call(
      {num? id,
      Employee? employee,
      @JsonKey(name: 'weekly_report') WeeklyReport? weeklyReport,
      @JsonKey(name: 'timesheet_status') String? timesheetStatus,
      @JsonKey(name: 'week_startdate') String? weekStartdate,
      @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
      @JsonKey(name: 'edited_date_time') DateTime? editedDateTime});

  $EmployeeCopyWith<$Res>? get employee;
  $WeeklyReportCopyWith<$Res>? get weeklyReport;
}

/// @nodoc
class _$TimeSheetResModelCopyWithImpl<$Res, $Val extends TimeSheetResModel>
    implements $TimeSheetResModelCopyWith<$Res> {
  _$TimeSheetResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employee = freezed,
    Object? weeklyReport = freezed,
    Object? timesheetStatus = freezed,
    Object? weekStartdate = freezed,
    Object? createdDateTime = freezed,
    Object? editedDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      weeklyReport: freezed == weeklyReport
          ? _value.weeklyReport
          : weeklyReport // ignore: cast_nullable_to_non_nullable
              as WeeklyReport?,
      timesheetStatus: freezed == timesheetStatus
          ? _value.timesheetStatus
          : timesheetStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      weekStartdate: freezed == weekStartdate
          ? _value.weekStartdate
          : weekStartdate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDateTime: freezed == createdDateTime
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      editedDateTime: freezed == editedDateTime
          ? _value.editedDateTime
          : editedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeeklyReportCopyWith<$Res>? get weeklyReport {
    if (_value.weeklyReport == null) {
      return null;
    }

    return $WeeklyReportCopyWith<$Res>(_value.weeklyReport!, (value) {
      return _then(_value.copyWith(weeklyReport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeSheetResModelImplCopyWith<$Res>
    implements $TimeSheetResModelCopyWith<$Res> {
  factory _$$TimeSheetResModelImplCopyWith(_$TimeSheetResModelImpl value,
          $Res Function(_$TimeSheetResModelImpl) then) =
      __$$TimeSheetResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      Employee? employee,
      @JsonKey(name: 'weekly_report') WeeklyReport? weeklyReport,
      @JsonKey(name: 'timesheet_status') String? timesheetStatus,
      @JsonKey(name: 'week_startdate') String? weekStartdate,
      @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
      @JsonKey(name: 'edited_date_time') DateTime? editedDateTime});

  @override
  $EmployeeCopyWith<$Res>? get employee;
  @override
  $WeeklyReportCopyWith<$Res>? get weeklyReport;
}

/// @nodoc
class __$$TimeSheetResModelImplCopyWithImpl<$Res>
    extends _$TimeSheetResModelCopyWithImpl<$Res, _$TimeSheetResModelImpl>
    implements _$$TimeSheetResModelImplCopyWith<$Res> {
  __$$TimeSheetResModelImplCopyWithImpl(_$TimeSheetResModelImpl _value,
      $Res Function(_$TimeSheetResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employee = freezed,
    Object? weeklyReport = freezed,
    Object? timesheetStatus = freezed,
    Object? weekStartdate = freezed,
    Object? createdDateTime = freezed,
    Object? editedDateTime = freezed,
  }) {
    return _then(_$TimeSheetResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      weeklyReport: freezed == weeklyReport
          ? _value.weeklyReport
          : weeklyReport // ignore: cast_nullable_to_non_nullable
              as WeeklyReport?,
      timesheetStatus: freezed == timesheetStatus
          ? _value.timesheetStatus
          : timesheetStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      weekStartdate: freezed == weekStartdate
          ? _value.weekStartdate
          : weekStartdate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDateTime: freezed == createdDateTime
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      editedDateTime: freezed == editedDateTime
          ? _value.editedDateTime
          : editedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSheetResModelImpl implements _TimeSheetResModel {
  _$TimeSheetResModelImpl(
      {this.id,
      this.employee,
      @JsonKey(name: 'weekly_report') this.weeklyReport,
      @JsonKey(name: 'timesheet_status') this.timesheetStatus,
      @JsonKey(name: 'week_startdate') this.weekStartdate,
      @JsonKey(name: 'created_date_time') this.createdDateTime,
      @JsonKey(name: 'edited_date_time') this.editedDateTime});

  factory _$TimeSheetResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSheetResModelImplFromJson(json);

  @override
  final num? id;
  @override
  final Employee? employee;
  @override
  @JsonKey(name: 'weekly_report')
  final WeeklyReport? weeklyReport;
  @override
  @JsonKey(name: 'timesheet_status')
  final String? timesheetStatus;
  @override
  @JsonKey(name: 'week_startdate')
  final String? weekStartdate;
  @override
  @JsonKey(name: 'created_date_time')
  final DateTime? createdDateTime;
  @override
  @JsonKey(name: 'edited_date_time')
  final DateTime? editedDateTime;

  @override
  String toString() {
    return 'TimeSheetResModel(id: $id, employee: $employee, weeklyReport: $weeklyReport, timesheetStatus: $timesheetStatus, weekStartdate: $weekStartdate, createdDateTime: $createdDateTime, editedDateTime: $editedDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSheetResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.weeklyReport, weeklyReport) ||
                other.weeklyReport == weeklyReport) &&
            (identical(other.timesheetStatus, timesheetStatus) ||
                other.timesheetStatus == timesheetStatus) &&
            (identical(other.weekStartdate, weekStartdate) ||
                other.weekStartdate == weekStartdate) &&
            (identical(other.createdDateTime, createdDateTime) ||
                other.createdDateTime == createdDateTime) &&
            (identical(other.editedDateTime, editedDateTime) ||
                other.editedDateTime == editedDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, employee, weeklyReport,
      timesheetStatus, weekStartdate, createdDateTime, editedDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSheetResModelImplCopyWith<_$TimeSheetResModelImpl> get copyWith =>
      __$$TimeSheetResModelImplCopyWithImpl<_$TimeSheetResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSheetResModelImplToJson(
      this,
    );
  }
}

abstract class _TimeSheetResModel implements TimeSheetResModel {
  factory _TimeSheetResModel(
          {final num? id,
          final Employee? employee,
          @JsonKey(name: 'weekly_report') final WeeklyReport? weeklyReport,
          @JsonKey(name: 'timesheet_status') final String? timesheetStatus,
          @JsonKey(name: 'week_startdate') final String? weekStartdate,
          @JsonKey(name: 'created_date_time') final DateTime? createdDateTime,
          @JsonKey(name: 'edited_date_time') final DateTime? editedDateTime}) =
      _$TimeSheetResModelImpl;

  factory _TimeSheetResModel.fromJson(Map<String, dynamic> json) =
      _$TimeSheetResModelImpl.fromJson;

  @override
  num? get id;
  @override
  Employee? get employee;
  @override
  @JsonKey(name: 'weekly_report')
  WeeklyReport? get weeklyReport;
  @override
  @JsonKey(name: 'timesheet_status')
  String? get timesheetStatus;
  @override
  @JsonKey(name: 'week_startdate')
  String? get weekStartdate;
  @override
  @JsonKey(name: 'created_date_time')
  DateTime? get createdDateTime;
  @override
  @JsonKey(name: 'edited_date_time')
  DateTime? get editedDateTime;
  @override
  @JsonKey(ignore: true)
  _$$TimeSheetResModelImplCopyWith<_$TimeSheetResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
