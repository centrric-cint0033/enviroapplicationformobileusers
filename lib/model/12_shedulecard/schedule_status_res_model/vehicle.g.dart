// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: json['id'] as num?,
      registration: json['registration'] as String?,
      type: json['type'] as String?,
      vehicleType: json['vehicle_type'] as String?,
    );

Map<String, dynamic> _$$VehicleImplToJson(_$VehicleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registration': instance.registration,
      'type': instance.type,
      'vehicle_type': instance.vehicleType,
    };
