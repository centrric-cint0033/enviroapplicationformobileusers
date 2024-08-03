// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Week _$WeekFromJson(Map<String, dynamic> json) {
  return _Week.fromJson(json);
}

/// @nodoc
mixin _$Week {
  String? get day => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  dynamic get sick => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay? get start => throw _privateConstructorUsedError;
  dynamic get annual => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay? get finish => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_time')
  dynamic get fullTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'half_time')
  dynamic get halfTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_days')
  dynamic get otherDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'normal_hours')
  dynamic get normalHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_holidays')
  dynamic get publicHolidays => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_hours_worked')
  dynamic get totalHoursWorked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekCopyWith<Week> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) then) =
      _$WeekCopyWithImpl<$Res, Week>;
  @useResult
  $Res call(
      {String? day,
      String? date,
      dynamic sick,
      @TimeOfDayConverter() TimeOfDay? start,
      dynamic annual,
      @TimeOfDayConverter() TimeOfDay? finish,
      @JsonKey(name: 'full_time') dynamic fullTime,
      @JsonKey(name: 'half_time') dynamic halfTime,
      @JsonKey(name: 'other_days') dynamic otherDays,
      @JsonKey(name: 'normal_hours') dynamic normalHours,
      @JsonKey(name: 'public_holidays') dynamic publicHolidays,
      @JsonKey(name: 'total_hours_worked') dynamic totalHoursWorked});
}

/// @nodoc
class _$WeekCopyWithImpl<$Res, $Val extends Week>
    implements $WeekCopyWith<$Res> {
  _$WeekCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? date = freezed,
    Object? sick = freezed,
    Object? start = freezed,
    Object? annual = freezed,
    Object? finish = freezed,
    Object? fullTime = freezed,
    Object? halfTime = freezed,
    Object? otherDays = freezed,
    Object? normalHours = freezed,
    Object? publicHolidays = freezed,
    Object? totalHoursWorked = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      sick: freezed == sick
          ? _value.sick
          : sick // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      annual: freezed == annual
          ? _value.annual
          : annual // ignore: cast_nullable_to_non_nullable
              as dynamic,
      finish: freezed == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      fullTime: freezed == fullTime
          ? _value.fullTime
          : fullTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      halfTime: freezed == halfTime
          ? _value.halfTime
          : halfTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otherDays: freezed == otherDays
          ? _value.otherDays
          : otherDays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      normalHours: freezed == normalHours
          ? _value.normalHours
          : normalHours // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publicHolidays: freezed == publicHolidays
          ? _value.publicHolidays
          : publicHolidays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalHoursWorked: freezed == totalHoursWorked
          ? _value.totalHoursWorked
          : totalHoursWorked // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekImplCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$$WeekImplCopyWith(
          _$WeekImpl value, $Res Function(_$WeekImpl) then) =
      __$$WeekImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? day,
      String? date,
      dynamic sick,
      @TimeOfDayConverter() TimeOfDay? start,
      dynamic annual,
      @TimeOfDayConverter() TimeOfDay? finish,
      @JsonKey(name: 'full_time') dynamic fullTime,
      @JsonKey(name: 'half_time') dynamic halfTime,
      @JsonKey(name: 'other_days') dynamic otherDays,
      @JsonKey(name: 'normal_hours') dynamic normalHours,
      @JsonKey(name: 'public_holidays') dynamic publicHolidays,
      @JsonKey(name: 'total_hours_worked') dynamic totalHoursWorked});
}

