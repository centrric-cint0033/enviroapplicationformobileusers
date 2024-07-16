// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_card_by_date_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleCardByDateResModelImpl _$$ScheduleCardByDateResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleCardByDateResModelImpl(
      id: json['id'] as num?,
      client: json['client'] as String?,
      tabType: json['tab_type'] as String?,
      quoteId: json['quote_id'] as num?,
      cordinates: json['cordinates'] == null
          ? null
          : Cordinates.fromJson(json['cordinates'] as Map<String, dynamic>),
      frequency: json['frequency'] as String?,
      wasteTypeStr: json['waste_type_str'] as String?,
      typeOfWasteStrProfileName: json['type_of_waste_str_profile_name'],
      jobCardCode: json['job_card_code'] as num?,
      startDate: json['start_date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      image: json['image'] as String?,
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      endDate: json['end_date'] as String?,
      extractedWasteType: json['extracted_waste_type'],
      extractedLitresOfWaste: json['extracted_litres_of_waste'],
      departEnviroFacility: json['depart_enviro_facility'] as String?,
      startJob: json['start_job'] as String?,
      finishJob: json['finish_job'] as String?,
      arriveAtWasteDepot: json['arrive_at_waste_depot'] as String?,
      departWasteDepot: json['depart_waste_depot'] as String?,
      arriveEnviroFacility: json['arrive_enviro_facility'] as String?,
      scheduleCompletedMail: json['schedule_completed_mail'] as String?,
      completed: json['completed'] as String?,
      outsourcedJob: json['outsourced_job'] as bool?,
      purchaseOrderNumber: json['purchase_order_number'] as String?,
      signatureName: json['signature_name'] as String?,
      outsourcedCompanyName: json['outsourced_company_name'],
      activeStatus: json['active_status'] as bool?,
      job: json['job'] as num?,
      vehicle: json['vehicle'] as num?,
      status: json['status'] as String?,
      address: json['address'] as String?,
      primaryVehicleDriver: json['primary_vehicle_driver'] as num?,
      unreadCommentsExists: json['unread_comments_exists'] as bool?,
      additionalvehicleId: json['additionalvehicle_id'] as List<dynamic>?,
      additionalvehicledrivers:
          json['additionalvehicledrivers'] as List<dynamic>?,
      teamEmployessId: (json['team_employess_id'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ScheduleCardByDateResModelImplToJson(
        _$ScheduleCardByDateResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client': instance.client,
      'tab_type': instance.tabType,
      'quote_id': instance.quoteId,
      'cordinates': instance.cordinates,
      'frequency': instance.frequency,
      'waste_type_str': instance.wasteTypeStr,
      'type_of_waste_str_profile_name': instance.typeOfWasteStrProfileName,
      'job_card_code': instance.jobCardCode,
      'start_date': instance.startDate,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'image': instance.image,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'end_date': instance.endDate,
      'extracted_waste_type': instance.extractedWasteType,
      'extracted_litres_of_waste': instance.extractedLitresOfWaste,
      'depart_enviro_facility': instance.departEnviroFacility,
      'start_job': instance.startJob,
      'finish_job': instance.finishJob,
      'arrive_at_waste_depot': instance.arriveAtWasteDepot,
      'depart_waste_depot': instance.departWasteDepot,
      'arrive_enviro_facility': instance.arriveEnviroFacility,
      'schedule_completed_mail': instance.scheduleCompletedMail,
      'completed': instance.completed,
      'outsourced_job': instance.outsourcedJob,
      'purchase_order_number': instance.purchaseOrderNumber,
      'signature_name': instance.signatureName,
      'outsourced_company_name': instance.outsourcedCompanyName,
      'active_status': instance.activeStatus,
      'job': instance.job,
      'vehicle': instance.vehicle,
      'status': instance.status,
      'address': instance.address,
      'primary_vehicle_driver': instance.primaryVehicleDriver,
      'unread_comments_exists': instance.unreadCommentsExists,
      'additionalvehicle_id': instance.additionalvehicleId,
      'additionalvehicledrivers': instance.additionalvehicledrivers,
      'team_employess_id': instance.teamEmployessId,
    };
