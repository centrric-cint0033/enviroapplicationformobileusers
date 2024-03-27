// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiteResModelImpl _$$SiteResModelImplFromJson(Map<String, dynamic> json) =>
    _$SiteResModelImpl(
      id: json['id'] as num?,
      dpThumbnail: json['dp_thumbnail'] as String?,
      salesPersonName: json['sales_person_name'] as String?,
      tabType: json['tab_type'] as String?,
      clientId: json['client_id'],
      clientType: json['client_type'] as String?,
      clientName: json['client_name'] as String?,
      clientEmail: json['client_email'] as String?,
      dateJoined: json['date_joined'],
      locationLogitude: json['location_logitude'] as String?,
      locationLatitude: json['location_latitude'] as String?,
      place: json['place'],
      activeStatus: json['active_status'] as bool?,
      building: json['building'],
      dp: json['dp'] as String?,
      deviceWaste: json['device_waste'],
      siteAddress: json['site_address'] as String?,
      siteSuburb: json['site_suburb'],
      sitePostCode: json['site_post_code'] as String?,
      sitePhoneNo: json['site_phone_no'] as String?,
      siteContactPerson: json['site_contact_person'] as String?,
      siteContactMob: json['site_contact_mob'] as String?,
      inductionType: json['induction_type'] as String?,
      barCodeForGreaseTrapOnly: json['bar_code_for_grease_trap_only'],
      callType: json['call_type'] as String?,
      accountType: json['account_type'] as String?,
      pitLocation: json['pit_location'],
      accessRestriction: json['access_restriction'] as String?,
      companyName: json['company_name'] as String?,
      companyContactName: json['company_contact_name'],
      companyAddress: json['company_address'],
      companySuburb: json['company_suburb'],
      companyContactNumber: json['company_contact_number'],
      companyMobileNumber: json['company_mobile_number'],
      companyLandlineNumber: json['company_landline_number'],
      companyEmail: json['company_email'] as String?,
      companyPostcode: json['company_postcode'],
      salesPerson: json['sales_person'] as String?,
      information: json['information'],
      invoiceName: json['invoice_name'],
      invoiceAddress: json['invoice_address'],
      invoicePhone: json['invoice_phone'],
      invoiceEmail: json['invoice_email'],
      invoiceAccountStatus: json['invoice_account_status'] as String?,
      invoiceTermsOfAccount: json['invoice_terms_of_account'],
      invoiceReasonForCancelling: json['invoice_reason_for_cancelling'],
      paymentTypeStr: json['payment_type_str'],
      invoicePurchaseNo: json['invoice_purchase_no'],
      wasteServiceType: json['waste_service_type'] as String?,
      deviceCapacity: json['device_capacity'],
      frequency: json['frequency'] as String?,
      barcode: json['barcode'],
      price: json['price'] as String?,
      nextService: json['next_service'],
      lastService: json['last_service'],
      jobDuration: json['job_duration'],
      keyRequiredTypeStr: json['key_required_type_str'],
      jobStatus: json['job_status'],
      alarmCode: json['alarm_code'],
      weighBridgeRequired: json['weigh_bridge_required'],
      pelletsToBeExchangedStr: json['pellets_to_be_exchanged_str'],
      quantity: json['quantity'],
      lastService1: json['last_service_1'],
      nextService2: json['next_service_2'],
      frequencyWeeks: json['frequency_weeks'],
      frequencyDays: json['frequency_days'],
      accountStatus: json['account_status'] as String?,
      accessStatus: json['access_status'] as String?,
      nextServiceDue: json['next_service_due'],
      inductionRequiredStr: json['induction_required_str'] as String?,
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      editedDateTime: json['edited_date_time'] == null
          ? null
          : DateTime.parse(json['edited_date_time'] as String),
      reasonForCancelling: json['Reason_for_cancelling'],
      wasteTypeStr: json['waste_type_str'],
      isParent: json['is_parent'] as bool?,
      abn: json['abn'],
      parentId: json['parent_id'],
      typeOfWasteStrProfileName: json['type_of_waste_str_profile_name'],
      hiddenStatus: json['hidden_status'],
      industryType: json['industry_type'] as num?,
    );

