// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oh&s_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OhsRespModelImpl _$$OhsRespModelImplFromJson(Map<String, dynamic> json) =>
    _$OhsRespModelImpl(
      userReadStatus: json['userReadStatus'] as bool?,
      editStatus: json['editStatus'] as bool?,
      dp: json['dp'] as String?,
      created_by: json['created_by'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      fileAttachment: json['fileAttachment'] as String?,
      edited_date_time: json['edited_date_time'] as String?,
      createdDateTime: json['createdDateTime'] as String?,
    );

Map<String, dynamic> _$$OhsRespModelImplToJson(_$OhsRespModelImpl instance) =>
    <String, dynamic>{
      'userReadStatus': instance.userReadStatus,
      'editStatus': instance.editStatus,
      'dp': instance.dp,
      'created_by': instance.created_by,
      'title': instance.title,
      'description': instance.description,
      'fileAttachment': instance.fileAttachment,
      'edited_date_time': instance.edited_date_time,
      'createdDateTime': instance.createdDateTime,
    };
