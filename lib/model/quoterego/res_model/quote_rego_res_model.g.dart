// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_rego_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteRegResModelImpl _$$QuoteRegResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuoteRegResModelImpl(
      id: json['id'] as int?,
      won_lose_status: json['won_lose_status'] as String?,
      client: json['client'] as String?,
      created_by: json['created_by'] as String?,
      client_type: json['client_type'] as String?,
      schedule_id: json['schedule_id'] as String?,
      client_email: json['client_email'] as String?,
    );

Map<String, dynamic> _$$QuoteRegResModelImplToJson(
        _$QuoteRegResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'won_lose_status': instance.won_lose_status,
      'client': instance.client,
      'created_by': instance.created_by,
      'client_type': instance.client_type,
      'schedule_id': instance.schedule_id,
      'client_email': instance.client_email,
    };
