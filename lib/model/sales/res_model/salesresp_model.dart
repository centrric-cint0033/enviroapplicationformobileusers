import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'salesresp_model.freezed.dart';
part 'salesresp_model.g.dart';

List<SalesListResModel> salesListResModelFromJson(String str) =>
    List<SalesListResModel>.from(
        json.decode(str).map((x) => SalesListResModel.fromJson(x)));

String salesListResModelToJson(List<SalesListResModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SalesListResModel with _$SalesListResModel {
  const factory SalesListResModel({
    required String name,
    required int won,
    required int lost,
    required int pending,
    required int total,
    required String profile,
    required int id,
  }) = _SalesListResModel;

  factory SalesListResModel.fromJson(Map<String, dynamic> json) =>
      _$SalesListResModelFromJson(json);
}
