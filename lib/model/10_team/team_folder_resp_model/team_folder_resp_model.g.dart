// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_folder_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamFolderRespModelImpl _$$TeamFolderRespModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamFolderRespModelImpl(
      folders: (json['folders'] as List<dynamic>?)
          ?.map((e) => Folder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamFolderRespModelImplToJson(
        _$TeamFolderRespModelImpl instance) =>
    <String, dynamic>{
      'folders': instance.folders,
    };
