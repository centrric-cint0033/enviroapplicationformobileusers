// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_of_clients_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NumberOfClientsResModelImpl _$$NumberOfClientsResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NumberOfClientsResModelImpl(
      totalPermanentClients: json['total_permanent_clients'] as num?,
      totalTempClients: json['total_temp_clients'] as num?,
      totalDeletedClients: json['total_deleted_clients'] as num?,
    );

Map<String, dynamic> _$$NumberOfClientsResModelImplToJson(
        _$NumberOfClientsResModelImpl instance) =>
    <String, dynamic>{
      'total_permanent_clients': instance.totalPermanentClients,
      'total_temp_clients': instance.totalTempClients,
      'total_deleted_clients': instance.totalDeletedClients,
    };
