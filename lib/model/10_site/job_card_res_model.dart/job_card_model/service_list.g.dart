// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceListImpl _$$ServiceListImplFromJson(Map<String, dynamic> json) =>
    _$ServiceListImpl(
      no: json['no'] as String?,
      capacity: json['capacity'] as String?,
      frequency: json['frequency'] as String?,
      wasteType: json['waste_type'] as String?,
      pitLocation: json['pit_location'] as String?,
    );

Map<String, dynamic> _$$ServiceListImplToJson(_$ServiceListImpl instance) =>
    <String, dynamic>{
      'no': instance.no,
      'capacity': instance.capacity,
      'frequency': instance.frequency,
      'waste_type': instance.wasteType,
      'pit_location': instance.pitLocation,
    };
