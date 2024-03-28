// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_sale_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreviousSaleResModelImpl _$$PreviousSaleResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreviousSaleResModelImpl(
      id: json['id'] as int?,
      clientName: json['client_name'] as String?,
      dp: json['dp'] as String?,
      code: json['code'] as String?,
      createdBy: json['created_by'] as String?,
      amount: json['amount'] as String?,
      paidAmount: json['paid_amount'] as String?,
      amountPaidStatus: json['amount_paid_status'] as bool?,
      amountTotalPaidStatus: json['amount_total_paid_status'] as bool?,
      paidStatus: json['paid_status'] as String?,
      vehicleImage: json['vehicle_image'],
      clientLatitude: json['client_latitude'],
      clientLongitude: json['client_longitude'],
      clientId: json['client_id'] as num?,
      quoteId: json['quote_id'] as num?,
      quoteUuid: json['quote_uuid'] as String?,
      quoteAutoCreate: json['quote_auto_create'] as num?,
      quoteInvoiceAmount: json['quote_invoice_amount'] as String?,
      attachedQuoteFiles: json['attached_quote_files'],
      schedule: json['schedule'],
      tabType: json['tab_type'] as String?,
      frequency: json['frequency'] as String?,
      salesPerson: json['sales_person'] as String?,
      wasteTypeStr: json['waste_type_str'] as String?,
      typeOfWasteStrProfileName: json['type_of_waste_str_profile_name'],
      jobCardCode: json['job_card_code'] as String?,
      totalJobComments: json['total_job_comments'] as num?,
      jobCardKeys: json['job_card_keys'] == null
          ? null
          : JobCardKeys.fromJson(json['job_card_keys'] as Map<String, dynamic>),
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      deletedStatus: json['deleted_status'] as bool?,
      uuid: json['uuid'] as String?,
      reoccurring: json['reoccurring'] as bool?,
      scheduleStatus: json['schedule_status'] as bool?,
      jobType: json['job_type'] as String?,
      readyForSchedule: json['ready_for_schedule'] as bool?,
      isJobThroughReccuuring: json['is_job_through_reccuuring'] as bool?,
      parentJobId: json['parent_job_id'],
      rescheduled: json['rescheduled'] as bool?,
      activeStatus: json['active_status'] as bool?,
      jobCardType: json['job_card_type'] as String?,
      recurringDate: json['recurring_date'],
      quote: json['quote'] as num?,
      jobCard: json['job_card'],
    );

Map<String, dynamic> _$$PreviousSaleResModelImplToJson(
        _$PreviousSaleResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_name': instance.clientName,
      'dp': instance.dp,
      'code': instance.code,
      'created_by': instance.createdBy,
      'amount': instance.amount,
      'paid_amount': instance.paidAmount,
      'amount_paid_status': instance.amountPaidStatus,
      'amount_total_paid_status': instance.amountTotalPaidStatus,
      'paid_status': instance.paidStatus,
      'vehicle_image': instance.vehicleImage,
      'client_latitude': instance.clientLatitude,
      'client_longitude': instance.clientLongitude,
      'client_id': instance.clientId,
      'quote_id': instance.quoteId,
      'quote_uuid': instance.quoteUuid,
      'quote_auto_create': instance.quoteAutoCreate,
      'quote_invoice_amount': instance.quoteInvoiceAmount,
      'attached_quote_files': instance.attachedQuoteFiles,
      'schedule': instance.schedule,
      'tab_type': instance.tabType,
      'frequency': instance.frequency,
      'sales_person': instance.salesPerson,
      'waste_type_str': instance.wasteTypeStr,
      'type_of_waste_str_profile_name': instance.typeOfWasteStrProfileName,
      'job_card_code': instance.jobCardCode,
      'total_job_comments': instance.totalJobComments,
      'job_card_keys': instance.jobCardKeys,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'deleted_status': instance.deletedStatus,
      'uuid': instance.uuid,
      'reoccurring': instance.reoccurring,
      'schedule_status': instance.scheduleStatus,
      'job_type': instance.jobType,
      'ready_for_schedule': instance.readyForSchedule,
      'is_job_through_reccuuring': instance.isJobThroughReccuuring,
      'parent_job_id': instance.parentJobId,
      'rescheduled': instance.rescheduled,
      'active_status': instance.activeStatus,
      'job_card_type': instance.jobCardType,
      'recurring_date': instance.recurringDate,
      'quote': instance.quote,
      'job_card': instance.jobCard,
    };

_$JobCardKeysImpl _$$JobCardKeysImplFromJson(Map<String, dynamic> json) =>
    _$JobCardKeysImpl(
      siteAddress: json['site_address'] as String?,
      capacity: json['capacity'] as String?,
    );

Map<String, dynamic> _$$JobCardKeysImplToJson(_$JobCardKeysImpl instance) =>
    <String, dynamic>{
      'site_address': instance.siteAddress,
      'capacity': instance.capacity,
    };
