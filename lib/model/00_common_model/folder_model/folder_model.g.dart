// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderListModelImpl _$$FolderListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FolderListModelImpl(
      folders: (json['folders'] as List<dynamic>?)
          ?.map((e) => FolderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FolderListModelImplToJson(
        _$FolderListModelImpl instance) =>
    <String, dynamic>{
      'folders': instance.folders,
    };

_$FolderModelImpl _$$FolderModelImplFromJson(Map<String, dynamic> json) =>
    _$FolderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FolderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      folders: (json['folders'] as List<dynamic>?)
          ?.map((e) => FolderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      expiryDate: json['expiryDate'],
    );

Map<String, dynamic> _$$FolderModelImplToJson(_$FolderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'url': instance.url,
      'files': instance.files,
      'folders': instance.folders,
      'expiryDate': instance.expiryDate,
    };
