// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saleslist_resmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesJobListstRegResModelImpl _$$SalesJobListstRegResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesJobListstRegResModelImpl(
      id: json['id'] as int?,
      date: json['date'] as String?,
      client_name: json['client_name'] as String?,
      quoted_by: json['quoted_by'] as String?,
      paid_status: json['paid_status'] as String?,
      paid_amount: json['paid_amount'] as String?,
    );

Map<String, dynamic> _$$SalesJobListstRegResModelImplToJson(
        _$SalesJobListstRegResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'client_name': instance.client_name,
      'quoted_by': instance.quoted_by,
      'paid_status': instance.paid_status,
      'paid_amount': instance.paid_amount,
    };
