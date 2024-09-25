// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      id: json['id'],
      status: json['status'],
      startDate: json['start_date'],
      startTime: json['start_time'],
      endDate: json['end_date'],
      endTime: json['end_time'],
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      primeVehicleDriver: json['prime_vehicle_driver'] as List<dynamic>?,
      additionalVehicleDriver:
          json['additional_vehicle_driver'] as List<dynamic>?,
      signature: json['signature'],
      team: json['team'] as List<dynamic>?,
      comments: json['comments'] as List<dynamic>?,
      images: json['images'] as List<dynamic>?,
      completed: json['completed'],
      signatureName: json['signature_name'],
      purchaseOrder: json['purchase_order'],
      jobVideo: json['job_video'],
      error: json['error'] as bool?,
      devData: json['dev_data'],
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'start_date': instance.startDate,
      'start_time': instance.startTime,
      'end_date': instance.endDate,
      'end_time': instance.endTime,
      'vehicle': instance.vehicle,
      'prime_vehicle_driver': instance.primeVehicleDriver,
      'additional_vehicle_driver': instance.additionalVehicleDriver,
      'signature': instance.signature,
      'team': instance.team,
      'comments': instance.comments,
      'images': instance.images,
      'completed': instance.completed,
      'signature_name': instance.signatureName,
      'purchase_order': instance.purchaseOrder,
      'job_video': instance.jobVideo,
      'error': instance.error,
      'dev_data': instance.devData,
    };
