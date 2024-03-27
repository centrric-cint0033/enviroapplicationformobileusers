// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_card_keys.dart';

part 'sales_model.freezed.dart';
part 'sales_model.g.dart';

@freezed
class SalesModel with _$SalesModel {
  factory SalesModel({
    int? id,
    int? client,
    @JsonKey(name: 'is_mock_job') bool? isMockJob,
    @JsonKey(name: 'job_code') String? jobCode,
    @JsonKey(name: 'quoted_by') String? quotedBy,
    @JsonKey(name: 'client_id') dynamic clientId,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'client_type') String? clientType,
    @JsonKey(name: 'paid_status') String? paidStatus,
    String? date,
    @JsonKey(name: 'job_card_id') int? jobCardId,
    @JsonKey(name: 'next_service_2') dynamic nextService2,
    String? frequency,
    @JsonKey(name: 'waste_type_str') String? wasteTypeStr,
    @JsonKey(name: 'type_of_waste_str_profile_name')
    dynamic typeOfWasteStrProfileName,
    @JsonKey(name: 'sales_approve_date') String? salesApproveDate,
    @JsonKey(name: 'job_card_code') String? jobCardCode,
    @JsonKey(name: 'created_date_time') String? createdDateTime,
    @JsonKey(name: 'job_card_keys') JobCardKeys? jobCardKeys,
    @JsonKey(name: 'deleted_status') bool? deletedStatus,
    @JsonKey(name: 'tab_type') String? tabType,
    String? uuid,
    String? amount,
    @JsonKey(name: 'paid_amount') String? paidAmount,
    bool? reoccurring,
    String? status,
    @JsonKey(name: 'schedule_status') bool? scheduleStatus,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'ready_for_schedule') bool? readyForSchedule,
    @JsonKey(name: 'is_job_through_reccuuring') bool? isJobThroughReccuuring,
    @JsonKey(name: 'parent_job_id') dynamic parentJobId,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
    bool? rescheduled,
    @JsonKey(name: 'active_status') bool? activeStatus,
    @JsonKey(name: 'job_card_type') String? jobCardType,
    @JsonKey(name: 'recurring_date') dynamic recurringDate,
    @JsonKey(name: 'created_by') int? createdBy,
    int? quote,
    @JsonKey(name: 'job_card') int? jobCard,
    @JsonKey(name: 'job_comments') List<dynamic>? jobComments,
  }) = _SalesModel;

  factory SalesModel.fromJson(Map<String, dynamic> json) =>
      _$SalesModelFromJson(json);
}