Map<String, dynamic> _$$SiteResModelImplToJson(_$SiteResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dp_thumbnail': instance.dpThumbnail,
      'sales_person_name': instance.salesPersonName,
      'tab_type': instance.tabType,
      'client_id': instance.clientId,
      'client_type': instance.clientType,
      'client_name': instance.clientName,
      'client_email': instance.clientEmail,
      'date_joined': instance.dateJoined,
      'location_logitude': instance.locationLogitude,
      'location_latitude': instance.locationLatitude,
      'place': instance.place,
      'active_status': instance.activeStatus,
      'building': instance.building,
      'dp': instance.dp,
      'device_waste': instance.deviceWaste,
      'site_address': instance.siteAddress,
      'site_suburb': instance.siteSuburb,
      'site_post_code': instance.sitePostCode,
      'site_phone_no': instance.sitePhoneNo,
      'site_contact_person': instance.siteContactPerson,
      'site_contact_mob': instance.siteContactMob,
      'induction_type': instance.inductionType,
      'bar_code_for_grease_trap_only': instance.barCodeForGreaseTrapOnly,
      'call_type': instance.callType,
      'account_type': instance.accountType,
      'pit_location': instance.pitLocation,
      'access_restriction': instance.accessRestriction,
      'company_name': instance.companyName,
      'company_contact_name': instance.companyContactName,
      'company_address': instance.companyAddress,
      'company_suburb': instance.companySuburb,
      'company_contact_number': instance.companyContactNumber,
      'company_mobile_number': instance.companyMobileNumber,
      'company_landline_number': instance.companyLandlineNumber,
      'company_email': instance.companyEmail,
      'company_postcode': instance.companyPostcode,
      'sales_person': instance.salesPerson,
      'information': instance.information,
      'invoice_name': instance.invoiceName,
      'invoice_address': instance.invoiceAddress,
      'invoice_phone': instance.invoicePhone,
      'invoice_email': instance.invoiceEmail,
      'invoice_account_status': instance.invoiceAccountStatus,
      'invoice_terms_of_account': instance.invoiceTermsOfAccount,
      'invoice_reason_for_cancelling': instance.invoiceReasonForCancelling,
      'payment_type_str': instance.paymentTypeStr,
      'invoice_purchase_no': instance.invoicePurchaseNo,
      'waste_service_type': instance.wasteServiceType,
      'device_capacity': instance.deviceCapacity,
      'frequency': instance.frequency,
      'barcode': instance.barcode,
      'price': instance.price,
      'next_service': instance.nextService,
      'last_service': instance.lastService,
      'job_duration': instance.jobDuration,
      'key_required_type_str': instance.keyRequiredTypeStr,
      'job_status': instance.jobStatus,
      'alarm_code': instance.alarmCode,
      'weigh_bridge_required': instance.weighBridgeRequired,
      'pellets_to_be_exchanged_str': instance.pelletsToBeExchangedStr,
      'quantity': instance.quantity,
      'last_service_1': instance.lastService1,
      'next_service_2': instance.nextService2,
      'frequency_weeks': instance.frequencyWeeks,
      'frequency_days': instance.frequencyDays,
      'account_status': instance.accountStatus,
      'access_status': instance.accessStatus,
      'next_service_due': instance.nextServiceDue,
      'induction_required_str': instance.inductionRequiredStr,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
      'Reason_for_cancelling': instance.reasonForCancelling,
      'waste_type_str': instance.wasteTypeStr,
      'is_parent': instance.isParent,
      'abn': instance.abn,
      'parent_id': instance.parentId,
      'type_of_waste_str_profile_name': instance.typeOfWasteStrProfileName,
      'hidden_status': instance.hiddenStatus,
      'industry_type': instance.industryType,
    };
