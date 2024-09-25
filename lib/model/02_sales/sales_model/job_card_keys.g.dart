// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_card_keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobCardKeysImpl _$$JobCardKeysImplFromJson(Map<String, dynamic> json) =>
    _$JobCardKeysImpl(
      id: (json['id'] as num?)?.toInt(),
      siteAddress: json['site_address'] as String?,
      capacity: json['capacity'] as String?,
    );

Map<String, dynamic> _$$JobCardKeysImplToJson(_$JobCardKeysImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'site_address': instance.siteAddress,
      'capacity': instance.capacity,
    };
