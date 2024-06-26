// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_vehicle_driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdditionalVehicleDriver _$AdditionalVehicleDriverFromJson(
    Map<String, dynamic> json) {
  return _AdditionalVehicleDriver.fromJson(json);
}

/// @nodoc
mixin _$AdditionalVehicleDriver {
  String? get name => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  num? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_id')
  num? get vehicleId => throw _privateConstructorUsedError;
  String? get dp => throw _privateConstructorUsedError;
  String? get registration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalVehicleDriverCopyWith<AdditionalVehicleDriver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalVehicleDriverCopyWith<$Res> {
  factory $AdditionalVehicleDriverCopyWith(AdditionalVehicleDriver value,
          $Res Function(AdditionalVehicleDriver) then) =
      _$AdditionalVehicleDriverCopyWithImpl<$Res, AdditionalVehicleDriver>;
  @useResult
  $Res call(
      {String? name,
      String? designation,
      @JsonKey(name: 'driver_id') num? driverId,
      @JsonKey(name: 'vehicle_id') num? vehicleId,
      String? dp,
      String? registration});
}

/// @nodoc
class _$AdditionalVehicleDriverCopyWithImpl<$Res,
        $Val extends AdditionalVehicleDriver>
    implements $AdditionalVehicleDriverCopyWith<$Res> {
  _$AdditionalVehicleDriverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? designation = freezed,
    Object? driverId = freezed,
    Object? vehicleId = freezed,
    Object? dp = freezed,
    Object? registration = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as num?,
      vehicleId: freezed == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as num?,
      dp: freezed == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as String?,
      registration: freezed == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalVehicleDriverImplCopyWith<$Res>
    implements $AdditionalVehicleDriverCopyWith<$Res> {
  factory _$$AdditionalVehicleDriverImplCopyWith(
          _$AdditionalVehicleDriverImpl value,
          $Res Function(_$AdditionalVehicleDriverImpl) then) =
      __$$AdditionalVehicleDriverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? designation,
      @JsonKey(name: 'driver_id') num? driverId,
      @JsonKey(name: 'vehicle_id') num? vehicleId,
      String? dp,
      String? registration});
}

/// @nodoc
class __$$AdditionalVehicleDriverImplCopyWithImpl<$Res>
    extends _$AdditionalVehicleDriverCopyWithImpl<$Res,
        _$AdditionalVehicleDriverImpl>
    implements _$$AdditionalVehicleDriverImplCopyWith<$Res> {
  __$$AdditionalVehicleDriverImplCopyWithImpl(
      _$AdditionalVehicleDriverImpl _value,
      $Res Function(_$AdditionalVehicleDriverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? designation = freezed,
    Object? driverId = freezed,
    Object? vehicleId = freezed,
    Object? dp = freezed,
    Object? registration = freezed,
  }) {
    return _then(_$AdditionalVehicleDriverImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as num?,
      vehicleId: freezed == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as num?,
      dp: freezed == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as String?,
      registration: freezed == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalVehicleDriverImpl implements _AdditionalVehicleDriver {
  _$AdditionalVehicleDriverImpl(
      {this.name,
      this.designation,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'vehicle_id') this.vehicleId,
      this.dp,
      this.registration});

  factory _$AdditionalVehicleDriverImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalVehicleDriverImplFromJson(json);

  @override
  final String? name;
  @override
  final String? designation;
  @override
  @JsonKey(name: 'driver_id')
  final num? driverId;
  @override
  @JsonKey(name: 'vehicle_id')
  final num? vehicleId;
  @override
  final String? dp;
  @override
  final String? registration;

  @override
  String toString() {
    return 'AdditionalVehicleDriver(name: $name, designation: $designation, driverId: $driverId, vehicleId: $vehicleId, dp: $dp, registration: $registration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalVehicleDriverImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.dp, dp) || other.dp == dp) &&
            (identical(other.registration, registration) ||
                other.registration == registration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, designation, driverId, vehicleId, dp, registration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalVehicleDriverImplCopyWith<_$AdditionalVehicleDriverImpl>
      get copyWith => __$$AdditionalVehicleDriverImplCopyWithImpl<
          _$AdditionalVehicleDriverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalVehicleDriverImplToJson(
      this,
    );
  }
}

abstract class _AdditionalVehicleDriver implements AdditionalVehicleDriver {
  factory _AdditionalVehicleDriver(
      {final String? name,
      final String? designation,
      @JsonKey(name: 'driver_id') final num? driverId,
      @JsonKey(name: 'vehicle_id') final num? vehicleId,
      final String? dp,
      final String? registration}) = _$AdditionalVehicleDriverImpl;

  factory _AdditionalVehicleDriver.fromJson(Map<String, dynamic> json) =
      _$AdditionalVehicleDriverImpl.fromJson;

  @override
  String? get name;
  @override
  String? get designation;
  @override
  @JsonKey(name: 'driver_id')
  num? get driverId;
  @override
  @JsonKey(name: 'vehicle_id')
  num? get vehicleId;
  @override
  String? get dp;
  @override
  String? get registration;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalVehicleDriverImplCopyWith<_$AdditionalVehicleDriverImpl>
      get copyWith => throw _privateConstructorUsedError;
}
