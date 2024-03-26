// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiteResModelImpl _$$SiteResModelImplFromJson(Map<String, dynamic> json) =>
    _$SiteResModelImpl(
      id: json['id'] as num?,
      clientName: json['client_name'] as String?,
      clientType: json['client_type'] as String?,
      dpThumbnail: json['dp_thumbnail'] as String?,
      siteAddress: json['site_address'] as String?,
      invoicePurchaseNo: json['invoice_purchase_no'],
    );

Map<String, dynamic> _$$SiteResModelImplToJson(_$SiteResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_name': instance.clientName,
      'client_type': instance.clientType,
      'dp_thumbnail': instance.dpThumbnail,
      'site_address': instance.siteAddress,
      'invoice_purchase_no': instance.invoicePurchaseNo,
    };
