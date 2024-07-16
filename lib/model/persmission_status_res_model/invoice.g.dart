// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      edit: json['edit'] as bool?,
      add: json['add'] as bool?,
      delete: json['delete'] as bool?,
      view: json['view'] as bool?,
      waste: json['waste'] as bool?,
      pumps: json['pumps'] as bool?,
      hills: json['hills'] as bool?,
      destruction: json['destruction'] as bool?,
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'edit': instance.edit,
      'add': instance.add,
      'delete': instance.delete,
      'view': instance.view,
      'waste': instance.waste,
      'pumps': instance.pumps,
      'hills': instance.hills,
      'destruction': instance.destruction,
    };
