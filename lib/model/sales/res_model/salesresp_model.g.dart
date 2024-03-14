// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salesresp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesListResModelImpl _$$SalesListResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesListResModelImpl(
      name: json['name'] as String?,
      won: json['won'] as int?,
      lost: json['lost'] as int?,
      pending: json['pending'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$SalesListResModelImplToJson(
        _$SalesListResModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'won': instance.won,
      'lost': instance.lost,
      'pending': instance.pending,
      'total': instance.total,
    };
