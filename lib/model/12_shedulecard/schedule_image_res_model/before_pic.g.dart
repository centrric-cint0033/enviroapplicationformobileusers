// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'before_pic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeforePicImpl _$$BeforePicImplFromJson(Map<String, dynamic> json) =>
    _$BeforePicImpl(
      id: json['id'] as num?,
      file: json['file'] as String?,
      image: json['image'] as String?,
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      editedDateTime: json['edited_date_time'] == null
          ? null
          : DateTime.parse(json['edited_date_time'] as String),
    );

Map<String, dynamic> _$$BeforePicImplToJson(_$BeforePicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'image': instance.image,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
    };
