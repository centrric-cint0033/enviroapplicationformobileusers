// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesModelImpl _$$SalesModelImplFromJson(Map<String, dynamic> json) =>
    _$SalesModelImpl(
      id: json['id'] as int?,
      client: json['client'] as int?,
      isMockJob: json['is_mock_job'] as bool?,
      jobCode: json['job_code'] as String?,
      quotedBy: json['quoted_by'] as String?,
      clientId: json['client_id'],
      clientName: json['client_name'] as String?,
      clientType: json['client_type'] as String?,
      paidStatus: json['paid_status'] as String?,
      date: json['date'] as String?,
      jobCardId: json['job_card_id'] as int?,
      nextService2: json['next_service_2'],
      frequency: json['frequency'] as String?,
      wasteTypeStr: json['waste_type_str'] as String?,
      typeOfWasteStrProfileName: json['type_of_waste_str_profile_name'],
      salesApproveDate: json['sales_approve_date'] as String?,
      jobCardCode: json['job_card_code'] as String?,
      createdDateTime: json['created_date_time'] as String?,
      jobCardKeys: json['job_card_keys'] == null
          ? null
          : JobCardKeys.fromJson(json['job_card_keys'] as Map<String, dynamic>),
      deletedStatus: json['deleted_status'] as bool?,
      tabType: json['tab_type'] as String?,
      uuid: json['uuid'] as String?,
      amount: json['amount'] as String?,
      paidAmount: json['paid_amount'] as String?,
      reoccurring: json['reoccurring'] as bool?,
      status: json['status'] as String?,
      scheduleStatus: json['schedule_status'] as bool?,
      jobType: json['job_type'] as String?,
      readyForSchedule: json['ready_for_schedule'] as bool?,
      isJobThroughReccuuring: json['is_job_through_reccuuring'] as bool?,
      parentJobId: json['parent_job_id'],
      editedDateTime: json['edited_date_time'] == null
          ? null
          : DateTime.parse(json['edited_date_time'] as String),
      rescheduled: json['rescheduled'] as bool?,
      activeStatus: json['active_status'] as bool?,
      jobCardType: json['job_card_type'] as String?,
      recurringDate: json['recurring_date'],
      createdBy: json['created_by'] as int?,
      quote: json['quote'] as int?,
      jobCard: json['job_card'] as int?,
      jobComments: json['job_comments'] as List<dynamic>?,
    );

Map<String, dynamic> _$$SalesModelImplToJson(_$SalesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client': instance.client,
      'is_mock_job': instance.isMockJob,
      'job_code': instance.jobCode,
      'quoted_by': instance.quotedBy,
      'client_id': instance.clientId,
      'client_name': instance.clientName,
      'client_type': instance.clientType,
      'paid_status': instance.paidStatus,
      'date': instance.date,
      'job_card_id': instance.jobCardId,
      'next_service_2': instance.nextService2,
      'frequency': instance.frequency,
      'waste_type_str': instance.wasteTypeStr,
      'type_of_waste_str_profile_name': instance.typeOfWasteStrProfileName,
      'sales_approve_date': instance.salesApproveDate,
      'job_card_code': instance.jobCardCode,
      'created_date_time': instance.createdDateTime,
      'job_card_keys': instance.jobCardKeys,
      'deleted_status': instance.deletedStatus,
      'tab_type': instance.tabType,
      'uuid': instance.uuid,
      'amount': instance.amount,
      'paid_amount': instance.paidAmount,
      'reoccurring': instance.reoccurring,
      'status': instance.status,
      'schedule_status': instance.scheduleStatus,
      'job_type': instance.jobType,
      'ready_for_schedule': instance.readyForSchedule,
      'is_job_through_reccuuring': instance.isJobThroughReccuuring,
      'parent_job_id': instance.parentJobId,
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
      'rescheduled': instance.rescheduled,
      'active_status': instance.activeStatus,
      'job_card_type': instance.jobCardType,
      'recurring_date': instance.recurringDate,
      'created_by': instance.createdBy,
      'quote': instance.quote,
      'job_card': instance.jobCard,
      'job_comments': instance.jobComments,
    };
