// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderResModelImpl _$$FolderResModelImplFromJson(Map<String, dynamic> json) =>
    _$FolderResModelImpl(
      folders: (json['folders'] as List<dynamic>?)
          ?.map((e) => FolderListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FolderResModelImplToJson(
        _$FolderResModelImpl instance) =>
    <String, dynamic>{
      'folders': instance.folders,
    };

_$FolderListModelImpl _$$FolderListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FolderListModelImpl(
      type: json['type'] as String?,
      files: json['files'] as List<dynamic>?,
      folders: (json['folders'] as List<dynamic>?)
          ?.map((e) => Folder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FolderListModelImplToJson(
        _$FolderListModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'files': instance.files,
      'folders': instance.folders,
    };

_$FolderImpl _$$FolderImplFromJson(Map<String, dynamic> json) => _$FolderImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$FolderImplToJson(_$FolderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };
