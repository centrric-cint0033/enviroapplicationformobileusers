import 'package:freezed_annotation/freezed_annotation.dart';

import 'additional_email.dart';
import 'additional_phone_number.dart';
import 'service_list.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@freezed
class Client with _$Client {
  factory Client({
    num? id,
    @JsonKey(name: 'tab_type') String? tabType,
    @JsonKey(name: 'service_list') List<ServiceList>? serviceList,
    @JsonKey(name: 'payment_details') String? paymentDetails,
    @JsonKey(name: 'company_name') dynamic companyName,
    @JsonKey(name: 'company_address') dynamic companyAddress,
    @JsonKey(name: 'site_name') String? siteName,
    @JsonKey(name: 'site_suburb') dynamic siteSuburb,
    @JsonKey(name: 'site_post_code') String? sitePostCode,
    @JsonKey(name: 'site_address') String? siteAddress,
    @JsonKey(name: 'site_contact_email') String? siteContactEmail,
    @JsonKey(name: 'site_contact_phone') String? siteContactPhone,
    @JsonKey(name: 'site_contact_mob') String? siteContactMob,
    dynamic building,
    @JsonKey(name: 'company_email') dynamic companyEmail,
    @JsonKey(name: 'company_contact_number') dynamic companyContactNumber,
    @JsonKey(name: 'site_contact_person') String? siteContactPerson,
    @JsonKey(name: 'access_restriction') String? accessRestriction,
    @JsonKey(name: 'tc_required') bool? tcRequired,
    @JsonKey(name: 'tc_required_file') dynamic tcRequiredFile,
    @JsonKey(name: 'waste_data_form') bool? wasteDataForm,
    @JsonKey(name: 'data_form_required_file') dynamic dataFormRequiredFile,
    @JsonKey(name: 'access_height') String? accessHeight,
    @JsonKey(name: 'key_required') bool? keyRequired,
    @JsonKey(name: 'security_required') bool? securityRequired,
    @JsonKey(name: 'induction_required') bool? inductionRequired,
    @JsonKey(name: 'contact_name') dynamic contactName,
    @JsonKey(name: 'phone_number') dynamic phoneNumber,
    dynamic price,
    @JsonKey(name: 'account_status') dynamic accountStatus,
    @JsonKey(name: 'sales_person') String? salesPerson,
    @JsonKey(name: 'type_of_induction') String? typeOfInduction,
    @JsonKey(name: 'pit_distance_from_truck_location')
    String? pitDistanceFromTruckLocation,
    @JsonKey(name: 'water_tap_location') String? waterTapLocation,
    @JsonKey(name: 'gumy_required') bool? gumyRequired,
    @JsonKey(name: 'gurney_required') bool? gurneyRequired,
    @JsonKey(name: 'weigh_bridge_required') String? weighBridgeRequired,
    @JsonKey(name: 'weigh_bridge_required_file')
    dynamic weighBridgeRequiredFile,
    @JsonKey(name: 'estimated_job_duration') String? estimatedJobDuration,
    @JsonKey(name: 'time_for_service') String? timeForService,
    @JsonKey(name: 'no_and_type_pallet_to_be_exchanged')
    String? noAndTypePalletToBeExchanged,
    @JsonKey(name: 'additional_information') String? additionalInformation,
    String? capacity,
    String? barcode,
    @JsonKey(name: 'job_status') dynamic jobStatus,
    @JsonKey(name: 'pit_location') String? pitLocation,
    @JsonKey(name: 'safety_data_sheet_required')
    String? safetyDataSheetRequired,
    @JsonKey(name: 'safety_data_sheet_file') dynamic safetyDataSheetFile,
    @JsonKey(name: 'chemist_approval') String? chemistApproval,
    @JsonKey(name: 'chemist_approval_file') dynamic chemistApprovalFile,
    @JsonKey(name: 'confined_space') bool? confinedSpace,
    @JsonKey(name: 'number_of_trucks_required') String? numberOfTrucksRequired,
    @JsonKey(name: 'specific_ppe_reqired') bool? specificPpeReqired,
    @JsonKey(name: 'service_time') dynamic serviceTime,
    @JsonKey(name: 'if_yes_specify') dynamic ifYesSpecify,
    @JsonKey(name: 'completed_by') dynamic completedBy,
    DateTime? date,
    @JsonKey(name: 'tc_required_comment') String? tcRequiredComment,
    dynamic comment,
    @JsonKey(name: 'additional_images') String? additionalImages,
    @JsonKey(name: 'smoke_alarms') String? smokeAlarms,
    @JsonKey(name: 'job_card_name') dynamic jobCardName,
    @JsonKey(name: 'type_of_waste_str') String? typeOfWasteStr,
    @JsonKey(name: 'child_site_id') String? childSiteId,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
    bool? reoccurring,
    String? frequency,
    String? latitude,
    String? longitude,
    String? manifest,
    @JsonKey(name: 'manifest_file') dynamic manifestFile,
    @JsonKey(name: 'specific_ppe_required_comment')
    String? specificPpeRequiredComment,
    @JsonKey(name: 'purchase_comment') String? purchaseComment,
    @JsonKey(name: 'outsourced_job') bool? outsourcedJob,
    @JsonKey(name: 'daily_schedule') bool? dailySchedule,
    @JsonKey(name: 'schedule_days') String? scheduleDays,
    @JsonKey(name: 'industry_type') num? industryType,
    @JsonKey(name: 'in_draft') bool? inDraft,
    @JsonKey(name: 'key_required_new') String? keyRequiredNew,
    @JsonKey(name: 'photo_required') bool? photoRequired,
    @JsonKey(name: 'photo_required_text') String? photoRequiredText,
    @JsonKey(name: 'certificate_of_destruction_required')
    bool? certificateOfDestructionRequired,
    @JsonKey(name: 'certificate_of_destruction_required_text')
    String? certificateOfDestructionRequiredText,
    @JsonKey(name: 'waste_packaged_method') String? wastePackagedMethod,
    @JsonKey(name: 'volume_expected') String? volumeExpected,
    @JsonKey(name: 'number_of_loads_expected') String? numberOfLoadsExpected,
    @JsonKey(name: 'sample_of_waste_to_be_collected')
    bool? sampleOfWasteToBeCollected,
    @JsonKey(name: 'sample_of_waste_to_be_collected_text')
    String? sampleOfWasteToBeCollectedText,
    @JsonKey(name: 'estimated_datetime_of_disposal')
    String? estimatedDatetimeOfDisposal,
    @JsonKey(name: 'flow_meter_required') bool? flowMeterRequired,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'customer_address') String? customerAddress,
    @JsonKey(name: 'customer_contact_email') String? customerContactEmail,
    @JsonKey(name: 'customer_contact_phone') String? customerContactPhone,
    @JsonKey(name: 'customer_contact_mob') String? customerContactMob,
    @JsonKey(name: 'additional_phone_number')
    AdditionalPhoneNumber? additionalPhoneNumber,
    @JsonKey(name: 'additional_email') AdditionalEmail? additionalEmail,
    @JsonKey(name: 'add_info_button') String? addInfoButton,
    @JsonKey(name: 'destruction_certificate_unread')
    bool? destructionCertificateUnread,
    num? quote,
    num? client,
    @JsonKey(name: 'tc_required_multiple_file')
    List<dynamic>? tcRequiredMultipleFile,
    @JsonKey(name: 'data_form_required_multiple_file')
    List<dynamic>? dataFormRequiredMultipleFile,
    @JsonKey(name: 'weigh_bridge_required_multiple_file')
    List<dynamic>? weighBridgeRequiredMultipleFile,
    @JsonKey(name: 'safety_data_sheet_files')
    List<dynamic>? safetyDataSheetFiles,
    @JsonKey(name: 'chemist_approval_multiple_file')
    List<dynamic>? chemistApprovalMultipleFile,
    @JsonKey(name: 'manifest_multiple_file')
    List<dynamic>? manifestMultipleFile,
    @JsonKey(name: 'purchase_order') List<dynamic>? purchaseOrder,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}
