// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_res_model.freezed.dart';
part 'site_res_model.g.dart';

@freezed
class SiteResModel with _$SiteResModel {
  factory SiteResModel({
    int? id,
    @JsonKey(name: 'dp_thumbnail') String? dpThumbnail,
    @JsonKey(name: 'sales_person_name') String? salesPersonName,
    @JsonKey(name: 'tab_type') String? tabType,
    @JsonKey(name: 'client_id') dynamic clientId,
    @JsonKey(name: 'client_type') String? clientType,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'client_email') String? clientEmail,
    @JsonKey(name: 'date_joined') dynamic dateJoined,
    @JsonKey(name: 'location_logitude') String? locationLogitude,
    @JsonKey(name: 'location_latitude') String? locationLatitude,
    dynamic place,
    @JsonKey(name: 'active_status') bool? activeStatus,
    dynamic building,
    String? dp,
    @JsonKey(name: 'device_waste') dynamic deviceWaste,
    @JsonKey(name: 'site_address') String? siteAddress,
    @JsonKey(name: 'site_suburb') dynamic siteSuburb,
    @JsonKey(name: 'site_post_code') String? sitePostCode,
    @JsonKey(name: 'site_phone_no') String? sitePhoneNo,
    @JsonKey(name: 'site_contact_person') String? siteContactPerson,
    @JsonKey(name: 'site_contact_mob') String? siteContactMob,
    @JsonKey(name: 'induction_type') String? inductionType,
    @JsonKey(name: 'bar_code_for_grease_trap_only')
    dynamic barCodeForGreaseTrapOnly,
    @JsonKey(name: 'call_type') String? callType,
    @JsonKey(name: 'account_type') String? accountType,
    @JsonKey(name: 'pit_location') dynamic pitLocation,
    @JsonKey(name: 'access_restriction') String? accessRestriction,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'company_contact_name') dynamic companyContactName,
    @JsonKey(name: 'company_address') dynamic companyAddress,
    @JsonKey(name: 'company_suburb') dynamic companySuburb,
    @JsonKey(name: 'company_contact_number') dynamic companyContactNumber,
    @JsonKey(name: 'company_mobile_number') dynamic companyMobileNumber,
    @JsonKey(name: 'company_landline_number') dynamic companyLandlineNumber,
    @JsonKey(name: 'company_email') String? companyEmail,
    @JsonKey(name: 'company_postcode') dynamic companyPostcode,
    @JsonKey(name: 'sales_person') String? salesPerson,
    dynamic information,
    @JsonKey(name: 'invoice_name') dynamic invoiceName,
    @JsonKey(name: 'invoice_address') dynamic invoiceAddress,
    @JsonKey(name: 'invoice_phone') dynamic invoicePhone,
    @JsonKey(name: 'invoice_email') dynamic invoiceEmail,
    @JsonKey(name: 'invoice_account_status') String? invoiceAccountStatus,
    @JsonKey(name: 'invoice_terms_of_account') dynamic invoiceTermsOfAccount,
    @JsonKey(name: 'invoice_reason_for_cancelling')
    dynamic invoiceReasonForCancelling,
    @JsonKey(name: 'payment_type_str') dynamic paymentTypeStr,
    @JsonKey(name: 'invoice_purchase_no') dynamic invoicePurchaseNo,
    @JsonKey(name: 'waste_service_type') String? wasteServiceType,
    @JsonKey(name: 'device_capacity') dynamic deviceCapacity,
    String? frequency,
    dynamic barcode,
    String? price,
    @JsonKey(name: 'next_service') dynamic nextService,
    @JsonKey(name: 'last_service') dynamic lastService,
    @JsonKey(name: 'job_duration') dynamic jobDuration,
    @JsonKey(name: 'key_required_type_str') dynamic keyRequiredTypeStr,
    @JsonKey(name: 'job_status') dynamic jobStatus,
    @JsonKey(name: 'alarm_code') dynamic alarmCode,
    @JsonKey(name: 'weigh_bridge_required') dynamic weighBridgeRequired,
    @JsonKey(name: 'pellets_to_be_exchanged_str')
    dynamic pelletsToBeExchangedStr,
    dynamic quantity,
    @JsonKey(name: 'last_service_1') dynamic lastService1,
    @JsonKey(name: 'next_service_2') dynamic nextService2,
    @JsonKey(name: 'frequency_weeks') dynamic frequencyWeeks,
    @JsonKey(name: 'frequency_days') dynamic frequencyDays,
    @JsonKey(name: 'account_status') String? accountStatus,
    @JsonKey(name: 'access_status') String? accessStatus,
    @JsonKey(name: 'next_service_due') dynamic nextServiceDue,
    @JsonKey(name: 'induction_required_str') String? inductionRequiredStr,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
    @JsonKey(name: 'Reason_for_cancelling') dynamic reasonForCancelling,
    @JsonKey(name: 'waste_type_str') dynamic wasteTypeStr,
    @JsonKey(name: 'is_parent') bool? isParent,
    dynamic abn,
    @JsonKey(name: 'parent_id') dynamic parentId,
    @JsonKey(name: 'type_of_waste_str_profile_name')
    dynamic typeOfWasteStrProfileName,
    @JsonKey(name: 'hidden_status') dynamic hiddenStatus,
    @JsonKey(name: 'industry_type') num? industryType,
  }) = _SiteResModel;

  factory SiteResModel.fromJson(Map<String, dynamic> json) =>
      _$SiteResModelFromJson(json);
}
