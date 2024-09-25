// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  num? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_on')
  String? get createdOn => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'tab_type')
  String? get tabType => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_status')
  bool? get scheduleStatus => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'created_on') String? createdOn,
      String? type,
      @JsonKey(name: 'tab_type') String? tabType,
      @JsonKey(name: 'schedule_status') bool? scheduleStatus,
      bool? error});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdOn = freezed,
    Object? type = freezed,
    Object? tabType = freezed,
    Object? scheduleStatus = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tabType: freezed == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleStatus: freezed == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'created_on') String? createdOn,
      String? type,
      @JsonKey(name: 'tab_type') String? tabType,
      @JsonKey(name: 'schedule_status') bool? scheduleStatus,
      bool? error});
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdOn = freezed,
    Object? type = freezed,
    Object? tabType = freezed,
    Object? scheduleStatus = freezed,
    Object? error = freezed,
  }) {
    return _then(_$JobImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tabType: freezed == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleStatus: freezed == scheduleStatus
          ? _value.scheduleStatus
          : scheduleStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl implements _Job {
  _$JobImpl(
      {this.id,
      @JsonKey(name: 'created_on') this.createdOn,
      this.type,
      @JsonKey(name: 'tab_type') this.tabType,
      @JsonKey(name: 'schedule_status') this.scheduleStatus,
      this.error});

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  @override
  final num? id;
  @override
  @JsonKey(name: 'created_on')
  final String? createdOn;
  @override
  final String? type;
  @override
  @JsonKey(name: 'tab_type')
  final String? tabType;
  @override
  @JsonKey(name: 'schedule_status')
  final bool? scheduleStatus;
  @override
  final bool? error;

  @override
  String toString() {
    return 'Job(id: $id, createdOn: $createdOn, type: $type, tabType: $tabType, scheduleStatus: $scheduleStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tabType, tabType) || other.tabType == tabType) &&
            (identical(other.scheduleStatus, scheduleStatus) ||
                other.scheduleStatus == scheduleStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdOn, type, tabType, scheduleStatus, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  factory _Job(
      {final num? id,
      @JsonKey(name: 'created_on') final String? createdOn,
      final String? type,
      @JsonKey(name: 'tab_type') final String? tabType,
      @JsonKey(name: 'schedule_status') final bool? scheduleStatus,
      final bool? error}) = _$JobImpl;

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  num? get id;
  @override
  @JsonKey(name: 'created_on')
  String? get createdOn;
  @override
  String? get type;
  @override
  @JsonKey(name: 'tab_type')
  String? get tabType;
  @override
  @JsonKey(name: 'schedule_status')
  bool? get scheduleStatus;
  @override
  bool? get error;
  @override
  @JsonKey(ignore: true)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
