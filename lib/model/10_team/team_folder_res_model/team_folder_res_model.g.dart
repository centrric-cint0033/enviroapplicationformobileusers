// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_folder_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamFolderResModelImpl _$$TeamFolderResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamFolderResModelImpl(
      folders: (json['folders'] as List<dynamic>?)
          ?.map((e) => Folder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamFolderResModelImplToJson(
        _$TeamFolderResModelImpl instance) =>
    <String, dynamic>{
      'folders': instance.folders,
    };