/// @nodoc
class __$$WeekImplCopyWithImpl<$Res>
    extends _$WeekCopyWithImpl<$Res, _$WeekImpl>
    implements _$$WeekImplCopyWith<$Res> {
  __$$WeekImplCopyWithImpl(_$WeekImpl _value, $Res Function(_$WeekImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? date = freezed,
    Object? sick = freezed,
    Object? start = freezed,
    Object? annual = freezed,
    Object? finish = freezed,
    Object? fullTime = freezed,
    Object? halfTime = freezed,
    Object? otherDays = freezed,
    Object? normalHours = freezed,
    Object? publicHolidays = freezed,
    Object? totalHoursWorked = freezed,
  }) {
    return _then(_$WeekImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      sick: freezed == sick
          ? _value.sick
          : sick // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      annual: freezed == annual
          ? _value.annual
          : annual // ignore: cast_nullable_to_non_nullable
              as dynamic,
      finish: freezed == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      fullTime: freezed == fullTime
          ? _value.fullTime
          : fullTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      halfTime: freezed == halfTime
          ? _value.halfTime
          : halfTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otherDays: freezed == otherDays
          ? _value.otherDays
          : otherDays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      normalHours: freezed == normalHours
          ? _value.normalHours
          : normalHours // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publicHolidays: freezed == publicHolidays
          ? _value.publicHolidays
          : publicHolidays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalHoursWorked: freezed == totalHoursWorked
          ? _value.totalHoursWorked
          : totalHoursWorked // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekImpl implements _Week {
  _$WeekImpl(
      {this.day,
      this.date,
      this.sick,
      @TimeOfDayConverter() this.start,
      this.annual,
      @TimeOfDayConverter() this.finish,
      @JsonKey(name: 'full_time') this.fullTime,
      @JsonKey(name: 'half_time') this.halfTime,
      @JsonKey(name: 'other_days') this.otherDays,
      @JsonKey(name: 'normal_hours') this.normalHours,
      @JsonKey(name: 'public_holidays') this.publicHolidays,
      @JsonKey(name: 'total_hours_worked') this.totalHoursWorked});

  factory _$WeekImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekImplFromJson(json);

  @override
  final String? day;
  @override
  final String? date;
  @override
  final dynamic sick;
  @override
  @TimeOfDayConverter()
  final TimeOfDay? start;
  @override
  final dynamic annual;
  @override
  @TimeOfDayConverter()
  final TimeOfDay? finish;
  @override
  @JsonKey(name: 'full_time')
  final dynamic fullTime;
  @override
  @JsonKey(name: 'half_time')
  final dynamic halfTime;
  @override
  @JsonKey(name: 'other_days')
  final dynamic otherDays;
  @override
  @JsonKey(name: 'normal_hours')
  final dynamic normalHours;
  @override
  @JsonKey(name: 'public_holidays')
  final dynamic publicHolidays;
  @override
  @JsonKey(name: 'total_hours_worked')
  final dynamic totalHoursWorked;

  @override
  String toString() {
    return 'Week(day: $day, date: $date, sick: $sick, start: $start, annual: $annual, finish: $finish, fullTime: $fullTime, halfTime: $halfTime, otherDays: $otherDays, normalHours: $normalHours, publicHolidays: $publicHolidays, totalHoursWorked: $totalHoursWorked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other.sick, sick) &&
            (identical(other.start, start) || other.start == start) &&
            const DeepCollectionEquality().equals(other.annual, annual) &&
            (identical(other.finish, finish) || other.finish == finish) &&
            const DeepCollectionEquality().equals(other.fullTime, fullTime) &&
            const DeepCollectionEquality().equals(other.halfTime, halfTime) &&
            const DeepCollectionEquality().equals(other.otherDays, otherDays) &&
            const DeepCollectionEquality()
                .equals(other.normalHours, normalHours) &&
            const DeepCollectionEquality()
                .equals(other.publicHolidays, publicHolidays) &&
            const DeepCollectionEquality()
                .equals(other.totalHoursWorked, totalHoursWorked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      day,
      date,
      const DeepCollectionEquality().hash(sick),
      start,
      const DeepCollectionEquality().hash(annual),
      finish,
      const DeepCollectionEquality().hash(fullTime),
      const DeepCollectionEquality().hash(halfTime),
      const DeepCollectionEquality().hash(otherDays),
      const DeepCollectionEquality().hash(normalHours),
      const DeepCollectionEquality().hash(publicHolidays),
      const DeepCollectionEquality().hash(totalHoursWorked));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekImplCopyWith<_$WeekImpl> get copyWith =>
      __$$WeekImplCopyWithImpl<_$WeekImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekImplToJson(
      this,
    );
  }
}

abstract class _Week implements Week {
  factory _Week(
      {final String? day,
      final String? date,
      final dynamic sick,
      @TimeOfDayConverter() final TimeOfDay? start,
      final dynamic annual,
      @TimeOfDayConverter() final TimeOfDay? finish,
      @JsonKey(name: 'full_time') final dynamic fullTime,
      @JsonKey(name: 'half_time') final dynamic halfTime,
      @JsonKey(name: 'other_days') final dynamic otherDays,
      @JsonKey(name: 'normal_hours') final dynamic normalHours,
      @JsonKey(name: 'public_holidays') final dynamic publicHolidays,
      @JsonKey(name: 'total_hours_worked')
      final dynamic totalHoursWorked}) = _$WeekImpl;

  factory _Week.fromJson(Map<String, dynamic> json) = _$WeekImpl.fromJson;

  @override
  String? get day;
  @override
  String? get date;
  @override
  dynamic get sick;
  @override
  @TimeOfDayConverter()
  TimeOfDay? get start;
  @override
  dynamic get annual;
  @override
  @TimeOfDayConverter()
  TimeOfDay? get finish;
  @override
  @JsonKey(name: 'full_time')
  dynamic get fullTime;
  @override
  @JsonKey(name: 'half_time')
  dynamic get halfTime;
  @override
  @JsonKey(name: 'other_days')
  dynamic get otherDays;
  @override
  @JsonKey(name: 'normal_hours')
  dynamic get normalHours;
  @override
  @JsonKey(name: 'public_holidays')
  dynamic get publicHolidays;
  @override
  @JsonKey(name: 'total_hours_worked')
  dynamic get totalHoursWorked;
  @override
  @JsonKey(ignore: true)
  _$$WeekImplCopyWith<_$WeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
