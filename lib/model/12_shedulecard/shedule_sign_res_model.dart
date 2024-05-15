// To parse this JSON data, do
//
//     final sheduleSignatureModel = sheduleSignatureModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'shedule_sign_res_model.freezed.dart';
part 'shedule_sign_res_model.g.dart';

SheduleSignatureModel sheduleSignatureModelFromJson(String str) =>
    SheduleSignatureModel.fromJson(json.decode(str));

String sheduleSignatureModelToJson(SheduleSignatureModel data) =>
    json.encode(data.toJson());

@freezed
class SheduleSignatureModel with _$SheduleSignatureModel {
  const factory SheduleSignatureModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "job_video") List<dynamic>? jobVideo,
    @JsonKey(name: "client") String? client,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "job_type") String? jobType,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "paid_amount") String? paidAmount,
    @JsonKey(name: "amount_paid_status") bool? amountPaidStatus,
    @JsonKey(name: "amount_total_paid_status") bool? amountTotalPaidStatus,
    @JsonKey(name: "pending_amount") String? pendingAmount,
    @JsonKey(name: "vehicle") String? vehicle,
    @JsonKey(name: "team_employees") List<dynamic>? teamEmployees,
    @JsonKey(name: "shift") String? shift,
    @JsonKey(name: "gallery") List<dynamic>? gallery,
    @JsonKey(name: "before_pics") List<dynamic>? beforePics,
    @JsonKey(name: "after_pics") List<dynamic>? afterPics,
    @JsonKey(name: "comments") dynamic comments,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "tab_type") String? tabType,
    @JsonKey(name: "quote_id") int? quoteId,
    @JsonKey(name: "vehicles") List<Vehicle>? vehicles,
    @JsonKey(name: "prime_vehicle_driver")
    List<VehicleDriver>? primeVehicleDriver,
    @JsonKey(name: "additional_vehicle_driver")
    List<VehicleDriver>? additionalVehicleDriver,
    @JsonKey(name: "latitude") String? latitude,
    @JsonKey(name: "longitude") String? longitude,
    @JsonKey(name: "frequency") String? frequency,
    @JsonKey(name: "waste_type_str") String? wasteTypeStr,
    @JsonKey(name: "type_of_waste_str_profile_name")
    dynamic typeOfWasteStrProfileName,
    @JsonKey(name: "job_card_code") String? jobCardCode,
    @JsonKey(name: "start_date") DateTime? startDate,
    @JsonKey(name: "start_time") String? startTime,
    @JsonKey(name: "end_time") String? endTime,
    @JsonKey(name: "image") dynamic image,
    @JsonKey(name: "created_date_time") String? createdDateTime,
    @JsonKey(name: "end_date") DateTime? endDate,
    @JsonKey(name: "extracted_waste_type") String? extractedWasteType,
    @JsonKey(name: "extracted_litres_of_waste") String? extractedLitresOfWaste,
    @JsonKey(name: "depart_enviro_facility") dynamic departEnviroFacility,
    @JsonKey(name: "start_job") dynamic startJob,
    @JsonKey(name: "finish_job") dynamic finishJob,
    @JsonKey(name: "arrive_at_waste_depot") dynamic arriveAtWasteDepot,
    @JsonKey(name: "depart_waste_depot") dynamic departWasteDepot,
    @JsonKey(name: "arrive_enviro_facility") dynamic arriveEnviroFacility,
    @JsonKey(name: "schedule_completed_mail") String? scheduleCompletedMail,
    @JsonKey(name: "completed") dynamic completed,
    @JsonKey(name: "outsourced_job") bool? outsourcedJob,
    @JsonKey(name: "purchase_order_number") String? purchaseOrderNumber,
    @JsonKey(name: "signature_name") String? signatureName,
    @JsonKey(name: "outsourced_company_name") dynamic outsourcedCompanyName,
    @JsonKey(name: "active_status") bool? activeStatus,
    @JsonKey(name: "job") int? job,
  }) = _SheduleSignatureModel;

  factory SheduleSignatureModel.fromJson(Map<String, dynamic> json) =>
      _$SheduleSignatureModelFromJson(json);
}

@freezed
class VehicleDriver with _$VehicleDriver {
  const factory VehicleDriver({
    @JsonKey(name: "dp") String? dp,
    @JsonKey(name: "registration") String? registration,
    @JsonKey(name: "driver_id") int? driverId,
    @JsonKey(name: "vehicle_id") int? vehicleId,
    @JsonKey(name: "designation") String? designation,
    @JsonKey(name: "name") String? name,
  }) = _VehicleDriver;

  factory VehicleDriver.fromJson(Map<String, dynamic> json) =>
      _$VehicleDriverFromJson(json);
}

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "registration") String? registration,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "vehicle_type") String? vehicleType,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}
