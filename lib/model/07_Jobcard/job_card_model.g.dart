// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobCardRespModelImpl _$$JobCardRespModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JobCardRespModelImpl(
      id: (json['id'] as num?)?.toInt(),
      connected: json['connected'] as bool?,
      clientName: json['client_name'] as String?,
      typeOfWasteStrId: (json['type_of_waste_str_id'] as num?)?.toInt(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => WeighBridge.fromJson(e as Map<String, dynamic>))
          .toList(),
      folder: json['folder'],
      salesPersonName: json['sales_person_name'] as String?,
      jobcardinfoFiles: json['jobcardinfo_files'] == null
          ? null
          : JobcardinfoFiles.fromJson(
              json['jobcardinfo_files'] as Map<String, dynamic>),
      industryTypeInfo: json['industry_type_info'] == null
          ? null
          : IndustryTypeInfo.fromJson(
              json['industry_type_info'] as Map<String, dynamic>),
      jobCardType: json['job_card_type'] as String?,
      jobCardCode: json['job_card_code'] as String?,
      tabType: json['tab_type'] as String?,
      serviceList: (json['service_list'] as List<dynamic>?)
          ?.map((e) => ServiceList.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentDetails: json['payment_details'] as String?,
      companyName: json['company_name'],
      companyAddress: json['company_address'],
      siteName: json['site_name'] as String?,
      siteSuburb: json['site_suburb'],
      sitePostCode: json['site_post_code'] as String?,
      siteAddress: json['site_address'] as String?,
      siteContactEmail: json['site_contact_email'] as String?,
      siteContactPhone: json['site_contact_phone'] as String?,
      siteContactMob: json['site_contact_mob'] as String?,
      building: json['building'],
      companyEmail: json['company_email'],
      companyContactNumber: json['company_contact_number'],
      siteContactPerson: json['site_contact_person'] as String?,
      accessRestriction: json['access_restriction'] as String?,
      tcRequired: json['tc_required'] as bool?,
      tcRequiredFile: json['tc_required_file'],
      wasteDataForm: json['waste_data_form'] as bool?,
      dataFormRequiredFile: json['data_form_required_file'],
      accessHeight: json['access_height'] as String?,
      keyRequired: json['key_required'] as bool?,
      securityRequired: json['security_required'] as bool?,
      inductionRequired: json['induction_required'] as bool?,
      contactName: json['contact_name'],
      phoneNumber: json['phone_number'],
      price: json['price'] as String?,
      accountStatus: json['account_status'] as String?,
      salesPerson: json['sales_person'] as String?,
      typeOfInduction: json['type_of_induction'] as String?,
      pitDistanceFromTruckLocation:
          json['pit_distance_from_truck_location'] as String?,
      waterTapLocation: json['water_tap_location'] as String?,
      gumyRequired: json['gumy_required'] as bool?,
      gurneyRequired: json['gurney_required'] as bool?,
      weighBridgeRequired: json['weigh_bridge_required'] as String?,
      weighBridgeRequiredFile: json['weigh_bridge_required_file'],
      estimatedJobDuration: json['estimated_job_duration'] as String?,
      timeForService: json['time_for_service'] as String?,
      noAndTypePalletToBeExchanged:
          json['no_and_type_pallet_to_be_exchanged'] as String?,
      additionalInformation: json['additional_information'] as String?,
      capacity: json['capacity'] as String?,
      barcode: json['barcode'] as String?,
      jobStatus: json['job_status'] as String?,
      pitLocation: json['pit_location'] as String?,
      safetyDataSheetRequired: json['safety_data_sheet_required'] as String?,
      safetyDataSheetFile: json['safety_data_sheet_file'],
      chemistApproval: json['chemist_approval'] as String?,
      chemistApprovalFile: json['chemist_approval_file'],
      confinedSpace: json['confined_space'] as bool?,
      numberOfTrucksRequired: json['number_of_trucks_required'] as String?,
      specificPpeReqired: json['specific_ppe_reqired'] as bool?,
      serviceTime: json['service_time'],
      ifYesSpecify: json['if_yes_specify'],
      completedBy: json['completed_by'],
      date: json['date'] as String?,
      tcRequiredComment: json['tc_required_comment'] as String?,
      comment: json['comment'],
      additionalImages: json['additional_images'] as String?,
      smokeAlarms: json['smoke_alarms'] as String?,
      jobCardName: json['job_card_name'],
      typeOfWasteStr: json['type_of_waste_str'] as String?,
      childSiteId: json['child_site_id'] as String?,
      createdDateTime: json['created_date_time'] as String?,
      reoccurring: json['reoccurring'] as bool?,
      frequency: json['frequency'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      manifest: json['manifest'] as String?,
      manifestFile: json['manifest_file'],
      specificPpeRequiredComment:
          json['specific_ppe_required_comment'] as String?,
      purchaseComment: json['purchase_comment'] as String?,
      outsourcedJob: json['outsourced_job'] as bool?,
      dailySchedule: json['daily_schedule'] as bool?,
      scheduleDays: json['schedule_days'] as String?,
      inDraft: json['in_draft'] as bool?,
      keyRequiredNew: json['key_required_new'] as String?,
      photoRequired: json['photo_required'] as bool?,
      photoRequiredText: json['photo_required_text'] as String?,
      certificateOfDestructionRequired:
          json['certificate_of_destruction_required'] as bool?,
      certificateOfDestructionRequiredText:
          json['certificate_of_destruction_required_text'] as String?,
      wastePackagedMethod: json['waste_packaged_method'] as String?,
      volumeExpected: json['volume_expected'] as String?,
      numberOfLoadsExpected: json['number_of_loads_expected'] as String?,
      sampleOfWasteToBeCollected:
          json['sample_of_waste_to_be_collected'] as bool?,
      sampleOfWasteToBeCollectedText:
          json['sample_of_waste_to_be_collected_text'] as String?,
      estimatedDatetimeOfDisposal:
          json['estimated_datetime_of_disposal'] as String?,
      flowMeterRequired: json['flow_meter_required'] as bool?,
      customerName: json['customer_name'],
      customerAddress: json['customer_address'],
      customerContactEmail: json['customer_contact_email'],
      customerContactPhone: json['customer_contact_phone'],
      customerContactMob: json['customer_contact_mob'],
      additionalPhoneNumber:
          (json['additional_phone_number'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      additionalEmail: (json['additional_email'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      addInfoButton: json['add_info_button'],
      destructionCertificateUnread:
          json['destruction_certificate_unread'] as bool?,
      quote: (json['quote'] as num?)?.toInt(),
      client: (json['client'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$JobCardRespModelImplToJson(
        _$JobCardRespModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'connected': instance.connected,
      'client_name': instance.clientName,
      'type_of_waste_str_id': instance.typeOfWasteStrId,
      'files': instance.files,
      'folder': instance.folder,
      'sales_person_name': instance.salesPersonName,
      'jobcardinfo_files': instance.jobcardinfoFiles,
      'industry_type_info': instance.industryTypeInfo,
      'job_card_type': instance.jobCardType,
      'job_card_code': instance.jobCardCode,
      'tab_type': instance.tabType,
      'service_list': instance.serviceList,
      'payment_details': instance.paymentDetails,
      'company_name': instance.companyName,
      'company_address': instance.companyAddress,
      'site_name': instance.siteName,
      'site_suburb': instance.siteSuburb,
      'site_post_code': instance.sitePostCode,
      'site_address': instance.siteAddress,
      'site_contact_email': instance.siteContactEmail,
      'site_contact_phone': instance.siteContactPhone,
      'site_contact_mob': instance.siteContactMob,
      'building': instance.building,
      'company_email': instance.companyEmail,
      'company_contact_number': instance.companyContactNumber,
      'site_contact_person': instance.siteContactPerson,
      'access_restriction': instance.accessRestriction,
      'tc_required': instance.tcRequired,
      'tc_required_file': instance.tcRequiredFile,
      'waste_data_form': instance.wasteDataForm,
      'data_form_required_file': instance.dataFormRequiredFile,
      'access_height': instance.accessHeight,
      'key_required': instance.keyRequired,
      'security_required': instance.securityRequired,
      'induction_required': instance.inductionRequired,
      'contact_name': instance.contactName,
      'phone_number': instance.phoneNumber,
      'price': instance.price,
      'account_status': instance.accountStatus,
      'sales_person': instance.salesPerson,
      'type_of_induction': instance.typeOfInduction,
      'pit_distance_from_truck_location': instance.pitDistanceFromTruckLocation,
      'water_tap_location': instance.waterTapLocation,
      'gumy_required': instance.gumyRequired,
      'gurney_required': instance.gurneyRequired,
      'weigh_bridge_required': instance.weighBridgeRequired,
      'weigh_bridge_required_file': instance.weighBridgeRequiredFile,
      'estimated_job_duration': instance.estimatedJobDuration,
      'time_for_service': instance.timeForService,
      'no_and_type_pallet_to_be_exchanged':
          instance.noAndTypePalletToBeExchanged,
      'additional_information': instance.additionalInformation,
      'capacity': instance.capacity,
      'barcode': instance.barcode,
      'job_status': instance.jobStatus,
      'pit_location': instance.pitLocation,
      'safety_data_sheet_required': instance.safetyDataSheetRequired,
      'safety_data_sheet_file': instance.safetyDataSheetFile,
      'chemist_approval': instance.chemistApproval,
      'chemist_approval_file': instance.chemistApprovalFile,
      'confined_space': instance.confinedSpace,
      'number_of_trucks_required': instance.numberOfTrucksRequired,
      'specific_ppe_reqired': instance.specificPpeReqired,
      'service_time': instance.serviceTime,
      'if_yes_specify': instance.ifYesSpecify,
      'completed_by': instance.completedBy,
      'date': instance.date,
      'tc_required_comment': instance.tcRequiredComment,
      'comment': instance.comment,
      'additional_images': instance.additionalImages,
      'smoke_alarms': instance.smokeAlarms,
      'job_card_name': instance.jobCardName,
      'type_of_waste_str': instance.typeOfWasteStr,
      'child_site_id': instance.childSiteId,
      'created_date_time': instance.createdDateTime,
      'reoccurring': instance.reoccurring,
      'frequency': instance.frequency,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'manifest': instance.manifest,
      'manifest_file': instance.manifestFile,
      'specific_ppe_required_comment': instance.specificPpeRequiredComment,
      'purchase_comment': instance.purchaseComment,
      'outsourced_job': instance.outsourcedJob,
      'daily_schedule': instance.dailySchedule,
      'schedule_days': instance.scheduleDays,
      'in_draft': instance.inDraft,
      'key_required_new': instance.keyRequiredNew,
      'photo_required': instance.photoRequired,
      'photo_required_text': instance.photoRequiredText,
      'certificate_of_destruction_required':
          instance.certificateOfDestructionRequired,
      'certificate_of_destruction_required_text':
          instance.certificateOfDestructionRequiredText,
      'waste_packaged_method': instance.wastePackagedMethod,
      'volume_expected': instance.volumeExpected,
      'number_of_loads_expected': instance.numberOfLoadsExpected,
      'sample_of_waste_to_be_collected': instance.sampleOfWasteToBeCollected,
      'sample_of_waste_to_be_collected_text':
          instance.sampleOfWasteToBeCollectedText,
      'estimated_datetime_of_disposal': instance.estimatedDatetimeOfDisposal,
      'flow_meter_required': instance.flowMeterRequired,
      'customer_name': instance.customerName,
      'customer_address': instance.customerAddress,
      'customer_contact_email': instance.customerContactEmail,
      'customer_contact_phone': instance.customerContactPhone,
      'customer_contact_mob': instance.customerContactMob,
      'additional_phone_number': instance.additionalPhoneNumber,
      'additional_email': instance.additionalEmail,
      'add_info_button': instance.addInfoButton,
      'destruction_certificate_unread': instance.destructionCertificateUnread,
      'quote': instance.quote,
      'client': instance.client,
    };

_$IndustryTypeInfoImpl _$$IndustryTypeInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$IndustryTypeInfoImpl(
      id: (json['id'] as num?)?.toInt(),
      industryName: json['industry_name'] as String?,
    );

Map<String, dynamic> _$$IndustryTypeInfoImplToJson(
        _$IndustryTypeInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'industry_name': instance.industryName,
    };

_$JobcardinfoFilesImpl _$$JobcardinfoFilesImplFromJson(
        Map<String, dynamic> json) =>
    _$JobcardinfoFilesImpl(
      tcRequiredMultipleFile:
          (json['tc_required_multiple_file'] as List<dynamic>?)
              ?.map((e) => WeighBridge.fromJson(e as Map<String, dynamic>))
              .toList(),
      dataFormRequiredMultipleFile:
          (json['data_form_required_multiple_file'] as List<dynamic>?)
              ?.map((e) => WeighBridge.fromJson(e as Map<String, dynamic>))
              .toList(),
      weighBridgeRequiredMultipleFile:
          (json['weigh_bridge_required_multiple_file'] as List<dynamic>?)
              ?.map((e) => WeighBridge.fromJson(e as Map<String, dynamic>))
              .toList(),
      safetyDataSheetFiles: (json['safety_data_sheet_files'] as List<dynamic>?)
          ?.map((e) => WeighBridge.fromJson(e as Map<String, dynamic>))
          .toList(),
      manifestMultipleFile: (json['manifest_multiple_file'] as List<dynamic>?)
          ?.map((e) => WeighBridge.fromJson(e as Map<String, dynamic>))
          .toList(),
      purchaseOrder: (json['purchase_order'] as List<dynamic>?)
          ?.map((e) => WeighBridge.fromJson(e as Map<String, dynamic>))
          .toList(),
      chemistApprovalMultipleFile:
          (json['chemist_approval_multiple_file'] as List<dynamic>?)
              ?.map((e) => WeighBridge.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$JobcardinfoFilesImplToJson(
        _$JobcardinfoFilesImpl instance) =>
    <String, dynamic>{
      'tc_required_multiple_file': instance.tcRequiredMultipleFile,
      'data_form_required_multiple_file': instance.dataFormRequiredMultipleFile,
      'weigh_bridge_required_multiple_file':
          instance.weighBridgeRequiredMultipleFile,
      'safety_data_sheet_files': instance.safetyDataSheetFiles,
      'manifest_multiple_file': instance.manifestMultipleFile,
      'purchase_order': instance.purchaseOrder,
      'chemist_approval_multiple_file': instance.chemistApprovalMultipleFile,
    };

_$ServiceListImpl _$$ServiceListImplFromJson(Map<String, dynamic> json) =>
    _$ServiceListImpl(
      no: json['no'] as String?,
      capacity: json['capacity'] as String?,
      frequency: json['frequency'] as String?,
      wasteType: json['waste_type'] as String?,
      pitLocation: json['pit_location'] as String?,
    );

Map<String, dynamic> _$$ServiceListImplToJson(_$ServiceListImpl instance) =>
    <String, dynamic>{
      'no': instance.no,
      'capacity': instance.capacity,
      'frequency': instance.frequency,
      'waste_type': instance.wasteType,
      'pit_location': instance.pitLocation,
    };

_$WeighBridgeImpl _$$WeighBridgeImplFromJson(Map<String, dynamic> json) =>
    _$WeighBridgeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      file: json['file'] as String?,
      url: json['url'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$WeighBridgeImplToJson(_$WeighBridgeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'file': instance.file,
      'url': instance.url,
      'created_at': instance.createdAt,
    };
