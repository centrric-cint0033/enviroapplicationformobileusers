// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_image_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleImageResModelImpl _$$ScheduleImageResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleImageResModelImpl(
      id: json['id'] as num?,
      jobVideo: json['job_video'] as List<dynamic>?,
      client: json['client'] as String?,
      address: json['address'] as String?,
      jobType: json['job_type'] as String?,
      amount: json['amount'] as String?,
      paidAmount: json['paid_amount'] as String?,
      amountPaidStatus: json['amount_paid_status'] as bool?,
      amountTotalPaidStatus: json['amount_total_paid_status'] as bool?,
      pendingAmount: json['pending_amount'] as String?,
      vehicle: json['vehicle'] as String?,
      teamEmployees: (json['team_employees'] as List<dynamic>?)
          ?.map((e) => TeamEmployee.fromJson(e as Map<String, dynamic>))
          .toList(),
      shift: json['shift'] as String?,
      gallery: json['gallery'] as List<dynamic>?,
      beforePics: (json['before_pics'] as List<dynamic>?)
          ?.map((e) => BeforePic.fromJson(e as Map<String, dynamic>))
          .toList(),
      afterPics: json['after_pics'] as List<dynamic>?,
      comments: json['comments'],
      status: json['status'] as String?,
      tabType: json['tab_type'] as String?,
      quoteId: json['quote_id'] as num?,
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
      primeVehicleDriver: (json['prime_vehicle_driver'] as List<dynamic>?)
          ?.map((e) => PrimeVehicleDriver.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalVehicleDriver:
          (json['additional_vehicle_driver'] as List<dynamic>?)
              ?.map((e) =>
                  AdditionalVehicleDriver.fromJson(e as Map<String, dynamic>))
              .toList(),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      frequency: json['frequency'] as String?,
      wasteTypeStr: json['waste_type_str'] as String?,
      typeOfWasteStrProfileName: json['type_of_waste_str_profile_name'],
      jobCardCode: json['job_card_code'] as String?,
      startDate: json['start_date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      image: json['image'],
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      endDate: json['end_date'] as String?,
      extractedWasteType: json['extracted_waste_type'],
      extractedLitresOfWaste: json['extracted_litres_of_waste'],
      departEnviroFacility: json['depart_enviro_facility'] as String?,
      startJob: json['start_job'] as String?,
      finishJob: json['finish_job'],
      arriveAtWasteDepot: json['arrive_at_waste_depot'],
      departWasteDepot: json['depart_waste_depot'],
      arriveEnviroFacility: json['arrive_enviro_facility'],
      scheduleCompletedMail: json['schedule_completed_mail'],
      completed: json['completed'],
      outsourcedJob: json['outsourced_job'] as bool?,
      purchaseOrderNumber: json['purchase_order_number'],
      signatureName: json['signature_name'],
      outsourcedCompanyName: json['outsourced_company_name'],
      activeStatus: json['active_status'] as bool?,
      job: json['job'] as num?,
    );

Map<String, dynamic> _$$ScheduleImageResModelImplToJson(
        _$ScheduleImageResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job_video': instance.jobVideo,
      'client': instance.client,
      'address': instance.address,
      'job_type': instance.jobType,
      'amount': instance.amount,
      'paid_amount': instance.paidAmount,
      'amount_paid_status': instance.amountPaidStatus,
      'amount_total_paid_status': instance.amountTotalPaidStatus,
      'pending_amount': instance.pendingAmount,
      'vehicle': instance.vehicle,
      'team_employees': instance.teamEmployees,
      'shift': instance.shift,
      'gallery': instance.gallery,
      'before_pics': instance.beforePics,
      'after_pics': instance.afterPics,
      'comments': instance.comments,
      'status': instance.status,
      'tab_type': instance.tabType,
      'quote_id': instance.quoteId,
      'vehicles': instance.vehicles,
      'prime_vehicle_driver': instance.primeVehicleDriver,
      'additional_vehicle_driver': instance.additionalVehicleDriver,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
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
    };
