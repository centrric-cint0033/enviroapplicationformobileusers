// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyReport _$WeeklyReportFromJson(Map<String, dynamic> json) {
  return _WeeklyReport.fromJson(json);
}

/// @nodoc
mixin _$WeeklyReport {
  String? get id => throw _privateConstructorUsedError;
  List<Week>? get week => throw _privateConstructorUsedError;
  String? get comments => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  String? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'whole_paid_hours')
  WholePaidHours? get wholePaidHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'whole_week_minus')
  WholeWeekMinus? get wholeWeekMinus => throw _privateConstructorUsedError;
  @JsonKey(name: 'manager_signature')
  String? get managerSignature => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_signature')
  String? get employeeSignature => throw _privateConstructorUsedError;
  @JsonKey(name: 'whole_hours_total_worked')
  WholeHoursTotalWorked? get wholeHoursTotalWorked =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyReportCopyWith<WeeklyReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyReportCopyWith<$Res> {
  factory $WeeklyReportCopyWith(
          WeeklyReport value, $Res Function(WeeklyReport) then) =
      _$WeeklyReportCopyWithImpl<$Res, WeeklyReport>;
  @useResult
  $Res call(
      {String? id,
      List<Week>? week,
      String? comments,
      String? attachment,
      @JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'whole_paid_hours') WholePaidHours? wholePaidHours,
      @JsonKey(name: 'whole_week_minus') WholeWeekMinus? wholeWeekMinus,
      @JsonKey(name: 'manager_signature') String? managerSignature,
      @JsonKey(name: 'employee_signature') String? employeeSignature,
      @JsonKey(name: 'whole_hours_total_worked')
      WholeHoursTotalWorked? wholeHoursTotalWorked});

  $WholePaidHoursCopyWith<$Res>? get wholePaidHours;
  $WholeWeekMinusCopyWith<$Res>? get wholeWeekMinus;
  $WholeHoursTotalWorkedCopyWith<$Res>? get wholeHoursTotalWorked;
}

