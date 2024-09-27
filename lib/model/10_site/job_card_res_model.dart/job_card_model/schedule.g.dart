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
      primeVehicleDriver: (json['prime_vehicle_driver'] as List<dynamic>?)
          ?.map((e) => PrimeVehicleDriver.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalVehicleDriver:
          (json['additional_vehicle_driver'] as List<dynamic>?)
              ?.map((e) =>
                  AdditionalVehicleDriver.fromJson(e as Map<String, dynamic>))
              .toList(),
      signature: json['signature'],
      team: json['team'] as List<dynamic>?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: json['images'] as List<dynamic>?,
      completed: json['completed'],
      signatureName: json['signature_name'],
      purchaseOrder: json['purchase_order'],
      jobVideo: const JobVideoConverter().fromJson(json['job_video']),
      error: json['error'] as bool?,
      extractedWasteType: json['extracted_waste_type'],
      extractedLitresOfWaste: json['extracted_litres_of_waste'],
      beforePics: (json['before_pics'] as List<dynamic>?)
          ?.map((e) => BeforePic.fromJson(e as Map<String, dynamic>))
          .toList(),
      afterPics: (json['after_pics'] as List<dynamic>?)
          ?.map((e) => BeforePic.fromJson(e as Map<String, dynamic>))
          .toList(),
      devData: json['dev_data'],
      departEnviroFacility: json['depart_enviro_facility'],
      startJob: json['start_job'],
      finishJob: json['finish_job'],
      arriveAtWasteDepot: json['arrive_at_waste_depot'],
      departWasteDepot: json['depart_waste_depot'],
      arriveEnviroFacility: json['arrive_enviro_facility'],
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
      'job_video': const JobVideoConverter().toJson(instance.jobVideo),
      'error': instance.error,
      'extracted_waste_type': instance.extractedWasteType,
      'extracted_litres_of_waste': instance.extractedLitresOfWaste,
      'before_pics': instance.beforePics,
      'after_pics': instance.afterPics,
      'dev_data': instance.devData,
      'depart_enviro_facility': instance.departEnviroFacility,
      'start_job': instance.startJob,
      'finish_job': instance.finishJob,
      'arrive_at_waste_depot': instance.arriveAtWasteDepot,
      'depart_waste_depot': instance.departWasteDepot,
      'arrive_enviro_facility': instance.arriveEnviroFacility,
    };

_$JobVideoImpl _$$JobVideoImplFromJson(Map<String, dynamic> json) =>
    _$JobVideoImpl(
      id: (json['id'] as num?)?.toInt(),
      video: json['video'] as String?,
      name: json['name'] as String?,
      createdAt: json['created_date_time'] as String?,
      editedAt: json['edited_date_time'] as String?,
    );

Map<String, dynamic> _$$JobVideoImplToJson(_$JobVideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'video': instance.video,
      'name': instance.name,
      'created_date_time': instance.createdAt,
      'edited_date_time': instance.editedAt,
    };
