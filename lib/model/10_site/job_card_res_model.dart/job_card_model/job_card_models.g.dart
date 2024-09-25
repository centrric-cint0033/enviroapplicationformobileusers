// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_card_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobCardModelsImpl _$$JobCardModelsImplFromJson(Map<String, dynamic> json) =>
    _$JobCardModelsImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as num?,
    );

Map<String, dynamic> _$$JobCardModelsImplToJson(_$JobCardModelsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };
