import 'package:freezed_annotation/freezed_annotation.dart';

import 'cordinates.dart';

part 'schedule_card_by_date_res_model.freezed.dart';
part 'schedule_card_by_date_res_model.g.dart';

@freezed
class ScheduleCardByDateResModel with _$ScheduleCardByDateResModel {
  factory ScheduleCardByDateResModel({
    num? id,
    String? client,
    @JsonKey(name: 'tab_type') String? tabType,
    @JsonKey(name: 'quote_id') num? quoteId,
    Cordinates? cordinates,
    String? frequency,
    @JsonKey(name: 'waste_type_str') String? wasteTypeStr,
    @JsonKey(name: 'type_of_waste_str_profile_name')
    dynamic typeOfWasteStrProfileName,
    @JsonKey(name: 'job_card_code') num? jobCardCode,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    String? image,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'extracted_waste_type') dynamic extractedWasteType,
    @JsonKey(name: 'extracted_litres_of_waste') dynamic extractedLitresOfWaste,
    @JsonKey(name: 'depart_enviro_facility') String? departEnviroFacility,
    @JsonKey(name: 'start_job') String? startJob,
    @JsonKey(name: 'finish_job') String? finishJob,
    @JsonKey(name: 'arrive_at_waste_depot') String? arriveAtWasteDepot,
    @JsonKey(name: 'depart_waste_depot') String? departWasteDepot,
    @JsonKey(name: 'arrive_enviro_facility') String? arriveEnviroFacility,
    @JsonKey(name: 'schedule_completed_mail') String? scheduleCompletedMail,
    String? completed,
    @JsonKey(name: 'outsourced_job') bool? outsourcedJob,
    @JsonKey(name: 'purchase_order_number') String? purchaseOrderNumber,
    @JsonKey(name: 'signature_name') String? signatureName,
    @JsonKey(name: 'outsourced_company_name') dynamic outsourcedCompanyName,
    @JsonKey(name: 'active_status') bool? activeStatus,
    num? job,
    num? vehicle,
    String? status,
    String? address,
    @JsonKey(name: 'primary_vehicle_driver') num? primaryVehicleDriver,
    @JsonKey(name: 'unread_comments_exists') bool? unreadCommentsExists,
    @JsonKey(name: 'additionalvehicle_id') List<dynamic>? additionalvehicleId,
    List<dynamic>? additionalvehicledrivers,
    @JsonKey(name: 'team_employess_id') List<int>? teamEmployessId,
  }) = _ScheduleCardByDateResModel;

  factory ScheduleCardByDateResModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleCardByDateResModelFromJson(json);
}
