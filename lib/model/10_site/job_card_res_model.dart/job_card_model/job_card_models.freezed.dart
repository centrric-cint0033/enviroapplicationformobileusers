// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_card_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobCardModels _$JobCardModelsFromJson(Map<String, dynamic> json) {
  return _JobCardModels.fromJson(json);
}

/// @nodoc
mixin _$JobCardModels {
  Data? get data => throw _privateConstructorUsedError;
  num? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCardModelsCopyWith<JobCardModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCardModelsCopyWith<$Res> {
  factory $JobCardModelsCopyWith(
          JobCardModels value, $Res Function(JobCardModels) then) =
      _$JobCardModelsCopyWithImpl<$Res, JobCardModels>;
  @useResult
  $Res call({Data? data, num? status});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$JobCardModelsCopyWithImpl<$Res, $Val extends JobCardModels>
    implements $JobCardModelsCopyWith<$Res> {
  _$JobCardModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobCardModelsImplCopyWith<$Res>
    implements $JobCardModelsCopyWith<$Res> {
  factory _$$JobCardModelsImplCopyWith(
          _$JobCardModelsImpl value, $Res Function(_$JobCardModelsImpl) then) =
      __$$JobCardModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, num? status});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$JobCardModelsImplCopyWithImpl<$Res>
    extends _$JobCardModelsCopyWithImpl<$Res, _$JobCardModelsImpl>
    implements _$$JobCardModelsImplCopyWith<$Res> {
  __$$JobCardModelsImplCopyWithImpl(
      _$JobCardModelsImpl _value, $Res Function(_$JobCardModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = freezed,
  }) {
    return _then(_$JobCardModelsImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobCardModelsImpl implements _JobCardModels {
  _$JobCardModelsImpl({this.data, this.status});

  factory _$JobCardModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobCardModelsImplFromJson(json);

  @override
  final Data? data;
  @override
  final num? status;

  @override
  String toString() {
    return 'JobCardModels(data: $data, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobCardModelsImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobCardModelsImplCopyWith<_$JobCardModelsImpl> get copyWith =>
      __$$JobCardModelsImplCopyWithImpl<_$JobCardModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobCardModelsImplToJson(
      this,
    );
  }
}

abstract class _JobCardModels implements JobCardModels {
  factory _JobCardModels({final Data? data, final num? status}) =
      _$JobCardModelsImpl;

  factory _JobCardModels.fromJson(Map<String, dynamic> json) =
      _$JobCardModelsImpl.fromJson;

  @override
  Data? get data;
  @override
  num? get status;
  @override
  @JsonKey(ignore: true)
  _$$JobCardModelsImplCopyWith<_$JobCardModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
