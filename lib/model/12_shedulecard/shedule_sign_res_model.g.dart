// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shedule_sign_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SheduleSignatureModelImpl _$$SheduleSignatureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SheduleSignatureModelImpl(
      id: json['id'] as int?,
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
      teamEmployees: json['team_employees'] as List<dynamic>?,
      shift: json['shift'] as String?,
      gallery: json['gallery'] as List<dynamic>?,
      beforePics: json['before_pics'] as List<dynamic>?,
      afterPics: json['after_pics'] as List<dynamic>?,
      comments: json['comments'],
      status: json['status'] as String?,
      tabType: json['tab_type'] as String?,
      quoteId: json['quote_id'] as int?,
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
      primeVehicleDriver: (json['prime_vehicle_driver'] as List<dynamic>?)
          ?.map((e) => VehicleDriver.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalVehicleDriver:
          (json['additional_vehicle_driver'] as List<dynamic>?)
              ?.map((e) => VehicleDriver.fromJson(e as Map<String, dynamic>))
              .toList(),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      frequency: json['frequency'] as String?,
      wasteTypeStr: json['waste_type_str'] as String?,
      typeOfWasteStrProfileName: json['type_of_waste_str_profile_name'],
      jobCardCode: json['job_card_code'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      image: json['image'],
      createdDateTime: json['created_date_time'] as String?,
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      extractedWasteType: json['extracted_waste_type'] as String?,
      extractedLitresOfWaste: json['extracted_litres_of_waste'] as String?,
      departEnviroFacility: json['depart_enviro_facility'],
      startJob: json['start_job'],
      finishJob: json['finish_job'],
      arriveAtWasteDepot: json['arrive_at_waste_depot'],
      departWasteDepot: json['depart_waste_depot'],
      arriveEnviroFacility: json['arrive_enviro_facility'],
      scheduleCompletedMail: json['schedule_completed_mail'] as String?,
      completed: json['completed'],
      outsourcedJob: json['outsourced_job'] as bool?,
      purchaseOrderNumber: json['purchase_order_number'] as String?,
      signatureName: json['signature_name'] as String?,
      outsourcedCompanyName: json['outsourced_company_name'],
      activeStatus: json['active_status'] as bool?,
      job: json['job'] as int?,
    );

Map<String, dynamic> _$$SheduleSignatureModelImplToJson(
        _$SheduleSignatureModelImpl instance) =>
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
      'start_date': instance.startDate?.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'image': instance.image,
      'created_date_time': instance.createdDateTime,
      'end_date': instance.endDate?.toIso8601String(),
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

_$VehicleDriverImpl _$$VehicleDriverImplFromJson(Map<String, dynamic> json) =>
    _$VehicleDriverImpl(
      dp: json['dp'] as String?,
      registration: json['registration'] as String?,
      driverId: json['driver_id'] as int?,
      vehicleId: json['vehicle_id'] as int?,
      designation: json['designation'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$VehicleDriverImplToJson(_$VehicleDriverImpl instance) =>
    <String, dynamic>{
      'dp': instance.dp,
      'registration': instance.registration,
      'driver_id': instance.driverId,
      'vehicle_id': instance.vehicleId,
      'designation': instance.designation,
      'name': instance.name,
    };

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: json['id'] as int?,
      registration: json['registration'] as String?,
      type: json['type'] as String?,
      vehicleType: json['vehicle_type'] as String?,
    );

Map<String, dynamic> _$$VehicleImplToJson(_$VehicleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registration': instance.registration,
      'type': instance.type,
      'vehicle_type': instance.vehicleType,
    };
