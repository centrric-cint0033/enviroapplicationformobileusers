import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'oh&snews_fldr_model.freezed.dart';
part 'oh&snews_fldr_model.g.dart';

List<OhsNewsfldrRespModel> OhsNewsfldrRespModelFromJson(String str) =>
    List<OhsNewsfldrRespModel>.from(
        json.decode(str).map((x) => OhsNewsfldrRespModel.fromJson(x)));

String OhsNewsfldrRespModelToJson(List<OhsNewsfldrRespModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class OhsNewsfldrRespModel with _$OhsNewsfldrRespModel {
  const factory OhsNewsfldrRespModel({
    required int id,
    required String name,
    required String url,
    required String expiryDate,
  }) = _OhsNewsfldrRespModel;

  factory OhsNewsfldrRespModel.fromJson(Map<String, dynamic> json) =>
      _$OhsNewsfldrRespModelFromJson(json);
}