/// @nodoc
class _$WeeklyReportCopyWithImpl<$Res, $Val extends WeeklyReport>
    implements $WeeklyReportCopyWith<$Res> {
  _$WeeklyReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? week = freezed,
    Object? comments = freezed,
    Object? attachment = freezed,
    Object? employeeId = freezed,
    Object? wholePaidHours = freezed,
    Object? wholeWeekMinus = freezed,
    Object? managerSignature = freezed,
    Object? employeeSignature = freezed,
    Object? wholeHoursTotalWorked = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as List<Week>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      wholePaidHours: freezed == wholePaidHours
          ? _value.wholePaidHours
          : wholePaidHours // ignore: cast_nullable_to_non_nullable
              as WholePaidHours?,
      wholeWeekMinus: freezed == wholeWeekMinus
          ? _value.wholeWeekMinus
          : wholeWeekMinus // ignore: cast_nullable_to_non_nullable
              as WholeWeekMinus?,
      managerSignature: freezed == managerSignature
          ? _value.managerSignature
          : managerSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeSignature: freezed == employeeSignature
          ? _value.employeeSignature
          : employeeSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      wholeHoursTotalWorked: freezed == wholeHoursTotalWorked
          ? _value.wholeHoursTotalWorked
          : wholeHoursTotalWorked // ignore: cast_nullable_to_non_nullable
              as WholeHoursTotalWorked?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WholePaidHoursCopyWith<$Res>? get wholePaidHours {
    if (_value.wholePaidHours == null) {
      return null;
    }

    return $WholePaidHoursCopyWith<$Res>(_value.wholePaidHours!, (value) {
      return _then(_value.copyWith(wholePaidHours: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WholeWeekMinusCopyWith<$Res>? get wholeWeekMinus {
    if (_value.wholeWeekMinus == null) {
      return null;
    }

    return $WholeWeekMinusCopyWith<$Res>(_value.wholeWeekMinus!, (value) {
      return _then(_value.copyWith(wholeWeekMinus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WholeHoursTotalWorkedCopyWith<$Res>? get wholeHoursTotalWorked {
    if (_value.wholeHoursTotalWorked == null) {
      return null;
    }

    return $WholeHoursTotalWorkedCopyWith<$Res>(_value.wholeHoursTotalWorked!,
        (value) {
      return _then(_value.copyWith(wholeHoursTotalWorked: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyReportImplCopyWith<$Res>
    implements $WeeklyReportCopyWith<$Res> {
  factory _$$WeeklyReportImplCopyWith(
          _$WeeklyReportImpl value, $Res Function(_$WeeklyReportImpl) then) =
      __$$WeeklyReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<Week>? week,
      String? comments,
      String? attachment,
      @JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'whole_paid_hours') WholePaidHours? wholePaidHours,
      @JsonKey(name: 'whole_week_minus') WholeWeekMinus? wholeWeekMinus,
      @JsonKey(name: 'manager_signature') String? managerSignature,
      @JsonKey(name: 'employee_signature') String? employeeSignature,
      @JsonKey(name: 'whole_hours_total_worked')
      WholeHoursTotalWorked? wholeHoursTotalWorked});

  @override
  $WholePaidHoursCopyWith<$Res>? get wholePaidHours;
  @override
  $WholeWeekMinusCopyWith<$Res>? get wholeWeekMinus;
  @override
  $WholeHoursTotalWorkedCopyWith<$Res>? get wholeHoursTotalWorked;
}

/// @nodoc
class __$$WeeklyReportImplCopyWithImpl<$Res>
    extends _$WeeklyReportCopyWithImpl<$Res, _$WeeklyReportImpl>
    implements _$$WeeklyReportImplCopyWith<$Res> {
  __$$WeeklyReportImplCopyWithImpl(
      _$WeeklyReportImpl _value, $Res Function(_$WeeklyReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? week = freezed,
    Object? comments = freezed,
    Object? attachment = freezed,
    Object? employeeId = freezed,
    Object? wholePaidHours = freezed,
    Object? wholeWeekMinus = freezed,
    Object? managerSignature = freezed,
    Object? employeeSignature = freezed,
    Object? wholeHoursTotalWorked = freezed,
  }) {
    return _then(_$WeeklyReportImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      week: freezed == week
          ? _value._week
          : week // ignore: cast_nullable_to_non_nullable
              as List<Week>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      wholePaidHours: freezed == wholePaidHours
          ? _value.wholePaidHours
          : wholePaidHours // ignore: cast_nullable_to_non_nullable
              as WholePaidHours?,
      wholeWeekMinus: freezed == wholeWeekMinus
          ? _value.wholeWeekMinus
          : wholeWeekMinus // ignore: cast_nullable_to_non_nullable
              as WholeWeekMinus?,
      managerSignature: freezed == managerSignature
          ? _value.managerSignature
          : managerSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeSignature: freezed == employeeSignature
          ? _value.employeeSignature
          : employeeSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      wholeHoursTotalWorked: freezed == wholeHoursTotalWorked
          ? _value.wholeHoursTotalWorked
          : wholeHoursTotalWorked // ignore: cast_nullable_to_non_nullable
              as WholeHoursTotalWorked?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyReportImpl implements _WeeklyReport {
  _$WeeklyReportImpl(
      {this.id,
      final List<Week>? week,
      this.comments,
      this.attachment,
      @JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'whole_paid_hours') this.wholePaidHours,
      @JsonKey(name: 'whole_week_minus') this.wholeWeekMinus,
      @JsonKey(name: 'manager_signature') this.managerSignature,
      @JsonKey(name: 'employee_signature') this.employeeSignature,
      @JsonKey(name: 'whole_hours_total_worked') this.wholeHoursTotalWorked})
      : _week = week;

  factory _$WeeklyReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyReportImplFromJson(json);

  @override
  final String? id;
  final List<Week>? _week;
  @override
  List<Week>? get week {
    final value = _week;
    if (value == null) return null;
    if (_week is EqualUnmodifiableListView) return _week;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? comments;
  @override
  final String? attachment;
  @override
  @JsonKey(name: 'employee_id')
  final String? employeeId;
  @override
  @JsonKey(name: 'whole_paid_hours')
  final WholePaidHours? wholePaidHours;
  @override
  @JsonKey(name: 'whole_week_minus')
  final WholeWeekMinus? wholeWeekMinus;
  @override
  @JsonKey(name: 'manager_signature')
  final String? managerSignature;
  @override
  @JsonKey(name: 'employee_signature')
  final String? employeeSignature;
  @override
  @JsonKey(name: 'whole_hours_total_worked')
  final WholeHoursTotalWorked? wholeHoursTotalWorked;

  @override
  String toString() {
    return 'WeeklyReport(id: $id, week: $week, comments: $comments, attachment: $attachment, employeeId: $employeeId, wholePaidHours: $wholePaidHours, wholeWeekMinus: $wholeWeekMinus, managerSignature: $managerSignature, employeeSignature: $employeeSignature, wholeHoursTotalWorked: $wholeHoursTotalWorked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._week, _week) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.wholePaidHours, wholePaidHours) ||
                other.wholePaidHours == wholePaidHours) &&
            (identical(other.wholeWeekMinus, wholeWeekMinus) ||
                other.wholeWeekMinus == wholeWeekMinus) &&
            (identical(other.managerSignature, managerSignature) ||
                other.managerSignature == managerSignature) &&
            (identical(other.employeeSignature, employeeSignature) ||
                other.employeeSignature == employeeSignature) &&
            (identical(other.wholeHoursTotalWorked, wholeHoursTotalWorked) ||
                other.wholeHoursTotalWorked == wholeHoursTotalWorked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_week),
      comments,
      attachment,
      employeeId,
      wholePaidHours,
      wholeWeekMinus,
      managerSignature,
      employeeSignature,
      wholeHoursTotalWorked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyReportImplCopyWith<_$WeeklyReportImpl> get copyWith =>
      __$$WeeklyReportImplCopyWithImpl<_$WeeklyReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyReportImplToJson(
      this,
    );
  }
}

abstract class _WeeklyReport implements WeeklyReport {
  factory _WeeklyReport(
      {final String? id,
      final List<Week>? week,
      final String? comments,
      final String? attachment,
      @JsonKey(name: 'employee_id') final String? employeeId,
      @JsonKey(name: 'whole_paid_hours') final WholePaidHours? wholePaidHours,
      @JsonKey(name: 'whole_week_minus') final WholeWeekMinus? wholeWeekMinus,
      @JsonKey(name: 'manager_signature') final String? managerSignature,
      @JsonKey(name: 'employee_signature') final String? employeeSignature,
      @JsonKey(name: 'whole_hours_total_worked')
      final WholeHoursTotalWorked? wholeHoursTotalWorked}) = _$WeeklyReportImpl;

  factory _WeeklyReport.fromJson(Map<String, dynamic> json) =
      _$WeeklyReportImpl.fromJson;

  @override
  String? get id;
  @override
  List<Week>? get week;
  @override
  String? get comments;
  @override
  String? get attachment;
  @override
  @JsonKey(name: 'employee_id')
  String? get employeeId;
  @override
  @JsonKey(name: 'whole_paid_hours')
  WholePaidHours? get wholePaidHours;
  @override
  @JsonKey(name: 'whole_week_minus')
  WholeWeekMinus? get wholeWeekMinus;
  @override
  @JsonKey(name: 'manager_signature')
  String? get managerSignature;
  @override
  @JsonKey(name: 'employee_signature')
  String? get employeeSignature;
  @override
  @JsonKey(name: 'whole_hours_total_worked')
  WholeHoursTotalWorked? get wholeHoursTotalWorked;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyReportImplCopyWith<_$WeeklyReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
