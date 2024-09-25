// To parse this JSON data, do
//
//     final jobCardRespModel = jobCardRespModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'job_card_model.freezed.dart';
part 'job_card_model.g.dart';

JobCardRespModel jobCardRespModelFromJson(String str) =>
    JobCardRespModel.fromJson(json.decode(str));

String jobCardRespModelToJson(JobCardRespModel data) =>
    json.encode(data.toJson());

@freezed
class JobCardRespModel with _$JobCardRespModel {
  const factory JobCardRespModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "connected") bool? connected,
    @JsonKey(name: "client_name") String? clientName,
    @JsonKey(name: "type_of_waste_str_id") int? typeOfWasteStrId,
    @JsonKey(name: "files") List<WeighBridge>? files,
    @JsonKey(name: "folder") dynamic folder,
    @JsonKey(name: "sales_person_name") String? salesPersonName,
    @JsonKey(name: "jobcardinfo_files") JobcardinfoFiles? jobcardinfoFiles,
    @JsonKey(name: "industry_type_info") IndustryTypeInfo? industryTypeInfo,
    @JsonKey(name: "job_card_type") String? jobCardType,
    @JsonKey(name: "job_card_code") String? jobCardCode,
    @JsonKey(name: "tab_type") String? tabType,
    @JsonKey(name: "service_list") List<ServiceList>? serviceList,
    @JsonKey(name: "payment_details") String? paymentDetails,
    @JsonKey(name: "company_name") dynamic companyName,
    @JsonKey(name: "company_address") dynamic companyAddress,
    @JsonKey(name: "site_name") String? siteName,
    @JsonKey(name: "site_suburb") dynamic siteSuburb,
    @JsonKey(name: "site_post_code") String? sitePostCode,
    @JsonKey(name: "site_address") String? siteAddress,
    @JsonKey(name: "site_contact_email") String? siteContactEmail,
    @JsonKey(name: "site_contact_phone") String? siteContactPhone,
    @JsonKey(name: "site_contact_mob") String? siteContactMob,
    @JsonKey(name: "building") dynamic building,
    @JsonKey(name: "company_email") dynamic companyEmail,
    @JsonKey(name: "company_contact_number") dynamic companyContactNumber,
    @JsonKey(name: "site_contact_person") String? siteContactPerson,
    @JsonKey(name: "access_restriction") String? accessRestriction,
    @JsonKey(name: "tc_required") bool? tcRequired,
    @JsonKey(name: "tc_required_file") dynamic tcRequiredFile,
    @JsonKey(name: "waste_data_form") bool? wasteDataForm,
    @JsonKey(name: "data_form_required_file") dynamic dataFormRequiredFile,
    @JsonKey(name: "access_height") String? accessHeight,
    @JsonKey(name: "key_required") bool? keyRequired,
    @JsonKey(name: "security_required") bool? securityRequired,
    @JsonKey(name: "induction_required") bool? inductionRequired,
    @JsonKey(name: "contact_name") dynamic contactName,
    @JsonKey(name: "phone_number") dynamic phoneNumber,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "account_status") String? accountStatus,
    @JsonKey(name: "sales_person") String? salesPerson,
    @JsonKey(name: "type_of_induction") String? typeOfInduction,
    @JsonKey(name: "pit_distance_from_truck_location")
    String? pitDistanceFromTruckLocation,
    @JsonKey(name: "water_tap_location") String? waterTapLocation,
    @JsonKey(name: "gumy_required") bool? gumyRequired,
    @JsonKey(name: "gurney_required") bool? gurneyRequired,
    @JsonKey(name: "weigh_bridge_required") String? weighBridgeRequired,
    @JsonKey(name: "weigh_bridge_required_file")
    dynamic weighBridgeRequiredFile,
    @JsonKey(name: "estimated_job_duration") String? estimatedJobDuration,
    @JsonKey(name: "time_for_service") String? timeForService,
    @JsonKey(name: "no_and_type_pallet_to_be_exchanged")
    String? noAndTypePalletToBeExchanged,
    @JsonKey(name: "additional_information") String? additionalInformation,
    @JsonKey(name: "capacity") String? capacity,
    @JsonKey(name: "barcode") String? barcode,
    @JsonKey(name: "job_status") String? jobStatus,
    @JsonKey(name: "pit_location") String? pitLocation,
    @JsonKey(name: "safety_data_sheet_required")
    String? safetyDataSheetRequired,
    @JsonKey(name: "safety_data_sheet_file") dynamic safetyDataSheetFile,
    @JsonKey(name: "chemist_approval") String? chemistApproval,
    @JsonKey(name: "chemist_approval_file") dynamic chemistApprovalFile,
    @JsonKey(name: "confined_space") bool? confinedSpace,
    @JsonKey(name: "number_of_trucks_required") String? numberOfTrucksRequired,
    @JsonKey(name: "specific_ppe_reqired") bool? specificPpeReqired,
    @JsonKey(name: "service_time") dynamic serviceTime,
    @JsonKey(name: "if_yes_specify") dynamic ifYesSpecify,
    @JsonKey(name: "completed_by") dynamic completedBy,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "tc_required_comment") String? tcRequiredComment,
    @JsonKey(name: "comment") dynamic comment,
    @JsonKey(name: "additional_images") String? additionalImages,
    @JsonKey(name: "smoke_alarms") String? smokeAlarms,
    @JsonKey(name: "job_card_name") dynamic jobCardName,
    @JsonKey(name: "type_of_waste_str") String? typeOfWasteStr,
    @JsonKey(name: "child_site_id") String? childSiteId,
    @JsonKey(name: "created_date_time") String? createdDateTime,
    @JsonKey(name: "reoccurring") bool? reoccurring,
    @JsonKey(name: "frequency") String? frequency,
    @JsonKey(name: "latitude") String? latitude,
    @JsonKey(name: "longitude") String? longitude,
    @JsonKey(name: "manifest") String? manifest,
    @JsonKey(name: "manifest_file") dynamic manifestFile,
    @JsonKey(name: "specific_ppe_required_comment")
    String? specificPpeRequiredComment,
    @JsonKey(name: "purchase_comment") String? purchaseComment,
    @JsonKey(name: "outsourced_job") bool? outsourcedJob,
    @JsonKey(name: "daily_schedule") bool? dailySchedule,
    @JsonKey(name: "schedule_days") String? scheduleDays,
    @JsonKey(name: "in_draft") bool? inDraft,
    @JsonKey(name: "key_required_new") String? keyRequiredNew,
    @JsonKey(name: "photo_required") bool? photoRequired,
    @JsonKey(name: "photo_required_text") String? photoRequiredText,
    @JsonKey(name: "certificate_of_destruction_required")
    bool? certificateOfDestructionRequired,
    @JsonKey(name: "certificate_of_destruction_required_text")
    String? certificateOfDestructionRequiredText,
    @JsonKey(name: "waste_packaged_method") String? wastePackagedMethod,
    @JsonKey(name: "volume_expected") String? volumeExpected,
    @JsonKey(name: "number_of_loads_expected") String? numberOfLoadsExpected,
    @JsonKey(name: "sample_of_waste_to_be_collected")
    bool? sampleOfWasteToBeCollected,
    @JsonKey(name: "sample_of_waste_to_be_collected_text")
    String? sampleOfWasteToBeCollectedText,
    @JsonKey(name: "estimated_datetime_of_disposal")
    String? estimatedDatetimeOfDisposal,
    @JsonKey(name: "flow_meter_required") bool? flowMeterRequired,
    @JsonKey(name: "customer_name") dynamic customerName,
    @JsonKey(name: "customer_address") dynamic customerAddress,
    @JsonKey(name: "customer_contact_email") dynamic customerContactEmail,
    @JsonKey(name: "customer_contact_phone") dynamic customerContactPhone,
    @JsonKey(name: "customer_contact_mob") dynamic customerContactMob,
    @JsonKey(name: "additional_phone_number")
    Map<String, String>? additionalPhoneNumber,
    @JsonKey(name: "additional_email") Map<String, String>? additionalEmail,
    @JsonKey(name: "add_info_button") dynamic addInfoButton,
    @JsonKey(name: "destruction_certificate_unread")
    bool? destructionCertificateUnread,
    @JsonKey(name: "quote") int? quote,
    @JsonKey(name: "client") int? client,
  }) = _JobCardRespModel;

  factory JobCardRespModel.fromJson(Map<String, dynamic> json) =>
      _$JobCardRespModelFromJson(json);
}

