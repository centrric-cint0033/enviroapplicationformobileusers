// To parse this JSON data, do
//
//     final sheduleCardRespModel = sheduleCardRespModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'shedule_card_resp_model.freezed.dart';
part 'shedule_card_resp_model.g.dart';

List<SheduleCardRespModel> sheduleCardRespModelFromJson(String str) =>
    List<SheduleCardRespModel>.from(
        json.decode(str).map((x) => SheduleCardRespModel.fromJson(x)));

String sheduleCardRespModelToJson(List<SheduleCardRespModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SheduleCardRespModel with _$SheduleCardRespModel {
  const factory SheduleCardRespModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "job_video") List<dynamic>? jobVideo,
    @JsonKey(name: "client") Client? client,
    @JsonKey(name: "quote_id") int? quoteId,
    @JsonKey(name: "created_by") String? createdBy,
    @JsonKey(name: "job_type") String? jobType,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "paid_amount") String? paidAmount,
    @JsonKey(name: "amount_paid_status") bool? amountPaidStatus,
    @JsonKey(name: "amount_total_paid_status") bool? amountTotalPaidStatus,
    @JsonKey(name: "pending_amount") String? pendingAmount,
    @JsonKey(name: "vehicle") String? vehicle,
    @JsonKey(name: "team_employees") List<TeamEmployee>? teamEmployees,
    @JsonKey(name: "shift") String? shift,
    @JsonKey(name: "before_pics") List<Pic>? beforePics,
    @JsonKey(name: "after_pics") List<Pic>? afterPics,
    @JsonKey(name: "gallery") List<dynamic>? gallery,
    @JsonKey(name: "comments") List<Comment>? comments,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "frequency") String? frequency,
    @JsonKey(name: "waste_type_str") String? wasteTypeStr,
    @JsonKey(name: "type_of_waste_str_profile_name")
    dynamic typeOfWasteStrProfileName,
    @JsonKey(name: "primary_vehicle_driver") bool? primaryVehicleDriver,
    @JsonKey(name: "drivers") List<Driver>? drivers,
    @JsonKey(name: "sales_person") String? salesPerson,
    @JsonKey(name: "job_card_code") String? jobCardCode,
    @JsonKey(name: "job_card_keys") JobCardKeys? jobCardKeys,
    @JsonKey(name: "tab_type") String? tabType,
    @JsonKey(name: "start_date") DateTime? startDate,
    @JsonKey(name: "start_time") String? startTime,
    @JsonKey(name: "end_time") String? endTime,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "created_date_time") String? createdDateTime,
    @JsonKey(name: "end_date") DateTime? endDate,
    @JsonKey(name: "extracted_waste_type") String? extractedWasteType,
    @JsonKey(name: "extracted_litres_of_waste") String? extractedLitresOfWaste,
    @JsonKey(name: "depart_enviro_facility") dynamic departEnviroFacility,
    @JsonKey(name: "start_job") String? startJob,
    @JsonKey(name: "finish_job") String? finishJob,
    @JsonKey(name: "arrive_at_waste_depot") dynamic arriveAtWasteDepot,
    @JsonKey(name: "depart_waste_depot") dynamic departWasteDepot,
    @JsonKey(name: "arrive_enviro_facility") dynamic arriveEnviroFacility,
    @JsonKey(name: "schedule_completed_mail") String? scheduleCompletedMail,
    @JsonKey(name: "completed") String? completed,
    @JsonKey(name: "outsourced_job") bool? outsourcedJob,
    @JsonKey(name: "purchase_order_number") dynamic purchaseOrderNumber,
    @JsonKey(name: "signature_name") String? signatureName,
    @JsonKey(name: "outsourced_company_name") dynamic outsourcedCompanyName,
    @JsonKey(name: "active_status") bool? activeStatus,
    @JsonKey(name: "job") int? job,
    @JsonKey(name: "additional_vehicle_drivers")
    List<int>? additionalVehicleDrivers,
  }) = _SheduleCardRespModel;

  factory SheduleCardRespModel.fromJson(Map<String, dynamic> json) =>
      _$SheduleCardRespModelFromJson(json);
}

