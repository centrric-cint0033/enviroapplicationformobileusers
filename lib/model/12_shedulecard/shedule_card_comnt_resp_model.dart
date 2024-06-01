// To parse this JSON data, do
//
//     final sheduleCommentModel = sheduleCommentModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'shedule_card_comnt_resp_model.freezed.dart';
part 'shedule_card_comnt_resp_model.g.dart';

SheduleCommentModel sheduleCommentModelFromJson(String str) =>
    SheduleCommentModel.fromJson(json.decode(str));

String sheduleCommentModelToJson(SheduleCommentModel data) =>
    json.encode(data.toJson());

@freezed
class SheduleCommentModel with _$SheduleCommentModel {
  const factory SheduleCommentModel({
    @JsonKey(name: "Success") String? success,
    @JsonKey(name: "comment") Comment? comment,
  }) = _SheduleCommentModel;

  factory SheduleCommentModel.fromJson(Map<String, dynamic> json) =>
      _$SheduleCommentModelFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "author") bool? author,
    @JsonKey(name: "created_by") String? createdBy,
    @JsonKey(name: "comment") String? comment,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
