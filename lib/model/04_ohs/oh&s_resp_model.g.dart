// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oh&s_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OhsRespModelImpl _$$OhsRespModelImplFromJson(Map<String, dynamic> json) =>
    _$OhsRespModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userReadStatus: json['user_read_status'] as bool?,
      editStatus: json['editStatus'] as bool?,
      dp: json['dp'] as String?,
      created_by: json['created_by'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      fileAttachment: json['fileAttachment'] as String?,
      edited_date_time: json['edited_date_time'] as String?,
      createdDateTime: json['createdDateTime'] as String?,
      file_attachment: json['file_attachment'] as String?,
      members_list: (json['members_list'] as List<dynamic>?)
          ?.map((e) => Members.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments_list: (json['comments_list'] as List<dynamic>?)
          ?.map((e) => Comments.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: json['members'] as num?,
    );

Map<String, dynamic> _$$OhsRespModelImplToJson(_$OhsRespModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_read_status': instance.userReadStatus,
      'editStatus': instance.editStatus,
      'dp': instance.dp,
      'created_by': instance.created_by,
      'title': instance.title,
      'description': instance.description,
      'fileAttachment': instance.fileAttachment,
      'edited_date_time': instance.edited_date_time,
      'createdDateTime': instance.createdDateTime,
      'file_attachment': instance.file_attachment,
      'members_list': instance.members_list,
      'comments_list': instance.comments_list,
      'members': instance.members,
    };

_$CommentsImpl _$$CommentsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsImpl(
      id: (json['id'] as num?)?.toInt(),
      comment: json['comment'] as String?,
      commentBy: json['comment_by'] as String?,
    );

Map<String, dynamic> _$$CommentsImplToJson(_$CommentsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'comment_by': instance.commentBy,
    };

_$MembersImpl _$$MembersImplFromJson(Map<String, dynamic> json) =>
    _$MembersImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MembersImplToJson(_$MembersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
