import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_rego_res_model.freezed.dart';
part 'quote_rego_res_model.g.dart';

@freezed
class QuoteRegResModel with _$QuoteRegResModel {
  factory QuoteRegResModel({
    int? id,
    String? won_lose_status,
    int? client,
    String? created_by,
    String? client_type,
    int? schedule_id,
    String? client_email,
  }) = _QuoteRegResModel;

  factory QuoteRegResModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteRegResModelFromJson(json);
}
