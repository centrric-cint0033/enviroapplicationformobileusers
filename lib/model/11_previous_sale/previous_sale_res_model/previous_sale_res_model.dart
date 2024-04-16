// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'previous_sale_res_model.freezed.dart';
part 'previous_sale_res_model.g.dart';

@freezed
class PreviousSaleResModel with _$PreviousSaleResModel {
  factory PreviousSaleResModel({
    int? id,
    @JsonKey(name: 'client_name') String? clientName,
    String? dp,
    String? code,
    @JsonKey(name: 'created_by') String? createdBy,
    String? amount,
    @JsonKey(name: 'paid_amount') String? paidAmount,
    @JsonKey(name: 'amount_paid_status') bool? amountPaidStatus,
    @JsonKey(name: 'amount_total_paid_status') bool? amountTotalPaidStatus,
    @JsonKey(name: 'paid_status') String? paidStatus,
    @JsonKey(name: 'vehicle_image') dynamic vehicleImage,
    @JsonKey(name: 'client_latitude') dynamic clientLatitude,
    @JsonKey(name: 'client_longitude') dynamic clientLongitude,
    @JsonKey(name: 'client_id') num? clientId,
    @JsonKey(name: 'quote_id') num? quoteId,
    @JsonKey(name: 'quote_uuid') String? quoteUuid,
    @JsonKey(name: 'quote_auto_create') num? quoteAutoCreate,
    @JsonKey(name: 'quote_invoice_amount') String? quoteInvoiceAmount,
    @JsonKey(name: 'attached_quote_files') dynamic attachedQuoteFiles,
    dynamic schedule,
    @JsonKey(name: 'tab_type') String? tabType,
    String? frequency,
    @JsonKey(name: 'sales_person') String? salesPerson,
    @JsonKey(name: 'waste_type_str') String? wasteTypeStr,
    @JsonKey(name: 'type_of_waste_str_profile_name')
    dynamic typeOfWasteStrProfileName,
    @JsonKey(name: 'job_card_code') String? jobCardCode,
    @JsonKey(name: 'total_job_comments') num? totalJobComments,
    @JsonKey(name: 'job_card_keys') JobCardKeys? jobCardKeys,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'deleted_status') bool? deletedStatus,
    String? uuid,
    bool? reoccurring,
    @JsonKey(name: 'schedule_status') bool? scheduleStatus,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'ready_for_schedule') bool? readyForSchedule,
    @JsonKey(name: 'is_job_through_reccuuring') bool? isJobThroughReccuuring,
    @JsonKey(name: 'parent_job_id') dynamic parentJobId,
    bool? rescheduled,
    @JsonKey(name: 'active_status') bool? activeStatus,
    @JsonKey(name: 'job_card_type') String? jobCardType,
    @JsonKey(name: 'recurring_date') dynamic recurringDate,
    num? quote,
    @JsonKey(name: 'job_card') dynamic jobCard,
  }) = _PreviousSaleResModel;

  factory PreviousSaleResModel.fromJson(Map<String, dynamic> json) =>
      _$PreviousSaleResModelFromJson(json);
}

@freezed
class JobCardKeys with _$JobCardKeys {
  factory JobCardKeys({
    @JsonKey(name: 'site_address') String? siteAddress,
    String? capacity,
  }) = _JobCardKeys;

  factory JobCardKeys.fromJson(Map<String, dynamic> json) =>
      _$JobCardKeysFromJson(json);
}
