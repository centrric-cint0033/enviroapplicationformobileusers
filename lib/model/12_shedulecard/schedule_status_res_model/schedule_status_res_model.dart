import 'package:freezed_annotation/freezed_annotation.dart';

import 'additional_vehicle_driver.dart';
import 'prime_vehicle_driver.dart';
import 'team_employee.dart';
import 'vehicle.dart';

part 'schedule_status_res_model.freezed.dart';
part 'schedule_status_res_model.g.dart';

@freezed
class ScheduleStatusResModel with _$ScheduleStatusResModel {
  factory ScheduleStatusResModel({
    num? id,
    @JsonKey(name: 'job_video') List<dynamic>? jobVideo,
    String? client,
    String? address,
    @JsonKey(name: 'job_type') String? jobType,
    String? amount,
    @JsonKey(name: 'paid_amount') String? paidAmount,
    @JsonKey(name: 'amount_paid_status') bool? amountPaidStatus,
    @JsonKey(name: 'amount_total_paid_status') bool? amountTotalPaidStatus,
    @JsonKey(name: 'pending_amount') String? pendingAmount,
    String? vehicle,
    @JsonKey(name: 'team_employees') List<TeamEmployee>? teamEmployees,
    String? shift,
    List<dynamic>? gallery,
    @JsonKey(name: 'before_pics') List<dynamic>? beforePics,
    @JsonKey(name: 'after_pics') List<dynamic>? afterPics,
    dynamic comments,
    String? status,
    @JsonKey(name: 'tab_type') String? tabType,
    @JsonKey(name: 'quote_id') num? quoteId,
    List<Vehicle>? vehicles,
    @JsonKey(name: 'prime_vehicle_driver')
    List<PrimeVehicleDriver>? primeVehicleDriver,
    @JsonKey(name: 'additional_vehicle_driver')
    List<AdditionalVehicleDriver>? additionalVehicleDriver,
    String? latitude,
    String? longitude,
    String? frequency,
    @JsonKey(name: 'waste_type_str') String? wasteTypeStr,
    @JsonKey(name: 'type_of_waste_str_profile_name')
    dynamic typeOfWasteStrProfileName,
    @JsonKey(name: 'job_card_code') String? jobCardCode,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    dynamic image,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'extracted_waste_type') dynamic extractedWasteType,
    @JsonKey(name: 'extracted_litres_of_waste') dynamic extractedLitresOfWaste,
    @JsonKey(name: 'depart_enviro_facility') String? departEnviroFacility,
    @JsonKey(name: 'start_job') String? startJob,
    @JsonKey(name: 'finish_job') dynamic finishJob,
    @JsonKey(name: 'arrive_at_waste_depot') dynamic arriveAtWasteDepot,
    @JsonKey(name: 'depart_waste_depot') dynamic departWasteDepot,
    @JsonKey(name: 'arrive_enviro_facility') dynamic arriveEnviroFacility,
    @JsonKey(name: 'schedule_completed_mail') dynamic scheduleCompletedMail,
    dynamic completed,
    @JsonKey(name: 'outsourced_job') bool? outsourcedJob,
    @JsonKey(name: 'purchase_order_number') dynamic purchaseOrderNumber,
    @JsonKey(name: 'signature_name') dynamic signatureName,
    @JsonKey(name: 'outsourced_company_name') dynamic outsourcedCompanyName,
    @JsonKey(name: 'active_status') bool? activeStatus,
    num? job,
  }) = _ScheduleStatusResModel;

  factory ScheduleStatusResModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleStatusResModelFromJson(json);
}