@freezed
class IndustryTypeInfo with _$IndustryTypeInfo {
  const factory IndustryTypeInfo({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "industry_name") String? industryName,
  }) = _IndustryTypeInfo;

  factory IndustryTypeInfo.fromJson(Map<String, dynamic> json) =>
      _$IndustryTypeInfoFromJson(json);
}

@freezed
class JobcardinfoFiles with _$JobcardinfoFiles {
  const factory JobcardinfoFiles({
    @JsonKey(name: "tc_required_multiple_file")
    List<WeighBridge>? tcRequiredMultipleFile,
    @JsonKey(name: "data_form_required_multiple_file")
    List<WeighBridge>? dataFormRequiredMultipleFile,
    @JsonKey(name: "weigh_bridge_required_multiple_file")
    List<WeighBridge>? weighBridgeRequiredMultipleFile,
    @JsonKey(name: "safety_data_sheet_files")
    List<WeighBridge>? safetyDataSheetFiles,
    @JsonKey(name: "manifest_multiple_file")
    List<WeighBridge>? manifestMultipleFile,
    @JsonKey(name: "purchase_order") List<WeighBridge>? purchaseOrder,
    @JsonKey(name: "chemist_approval_multiple_file")
    List<WeighBridge>? chemistApprovalMultipleFile,
  }) = _JobcardinfoFiles;

  factory JobcardinfoFiles.fromJson(Map<String, dynamic> json) =>
      _$JobcardinfoFilesFromJson(json);
}

@freezed
class ServiceList with _$ServiceList {
  const factory ServiceList({
    @JsonKey(name: "no") String? no,
    @JsonKey(name: "capacity") String? capacity,
    @JsonKey(name: "frequency") String? frequency,
    @JsonKey(name: "waste_type") String? wasteType,
    @JsonKey(name: "pit_location") String? pitLocation,
  }) = _ServiceList;

  factory ServiceList.fromJson(Map<String, dynamic> json) =>
      _$ServiceListFromJson(json);
}

@freezed
class WeighBridge with _$WeighBridge {
  const factory WeighBridge({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "file") String? file,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "created_at") String? createdAt,
  }) = _WeighBridge;

  factory WeighBridge.fromJson(Map<String, dynamic> json) =>
      _$WeighBridgeFromJson(json);
}
// ignore_for_file: invalid_annotation_target
// @freezed
// class AdditionalEmail with _$AdditionalEmail {
//   const factory AdditionalEmail({
//     @JsonKey(name: "0") int? id,
//     @JsonKey(name: "1") String? name,
//     @JsonKey(name: "2") String? file,
//   }) = _AdditionalEmail;
//   factory AdditionalEmail.fromJson(Map<String, dynamic> json) =>
//       _$AdditionalEmailFromJson(json);
// }