@freezed
class Pic with _$Pic {
  const factory Pic({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "file") String? file,
    @JsonKey(name: "created_date_time") String? createdDateTime,
    @JsonKey(name: "edited_date_time") String? editedDateTime,
  }) = _Pic;

  factory Pic.fromJson(Map<String, dynamic> json) => _$PicFromJson(json);
}

@freezed
class Client with _$Client {
  const factory Client({
    @JsonKey(name: "client_id") dynamic clientId,
    @JsonKey(name: "client_type") String? clientType,
    @JsonKey(name: "client_name") String? clientName,
    @JsonKey(name: "client_email") String? clientEmail,
    @JsonKey(name: "location_logitude") String? locationLogitude,
    @JsonKey(name: "location_latitude") String? locationLatitude,
    @JsonKey(name: "place") dynamic place,
    @JsonKey(name: "building") dynamic building,
    @JsonKey(name: "dp") String? dp,
    @JsonKey(name: "device_capacity") String? deviceCapacity,
    @JsonKey(name: "device_waste") dynamic deviceWaste,
    @JsonKey(name: "barcode") String? barcode,
    @JsonKey(name: "site_address") String? siteAddress,
    @JsonKey(name: "site_suburb") dynamic siteSuburb,
    @JsonKey(name: "post_code") dynamic postCode,
    @JsonKey(name: "bar_code_for_grease_trap_only")
    dynamic barCodeForGreaseTrapOnly,
    @JsonKey(name: "account_type") String? accountType,
    @JsonKey(name: "pit_location") String? pitLocation,
    @JsonKey(name: "access_registration") String? accessRegistration,
    @JsonKey(name: "company_suburb") dynamic companySuburb,
    @JsonKey(name: "company_contact_number") dynamic companyContactNumber,
    @JsonKey(name: "company_mobile_number") dynamic companyMobileNumber,
    @JsonKey(name: "company_landline_number") dynamic companyLandlineNumber,
    @JsonKey(name: "company_email") dynamic companyEmail,
    @JsonKey(name: "company_postcode") dynamic companyPostcode,
    @JsonKey(name: "information") String? information,
    @JsonKey(name: "company_name") String? companyName,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "comment") String? comment,
    @JsonKey(name: "created_by") String? createdBy,
    @JsonKey(name: "editable") bool? editable,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class Driver with _$Driver {
  const factory Driver({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "vehicle_id") int? vehicleId,
    @JsonKey(name: "dp") String? dp,
    @JsonKey(name: "registration") String? registration,
    @JsonKey(name: "preinspectioncheck") bool? preinspectioncheck,
    @JsonKey(name: "preinspection_required") bool? preinspectionRequired,
    @JsonKey(name: "type") String? type,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

@freezed
class JobCardKeys with _$JobCardKeys {
  const factory JobCardKeys({
    @JsonKey(name: "weigh_bridge_required") String? weighBridgeRequired,
    @JsonKey(name: "photo_required") bool? photoRequired,
    @JsonKey(name: "add_info_button") dynamic addInfoButton,
    @JsonKey(name: "weigh_bridge_required_multiple_file")
    List<dynamic>? weighBridgeRequiredMultipleFile,
  }) = _JobCardKeys;

  factory JobCardKeys.fromJson(Map<String, dynamic> json) =>
      _$JobCardKeysFromJson(json);
}

@freezed
class TeamEmployee with _$TeamEmployee {
  const factory TeamEmployee({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "dp") String? dp,
  }) = _TeamEmployee;

  factory TeamEmployee.fromJson(Map<String, dynamic> json) =>
      _$TeamEmployeeFromJson(json);
}
