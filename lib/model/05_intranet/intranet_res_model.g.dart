// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intranet_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$intranetfldrRespModelImpl _$$intranetfldrRespModelImplFromJson(
        Map<String, dynamic> json) =>
    _$intranetfldrRespModelImpl(
      folders: (json['folders'] as List<dynamic>)
          .map((e) =>
              intranetfldrRespModelFolder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$intranetfldrRespModelImplToJson(
        _$intranetfldrRespModelImpl instance) =>
    <String, dynamic>{
      'folders': instance.folders,
    };

_$intranetfldrRespModelFolderImpl _$$intranetfldrRespModelFolderImplFromJson(
        Map<String, dynamic> json) =>
    _$intranetfldrRespModelFolderImpl(
      type: json['type'] as String,
      files: (json['files'] as List<dynamic>)
          .map((e) => FileElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      folders: (json['folders'] as List<dynamic>)
          .map((e) => FolderFolder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$intranetfldrRespModelFolderImplToJson(
        _$intranetfldrRespModelFolderImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'files': instance.files,
      'folders': instance.folders,
    };

_$FileElementImpl _$$FileElementImplFromJson(Map<String, dynamic> json) =>
    _$FileElementImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
      expiryDate: json['expiryDate'],
    );

Map<String, dynamic> _$$FileElementImplToJson(_$FileElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'expiryDate': instance.expiryDate,
    };

_$FolderFolderImpl _$$FolderFolderImplFromJson(Map<String, dynamic> json) =>
    _$FolderFolderImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$FolderFolderImplToJson(_$FolderFolderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };
