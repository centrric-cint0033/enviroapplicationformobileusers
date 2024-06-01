// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_create_folder_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamCreateFolderReqModelImpl _$$TeamCreateFolderReqModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamCreateFolderReqModelImpl(
      name: json['name'] as String?,
      employee: json['employee'] as num?,
      parent_folder: (json['parent_folder'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TeamCreateFolderReqModelImplToJson(
        _$TeamCreateFolderReqModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'employee': instance.employee,
      'parent_folder': instance.parent_folder,
    };
