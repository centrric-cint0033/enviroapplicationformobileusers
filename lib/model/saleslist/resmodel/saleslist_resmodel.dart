import 'package:freezed_annotation/freezed_annotation.dart';

part 'saleslist_resmodel.freezed.dart';
part 'saleslist_resmodel.g.dart';

@freezed
class SalesJobListstRegResModel with _$SalesJobListstRegResModel {
  factory SalesJobListstRegResModel({
    int? id,
    String? date,
    String? client_name,
    String? quoted_by,
    String? paid_status,
    String? paid_amount,
  }) = _SalesJobListstRegResModel;

  factory SalesJobListstRegResModel.fromJson(Map<String, dynamic> json) =>
      _$SalesJobListstRegResModelFromJson(json);
}
