// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attached_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachedFileImpl _$$AttachedFileImplFromJson(Map<String, dynamic> json) =>
    _$AttachedFileImpl(
      id: json['id'] as num?,
      url: json['url'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      fileName: json['file_name'],
      templateHtml: json['template_html'] as String?,
    );

Map<String, dynamic> _$$AttachedFileImplToJson(_$AttachedFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'type': instance.type,
      'name': instance.name,
      'file_name': instance.fileName,
      'template_html': instance.templateHtml,
    };
