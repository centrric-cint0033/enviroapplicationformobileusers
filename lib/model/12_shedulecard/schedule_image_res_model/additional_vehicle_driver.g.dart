// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_vehicle_driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdditionalVehicleDriverImpl _$$AdditionalVehicleDriverImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalVehicleDriverImpl(
      name: json['name'] as String?,
      designation: json['designation'] as String?,
      driverId: json['driver_id'] as num?,
      vehicleId: json['vehicle_id'] as num?,
      dp: json['dp'] as String?,
      registration: json['registration'] as String?,
    );

Map<String, dynamic> _$$AdditionalVehicleDriverImplToJson(
        _$AdditionalVehicleDriverImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'designation': instance.designation,
      'driver_id': instance.driverId,
      'vehicle_id': instance.vehicleId,
      'dp': instance.dp,
      'registration': instance.registration,
    };
