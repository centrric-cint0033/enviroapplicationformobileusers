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
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'job_card_keys') JobCardKeys? jobCardKeys,
    @JsonKey(name: 'deleted_status') bool? deletedStatus,
    @JsonKey(name: 'tab_type') String? tabType,
    String? uuid,
    String? amount,
    @JsonKey(name: 'paid_amount') String? paidAmount,
    bool? reoccurring,
    String? status,
    @JsonKey(name: 'schedule_status') dynamic scheduleStatus,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'ready_for_schedule') bool? readyForSchedule,
    @JsonKey(name: 'is_job_through_reccuuring') bool? isJobThroughReccuuring,
    @JsonKey(name: 'parent_job_id') dynamic parentJobId,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
    bool? rescheduled,
    @JsonKey(name: 'active_status') bool? activeStatus,
    @JsonKey(name: 'job_card_type') String? jobCardType,
    @JsonKey(name: 'recurring_date') String? recurringDate,
    @JsonKey(name: 'created_by') String? createdBy,
    int? quote,
    @JsonKey(name: 'job_card') int? jobCard,
    @JsonKey(name: 'job_comments') List<dynamic>? jobComments,
    @JsonKey(name: 'won_lose_status') String? wonLoseStatus,
    @JsonKey(name: 'schedule_id') dynamic scheduleId,
    @JsonKey(name: 'file_list') List<dynamic>? fileList,
    @JsonKey(name: 'client_email') String? clientEmail,
    @JsonKey(name: 'sale_person') String? salePerson,
    @JsonKey(name: 'contact_number') String? contactNumber,
    String? customer,
    @JsonKey(name: 'won_reject_date') String? wonRejectDate,
    @JsonKey(name: 'parent_quote_status') String? parentQuoteStatus,
    @JsonKey(name: 'mail_cc') List<dynamic>? mailCc,
    dynamic company,
    String? template,
    @JsonKey(name: 'template_name') dynamic templateName,
    @JsonKey(name: 'auto_create') int? autoCreate,
    String? url,
    @JsonKey(name: 'invoice_amt') String? invoiceAmt,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'mail_subject') String? mailSubject,
    @JsonKey(name: 'mail_body') String? mailBody,
    @JsonKey(name: 'safety_data') dynamic safetyData,
    @JsonKey(name: 'safety_data_html_send') dynamic safetyDataHtmlSend,
    @JsonKey(name: 'sales_team_review') bool? salesTeamReview,
    @JsonKey(name: 'email_sending_option') bool? emailSendingOption,
    @JsonKey(name: 'is_quote_through_recurring') bool? isQuoteThroughRecurring,
    @JsonKey(name: 'recurring_status') String? recurringStatus,
    @JsonKey(name: 'parent_quote_id') dynamic parentQuoteId,
    @JsonKey(name: 'scope_of_work_type') String? scopeOfWorkType,
    @JsonKey(name: 'sales_approve_date_time') dynamic salesApproveDateTime,
    @JsonKey(name: 'quote_type') String? quoteType,
    @JsonKey(name: 'converted_to_recurring_quote_id')
    dynamic convertedToRecurringQuoteId,
    int? employee,
    @JsonKey(name: 'mail_bcc') List<dynamic>? mailBcc,
    String? name,
    int? won,
    int? lost,
    int? pending,
    int? total,
    String? profile,
  }) = _SalesModel;

  factory SalesModel.fromJson(Map<String, dynamic> json) =>
      _$SalesModelFromJson(json);
}
