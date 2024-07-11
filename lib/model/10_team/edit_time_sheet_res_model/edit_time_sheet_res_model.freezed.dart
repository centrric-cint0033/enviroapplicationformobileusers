// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_time_sheet_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditTimeSheetResModel _$EditTimeSheetResModelFromJson(
    Map<String, dynamic> json) {
  return _EditTimeSheetResModel.fromJson(json);
}

/// @nodoc
mixin _$EditTimeSheetResModel {
  num? get id => throw _privateConstructorUsedError;
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
  num? get employee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditTimeSheetResModelCopyWith<EditTimeSheetResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTimeSheetResModelCopyWith<$Res> {
  factory $EditTimeSheetResModelCopyWith(EditTimeSheetResModel value,
          $Res Function(EditTimeSheetResModel) then) =
      _$EditTimeSheetResModelCopyWithImpl<$Res, EditTimeSheetResModel>;
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'weekly_report') WeeklyReport? weeklyReport,
      @JsonKey(name: 'timesheet_status') String? timesheetStatus,
      @JsonKey(name: 'week_startdate') String? weekStartdate,
      @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
      @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
      num? employee});

  $WeeklyReportCopyWith<$Res>? get weeklyReport;
}

/// @nodoc
class _$EditTimeSheetResModelCopyWithImpl<$Res,
        $Val extends EditTimeSheetResModel>
    implements $EditTimeSheetResModelCopyWith<$Res> {
  _$EditTimeSheetResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? weeklyReport = freezed,
    Object? timesheetStatus = freezed,
    Object? weekStartdate = freezed,
    Object? createdDateTime = freezed,
    Object? editedDateTime = freezed,
    Object? employee = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
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
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
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
abstract class _$$EditTimeSheetResModelImplCopyWith<$Res>
    implements $EditTimeSheetResModelCopyWith<$Res> {
  factory _$$EditTimeSheetResModelImplCopyWith(
          _$EditTimeSheetResModelImpl value,
          $Res Function(_$EditTimeSheetResModelImpl) then) =
      __$$EditTimeSheetResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'weekly_report') WeeklyReport? weeklyReport,
      @JsonKey(name: 'timesheet_status') String? timesheetStatus,
      @JsonKey(name: 'week_startdate') String? weekStartdate,
      @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
      @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
      num? employee});

  @override
  $WeeklyReportCopyWith<$Res>? get weeklyReport;
}

/// @nodoc
class __$$EditTimeSheetResModelImplCopyWithImpl<$Res>
    extends _$EditTimeSheetResModelCopyWithImpl<$Res,
        _$EditTimeSheetResModelImpl>
    implements _$$EditTimeSheetResModelImplCopyWith<$Res> {
  __$$EditTimeSheetResModelImplCopyWithImpl(_$EditTimeSheetResModelImpl _value,
      $Res Function(_$EditTimeSheetResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? weeklyReport = freezed,
    Object? timesheetStatus = freezed,
    Object? weekStartdate = freezed,
    Object? createdDateTime = freezed,
    Object? editedDateTime = freezed,
    Object? employee = freezed,
  }) {
    return _then(_$EditTimeSheetResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
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
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditTimeSheetResModelImpl implements _EditTimeSheetResModel {
  _$EditTimeSheetResModelImpl(
      {this.id,
      @JsonKey(name: 'weekly_report') this.weeklyReport,
      @JsonKey(name: 'timesheet_status') this.timesheetStatus,
      @JsonKey(name: 'week_startdate') this.weekStartdate,
      @JsonKey(name: 'created_date_time') this.createdDateTime,
      @JsonKey(name: 'edited_date_time') this.editedDateTime,
      this.employee});

  factory _$EditTimeSheetResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditTimeSheetResModelImplFromJson(json);

  @override
  final num? id;
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
  final num? employee;

  @override
  String toString() {
    return 'EditTimeSheetResModel(id: $id, weeklyReport: $weeklyReport, timesheetStatus: $timesheetStatus, weekStartdate: $weekStartdate, createdDateTime: $createdDateTime, editedDateTime: $editedDateTime, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTimeSheetResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weeklyReport, weeklyReport) ||
                other.weeklyReport == weeklyReport) &&
            (identical(other.timesheetStatus, timesheetStatus) ||
                other.timesheetStatus == timesheetStatus) &&
            (identical(other.weekStartdate, weekStartdate) ||
                other.weekStartdate == weekStartdate) &&
            (identical(other.createdDateTime, createdDateTime) ||
                other.createdDateTime == createdDateTime) &&
            (identical(other.editedDateTime, editedDateTime) ||
                other.editedDateTime == editedDateTime) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      weeklyReport,
      timesheetStatus,
      weekStartdate,
      createdDateTime,
      editedDateTime,
      employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTimeSheetResModelImplCopyWith<_$EditTimeSheetResModelImpl>
      get copyWith => __$$EditTimeSheetResModelImplCopyWithImpl<
          _$EditTimeSheetResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditTimeSheetResModelImplToJson(
      this,
    );
  }
}

abstract class _EditTimeSheetResModel implements EditTimeSheetResModel {
  factory _EditTimeSheetResModel(
      {final num? id,
      @JsonKey(name: 'weekly_report') final WeeklyReport? weeklyReport,
      @JsonKey(name: 'timesheet_status') final String? timesheetStatus,
      @JsonKey(name: 'week_startdate') final String? weekStartdate,
      @JsonKey(name: 'created_date_time') final DateTime? createdDateTime,
      @JsonKey(name: 'edited_date_time') final DateTime? editedDateTime,
      final num? employee}) = _$EditTimeSheetResModelImpl;

  factory _EditTimeSheetResModel.fromJson(Map<String, dynamic> json) =
      _$EditTimeSheetResModelImpl.fromJson;

  @override
  num? get id;
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
  num? get employee;
  @override
  @JsonKey(ignore: true)
  _$$EditTimeSheetResModelImplCopyWith<_$EditTimeSheetResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
