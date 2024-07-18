import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'oh&s_resp_model.freezed.dart';
part 'oh&s_resp_model.g.dart';

List<OhsRespModel> OhsRespModelFromJson(String str) => List<OhsRespModel>.from(
    json.decode(str).map((x) => OhsRespModel.fromJson(x)));

String OhsRespModelToJson(List<OhsRespModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class OhsRespModel with _$OhsRespModel {
  const factory OhsRespModel(
      {int? id,
      @JsonKey(name: "user_read_status") bool? userReadStatus,
      bool? editStatus,
      String? dp,
      String? created_by,
      String? title,
      String? description,
      String? fileAttachment,
      String? edited_date_time,
      String? createdDateTime,
      String? file_attachment,
        List<Members>? members_list,
      List<Comments>? comments_list,
      num? members}) = _OhsRespModel;

  factory OhsRespModel.fromJson(Map<String, dynamic> json) =>
      _$OhsRespModelFromJson(json);
}

@freezed
class Comments with _$Comments {
  const factory Comments({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "comment") String? comment,
    @JsonKey(name: "comment_by") String? commentBy,
  }) = _Comments;

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
}
@freezed
class Members with _$Members {
  const factory Members({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _Members;

  factory Members.fromJson(Map<String, dynamic> json) =>
      _$MembersFromJson(json);
}
