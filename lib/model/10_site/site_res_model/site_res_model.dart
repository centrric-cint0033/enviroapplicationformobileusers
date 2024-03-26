import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_res_model.freezed.dart';
part 'site_res_model.g.dart';

@freezed
class SiteResModel with _$SiteResModel {
  factory SiteResModel({
    num? id,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'client_type') String? clientType,
    @JsonKey(name: 'dp_thumbnail') String? dpThumbnail,
    @JsonKey(name: 'site_address') String? siteAddress,
    @JsonKey(name: 'invoice_purchase_no') dynamic invoicePurchaseNo,
  }) = _SiteResModel;

  factory SiteResModel.fromJson(Map<String, dynamic> json) =>
      _$SiteResModelFromJson(json);
}
