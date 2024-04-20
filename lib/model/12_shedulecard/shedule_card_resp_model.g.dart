// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shedule_card_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SheduleCardRespModelImpl _$$SheduleCardRespModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SheduleCardRespModelImpl(
      id: json['id'] as int?,
      jobVideo: json['job_video'] as List<dynamic>?,
      client: json['client'] == null
          ? null
          : Client.fromJson(json['client'] as Map<String, dynamic>),
      quoteId: json['quote_id'] as int?,
      createdBy: json['created_by'] as String?,
      jobType: json['job_type'] as String?,
      amount: json['amount'] as String?,
      paidAmount: json['paid_amount'] as String?,
      amountPaidStatus: json['amount_paid_status'] as bool?,
      amountTotalPaidStatus: json['amount_total_paid_status'] as bool?,
      pendingAmount: json['pending_amount'] as String?,
      vehicle: json['vehicle'] as String?,
      teamEmployees: json['team_employees'] as List<dynamic>?,
      shift: json['shift'] as String?,
      beforePics: json['before_pics'] as List<dynamic>?,
      afterPics: json['after_pics'] as List<dynamic>?,
      gallery: json['gallery'] as List<dynamic>?,
      comments: json['comments'] as List<dynamic>?,
      status: json['status'] as String?,
      frequency: json['frequency'] as String?,
      wasteTypeStr: json['waste_type_str'] as String?,
      typeOfWasteStrProfileName: json['type_of_waste_str_profile_name'],
      primaryVehicleDriver: json['primary_vehicle_driver'] as bool?,
      drivers: (json['drivers'] as List<dynamic>?)
          ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
      salesPerson: json['sales_person'] as String?,
      jobCardCode: json['job_card_code'] as String?,
      jobCardKeys: json['job_card_keys'] == null
          ? null
          : JobCardKeys.fromJson(json['job_card_keys'] as Map<String, dynamic>),
      tabType: json['tab_type'] as String?,
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
      extractedWasteType: json['extracted_waste_type'],
      extractedLitresOfWaste: json['extracted_litres_of_waste'],
      departEnviroFacility: json['depart_enviro_facility'],
      startJob: json['start_job'],
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
      job: json['job'] as int?,
      additionalVehicleDrivers:
          (json['additional_vehicle_drivers'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
    );

Map<String, dynamic> _$$SheduleCardRespModelImplToJson(
        _$SheduleCardRespModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job_video': instance.jobVideo,
      'client': instance.client,
      'quote_id': instance.quoteId,
      'created_by': instance.createdBy,
      'job_type': instance.jobType,
      'amount': instance.amount,
      'paid_amount': instance.paidAmount,
      'amount_paid_status': instance.amountPaidStatus,
      'amount_total_paid_status': instance.amountTotalPaidStatus,
      'pending_amount': instance.pendingAmount,
      'vehicle': instance.vehicle,
      'team_employees': instance.teamEmployees,
      'shift': instance.shift,
      'before_pics': instance.beforePics,
      'after_pics': instance.afterPics,
      'gallery': instance.gallery,
      'comments': instance.comments,
      'status': instance.status,
      'frequency': instance.frequency,
      'waste_type_str': instance.wasteTypeStr,
      'type_of_waste_str_profile_name': instance.typeOfWasteStrProfileName,
      'primary_vehicle_driver': instance.primaryVehicleDriver,
      'drivers': instance.drivers,
      'sales_person': instance.salesPerson,
      'job_card_code': instance.jobCardCode,
      'job_card_keys': instance.jobCardKeys,
      'tab_type': instance.tabType,
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
      'additional_vehicle_drivers': instance.additionalVehicleDrivers,
    };

_$ClientImpl _$$ClientImplFromJson(Map<String, dynamic> json) => _$ClientImpl(
      clientId: json['client_id'],
      clientType: json['client_type'] as String?,
      clientName: json['client_name'] as String?,
      clientEmail: json['client_email'] as String?,
      locationLogitude: json['location_logitude'] as String?,
      locationLatitude: json['location_latitude'] as String?,
      place: json['place'],
      building: json['building'],
      dp: json['dp'] as String?,
      deviceCapacity: json['device_capacity'] as String?,
      deviceWaste: json['device_waste'],
      barcode: json['barcode'] as String?,
      siteAddress: json['site_address'] as String?,
      siteSuburb: json['site_suburb'],
      postCode: json['post_code'] as String?,
      barCodeForGreaseTrapOnly: json['bar_code_for_grease_trap_only'],
      accountType: json['account_type'] as String?,
      pitLocation: json['pit_location'] as String?,
      accessRegistration: json['access_registration'] as String?,
      companySuburb: json['company_suburb'],
      companyContactNumber: json['company_contact_number'] as String?,
      companyMobileNumber: json['company_mobile_number'],
      companyLandlineNumber: json['company_landline_number'],
      companyEmail: json['company_email'] as String?,
      companyPostcode: json['company_postcode'] as String?,
      information: json['information'] as String?,
      companyName: json['company_name'] as String?,
    );

Map<String, dynamic> _$$ClientImplToJson(_$ClientImpl instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_type': instance.clientType,
      'client_name': instance.clientName,
      'client_email': instance.clientEmail,
      'location_logitude': instance.locationLogitude,
      'location_latitude': instance.locationLatitude,
      'place': instance.place,
      'building': instance.building,
      'dp': instance.dp,
      'device_capacity': instance.deviceCapacity,
      'device_waste': instance.deviceWaste,
      'barcode': instance.barcode,
      'site_address': instance.siteAddress,
      'site_suburb': instance.siteSuburb,
      'post_code': instance.postCode,
      'bar_code_for_grease_trap_only': instance.barCodeForGreaseTrapOnly,
      'account_type': instance.accountType,
      'pit_location': instance.pitLocation,
      'access_registration': instance.accessRegistration,
      'company_suburb': instance.companySuburb,
      'company_contact_number': instance.companyContactNumber,
      'company_mobile_number': instance.companyMobileNumber,
      'company_landline_number': instance.companyLandlineNumber,
      'company_email': instance.companyEmail,
      'company_postcode': instance.companyPostcode,
      'information': instance.information,
      'company_name': instance.companyName,
    };

_$DriverImpl _$$DriverImplFromJson(Map<String, dynamic> json) => _$DriverImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      designation: json['designation'] as String?,
      vehicleId: json['vehicle_id'] as int?,
      dp: json['dp'] as String?,
      registration: json['registration'] as String?,
      preinspectioncheck: json['preinspectioncheck'] as bool?,
      preinspectionRequired: json['preinspection_required'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$DriverImplToJson(_$DriverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'designation': instance.designation,
      'vehicle_id': instance.vehicleId,
      'dp': instance.dp,
      'registration': instance.registration,
      'preinspectioncheck': instance.preinspectioncheck,
      'preinspection_required': instance.preinspectionRequired,
      'type': instance.type,
    };

_$JobCardKeysImpl _$$JobCardKeysImplFromJson(Map<String, dynamic> json) =>
    _$JobCardKeysImpl(
      weighBridgeRequired: json['weigh_bridge_required'] as String?,
      photoRequired: json['photo_required'] as bool?,
      addInfoButton: json['add_info_button'] as String?,
      weighBridgeRequiredMultipleFile:
          (json['weigh_bridge_required_multiple_file'] as List<dynamic>?)
              ?.map((e) => WeighBridgeRequiredMultipleFile.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$JobCardKeysImplToJson(_$JobCardKeysImpl instance) =>
    <String, dynamic>{
      'weigh_bridge_required': instance.weighBridgeRequired,
      'photo_required': instance.photoRequired,
      'add_info_button': instance.addInfoButton,
      'weigh_bridge_required_multiple_file':
          instance.weighBridgeRequiredMultipleFile,
    };

_$WeighBridgeRequiredMultipleFileImpl
    _$$WeighBridgeRequiredMultipleFileImplFromJson(Map<String, dynamic> json) =>
        _$WeighBridgeRequiredMultipleFileImpl(
          id: json['id'] as int?,
          name: json['name'] as String?,
          file: json['file'] as String?,
          createdAt: json['created_at'] as String?,
        );

Map<String, dynamic> _$$WeighBridgeRequiredMultipleFileImplToJson(
        _$WeighBridgeRequiredMultipleFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'file': instance.file,
      'created_at': instance.createdAt,
    };
