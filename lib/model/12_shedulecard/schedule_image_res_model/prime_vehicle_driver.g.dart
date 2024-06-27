// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prime_vehicle_driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrimeVehicleDriverImpl _$$PrimeVehicleDriverImplFromJson(
        Map<String, dynamic> json) =>
    _$PrimeVehicleDriverImpl(
      dp: json['dp'] as String?,
      registration: json['registration'] as String?,
      driverId: json['driver_id'] as num?,
      vehicleId: json['vehicle_id'] as num?,
      designation: json['designation'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PrimeVehicleDriverImplToJson(
        _$PrimeVehicleDriverImpl instance) =>
    <String, dynamic>{
      'dp': instance.dp,
      'registration': instance.registration,
      'driver_id': instance.driverId,
      'vehicle_id': instance.vehicleId,
      'designation': instance.designation,
      'name': instance.name,
    };
