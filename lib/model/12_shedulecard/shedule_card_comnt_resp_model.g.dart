// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shedule_card_comnt_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SheduleCommentModelImpl _$$SheduleCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SheduleCommentModelImpl(
      success: json['Success'] as String?,
      comment: json['comment'] == null
          ? null
          : Comment.fromJson(json['comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SheduleCommentModelImplToJson(
        _$SheduleCommentModelImpl instance) =>
    <String, dynamic>{
      'Success': instance.success,
      'comment': instance.comment,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['id'] as int?,
      author: json['author'] as bool?,
      createdBy: json['created_by'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'created_by': instance.createdBy,
      'comment': instance.comment,
    };
