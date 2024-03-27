// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_card_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobCardKeys _$JobCardKeysFromJson(Map<String, dynamic> json) {
  return _JobCardKeys.fromJson(json);
}

/// @nodoc
mixin _$JobCardKeys {
  @JsonKey(name: 'site_address')
  String? get siteAddress => throw _privateConstructorUsedError;
  String? get capacity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCardKeysCopyWith<JobCardKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCardKeysCopyWith<$Res> {
  factory $JobCardKeysCopyWith(
          JobCardKeys value, $Res Function(JobCardKeys) then) =
      _$JobCardKeysCopyWithImpl<$Res, JobCardKeys>;
  @useResult
  $Res call(
      {@JsonKey(name: 'site_address') String? siteAddress, String? capacity});
}

/// @nodoc
class _$JobCardKeysCopyWithImpl<$Res, $Val extends JobCardKeys>
    implements $JobCardKeysCopyWith<$Res> {
  _$JobCardKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteAddress = freezed,
    Object? capacity = freezed,
  }) {
    return _then(_value.copyWith(
      siteAddress: freezed == siteAddress
          ? _value.siteAddress
          : siteAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobCardKeysImplCopyWith<$Res>
    implements $JobCardKeysCopyWith<$Res> {
  factory _$$JobCardKeysImplCopyWith(
          _$JobCardKeysImpl value, $Res Function(_$JobCardKeysImpl) then) =
      __$$JobCardKeysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'site_address') String? siteAddress, String? capacity});
}

/// @nodoc
class __$$JobCardKeysImplCopyWithImpl<$Res>
    extends _$JobCardKeysCopyWithImpl<$Res, _$JobCardKeysImpl>
    implements _$$JobCardKeysImplCopyWith<$Res> {
  __$$JobCardKeysImplCopyWithImpl(
      _$JobCardKeysImpl _value, $Res Function(_$JobCardKeysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteAddress = freezed,
    Object? capacity = freezed,
  }) {
    return _then(_$JobCardKeysImpl(
      siteAddress: freezed == siteAddress
          ? _value.siteAddress
          : siteAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobCardKeysImpl implements _JobCardKeys {
  _$JobCardKeysImpl(
      {@JsonKey(name: 'site_address') this.siteAddress, this.capacity});

  factory _$JobCardKeysImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobCardKeysImplFromJson(json);

  @override
  @JsonKey(name: 'site_address')
  final String? siteAddress;
  @override
  final String? capacity;

  @override
  String toString() {
    return 'JobCardKeys(siteAddress: $siteAddress, capacity: $capacity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobCardKeysImpl &&
            (identical(other.siteAddress, siteAddress) ||
                other.siteAddress == siteAddress) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, siteAddress, capacity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobCardKeysImplCopyWith<_$JobCardKeysImpl> get copyWith =>
      __$$JobCardKeysImplCopyWithImpl<_$JobCardKeysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobCardKeysImplToJson(
      this,
    );
  }
}

abstract class _JobCardKeys implements JobCardKeys {
  factory _JobCardKeys(
      {@JsonKey(name: 'site_address') final String? siteAddress,
      final String? capacity}) = _$JobCardKeysImpl;

  factory _JobCardKeys.fromJson(Map<String, dynamic> json) =
      _$JobCardKeysImpl.fromJson;

  @override
  @JsonKey(name: 'site_address')
  String? get siteAddress;
  @override
  String? get capacity;
  @override
  @JsonKey(ignore: true)
  _$$JobCardKeysImplCopyWith<_$JobCardKeysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
