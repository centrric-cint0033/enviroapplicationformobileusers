// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamResModelImpl _$$TeamResModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamResModelImpl(
      id: json['id'] as num?,
      employeeId: json['employee_id'] as num?,
      name: json['name'] as String?,
      dpThumbnail: json['dp_thumbnail'] as String?,
    );

Map<String, dynamic> _$$TeamResModelImplToJson(_$TeamResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'name': instance.name,
      'dp_thumbnail': instance.dpThumbnail,
    };
