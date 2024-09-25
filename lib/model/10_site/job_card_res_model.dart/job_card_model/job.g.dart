// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      id: json['id'] as num?,
      createdOn: json['created_on'] as String?,
      type: json['type'] as String?,
      tabType: json['tab_type'] as String?,
      scheduleStatus: json['schedule_status'] as bool?,
      error: json['error'] as bool?,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'id': instance.id,
      'created_on': instance.createdOn,
      'type': instance.type,
      'tab_type': instance.tabType,
      'schedule_status': instance.scheduleStatus,
      'error': instance.error,
    };
