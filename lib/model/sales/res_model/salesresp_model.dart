import 'package:freezed_annotation/freezed_annotation.dart';

part 'salesresp_model.freezed.dart';
part 'salesresp_model.g.dart';

@freezed
class SalesListResModel with _$SalesListResModel {
  factory SalesListResModel({
    String? name,
    int? won,
    int? lost,
    int? pending,
    int? total,
    // String? profile,
  }) = _SalesListResModel;

  factory SalesListResModel.fromJson(Map<String, dynamic> json) =>
      _$SalesListResModelFromJson(json);
}
