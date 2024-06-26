// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prime_vehicle_driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrimeVehicleDriver _$PrimeVehicleDriverFromJson(Map<String, dynamic> json) {
  return _PrimeVehicleDriver.fromJson(json);
}

/// @nodoc
mixin _$PrimeVehicleDriver {
  String? get dp => throw _privateConstructorUsedError;
  String? get registration => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  num? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_id')
  num? get vehicleId => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrimeVehicleDriverCopyWith<PrimeVehicleDriver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimeVehicleDriverCopyWith<$Res> {
  factory $PrimeVehicleDriverCopyWith(
          PrimeVehicleDriver value, $Res Function(PrimeVehicleDriver) then) =
      _$PrimeVehicleDriverCopyWithImpl<$Res, PrimeVehicleDriver>;
  @useResult
  $Res call(
      {String? dp,
      String? registration,
      @JsonKey(name: 'driver_id') num? driverId,
      @JsonKey(name: 'vehicle_id') num? vehicleId,
      String? designation,
      String? name});
}

/// @nodoc
class _$PrimeVehicleDriverCopyWithImpl<$Res, $Val extends PrimeVehicleDriver>
    implements $PrimeVehicleDriverCopyWith<$Res> {
  _$PrimeVehicleDriverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dp = freezed,
    Object? registration = freezed,
    Object? driverId = freezed,
    Object? vehicleId = freezed,
    Object? designation = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      dp: freezed == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as String?,
      registration: freezed == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as num?,
      vehicleId: freezed == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as num?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimeVehicleDriverImplCopyWith<$Res>
    implements $PrimeVehicleDriverCopyWith<$Res> {
  factory _$$PrimeVehicleDriverImplCopyWith(_$PrimeVehicleDriverImpl value,
          $Res Function(_$PrimeVehicleDriverImpl) then) =
      __$$PrimeVehicleDriverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? dp,
      String? registration,
      @JsonKey(name: 'driver_id') num? driverId,
      @JsonKey(name: 'vehicle_id') num? vehicleId,
      String? designation,
      String? name});
}

/// @nodoc
class __$$PrimeVehicleDriverImplCopyWithImpl<$Res>
    extends _$PrimeVehicleDriverCopyWithImpl<$Res, _$PrimeVehicleDriverImpl>
    implements _$$PrimeVehicleDriverImplCopyWith<$Res> {
  __$$PrimeVehicleDriverImplCopyWithImpl(_$PrimeVehicleDriverImpl _value,
      $Res Function(_$PrimeVehicleDriverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dp = freezed,
    Object? registration = freezed,
    Object? driverId = freezed,
    Object? vehicleId = freezed,
    Object? designation = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PrimeVehicleDriverImpl(
      dp: freezed == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as String?,
      registration: freezed == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as num?,
      vehicleId: freezed == vehicleId
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as num?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrimeVehicleDriverImpl implements _PrimeVehicleDriver {
  _$PrimeVehicleDriverImpl(
      {this.dp,
      this.registration,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'vehicle_id') this.vehicleId,
      this.designation,
      this.name});

  factory _$PrimeVehicleDriverImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrimeVehicleDriverImplFromJson(json);

  @override
  final String? dp;
  @override
  final String? registration;
  @override
  @JsonKey(name: 'driver_id')
  final num? driverId;
  @override
  @JsonKey(name: 'vehicle_id')
  final num? vehicleId;
  @override
  final String? designation;
  @override
  final String? name;

  @override
  String toString() {
    return 'PrimeVehicleDriver(dp: $dp, registration: $registration, driverId: $driverId, vehicleId: $vehicleId, designation: $designation, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimeVehicleDriverImpl &&
            (identical(other.dp, dp) || other.dp == dp) &&
            (identical(other.registration, registration) ||
                other.registration == registration) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dp, registration, driverId, vehicleId, designation, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimeVehicleDriverImplCopyWith<_$PrimeVehicleDriverImpl> get copyWith =>
      __$$PrimeVehicleDriverImplCopyWithImpl<_$PrimeVehicleDriverImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrimeVehicleDriverImplToJson(
      this,
    );
  }
}

abstract class _PrimeVehicleDriver implements PrimeVehicleDriver {
  factory _PrimeVehicleDriver(
      {final String? dp,
      final String? registration,
      @JsonKey(name: 'driver_id') final num? driverId,
      @JsonKey(name: 'vehicle_id') final num? vehicleId,
      final String? designation,
      final String? name}) = _$PrimeVehicleDriverImpl;

  factory _PrimeVehicleDriver.fromJson(Map<String, dynamic> json) =
      _$PrimeVehicleDriverImpl.fromJson;

  @override
  String? get dp;
  @override
  String? get registration;
  @override
  @JsonKey(name: 'driver_id')
  num? get driverId;
  @override
  @JsonKey(name: 'vehicle_id')
  num? get vehicleId;
  @override
  String? get designation;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$PrimeVehicleDriverImplCopyWith<_$PrimeVehicleDriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
