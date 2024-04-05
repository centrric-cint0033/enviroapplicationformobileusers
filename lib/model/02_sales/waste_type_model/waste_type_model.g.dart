// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waste_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WasteTypeModelImpl _$$WasteTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$WasteTypeModelImpl(
      id: json['id'] as num?,
      wasteTypeStr: json['waste_type_str'],
      hidden: json['hidden'] as bool?,
      originalName: json['original_name'] as String?,
    );

Map<String, dynamic> _$$WasteTypeModelImplToJson(
        _$WasteTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'waste_type_str': instance.wasteTypeStr,
      'hidden': instance.hidden,
      'original_name': instance.originalName,
    };
