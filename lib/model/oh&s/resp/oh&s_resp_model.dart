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
  const factory OhsRespModel({
    required bool? userReadStatus,
    required bool? editStatus,
    required String? dp,
    required String? created_by,
    required String? title,
    required String? description,
    required String? fileAttachment,
    required String? edited_date_time,
    required String? createdDateTime,
  }) = _OhsRespModel;

  factory OhsRespModel.fromJson(Map<String, dynamic> json) =>
      _$OhsRespModelFromJson(json);
}
