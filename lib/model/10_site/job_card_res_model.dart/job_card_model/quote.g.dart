// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteImpl _$$QuoteImplFromJson(Map<String, dynamic> json) => _$QuoteImpl(
      id: json['id'] as num?,
      clientName: json['client_name'] as String?,
      salesTeamReview: json['sales_team_review'] as bool?,
      client: json['client'] == null
          ? null
          : Client.fromJson(json['client'] as Map<String, dynamic>),
      clientType: json['client_type'] as String?,
      template: json['template'] as String?,
      templateReceive: json['template_receive'],
      templateResponse: json['template_response'] as List<dynamic>?,
      quoteFile: json['quote_file'] as String?,
      receivedFile: json['received_file'] as String?,
      createdOn: json['created_on'] as String?,
      receivedFileName: json['received_file_name'] as String?,
      templateTypeName: json['template_type_name'] as String?,
      reoccurring: json['reoccurring'] as bool?,
      recurringStatus: json['recurring_status'] as String?,
      isQuoteThroughRecurring: json['is_quote_through_recurring'] as bool?,
      parentQuoteId: json['parent_quote_id'],
      status: json['status'] as String?,
      frequency: json['frequency'] as String?,
      tabType: json['tab_type'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : CreatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      invoiceAmount: json['invoice_amount'] as String?,
      attachedFiles: (json['attached_files'] as List<dynamic>?)
          ?.map((e) => AttachedFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobCardId: json['job_card_id'] as num?,
      wasteTypeStr: json['waste_type_str'] as String?,
      typeOfWasteStrProfileName: json['type_of_waste_str_profile_name'],
      jobCardCode: json['job_card_code'] as String?,
    );

Map<String, dynamic> _$$QuoteImplToJson(_$QuoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_name': instance.clientName,
      'sales_team_review': instance.salesTeamReview,
      'client': instance.client,
      'client_type': instance.clientType,
      'template': instance.template,
      'template_receive': instance.templateReceive,
      'template_response': instance.templateResponse,
      'quote_file': instance.quoteFile,
      'received_file': instance.receivedFile,
      'created_on': instance.createdOn,
      'received_file_name': instance.receivedFileName,
      'template_type_name': instance.templateTypeName,
      'reoccurring': instance.reoccurring,
      'recurring_status': instance.recurringStatus,
      'is_quote_through_recurring': instance.isQuoteThroughRecurring,
      'parent_quote_id': instance.parentQuoteId,
      'status': instance.status,
      'frequency': instance.frequency,
      'tab_type': instance.tabType,
      'created_by': instance.createdBy,
      'invoice_amount': instance.invoiceAmount,
      'attached_files': instance.attachedFiles,
      'job_card_id': instance.jobCardId,
      'waste_type_str': instance.wasteTypeStr,
      'type_of_waste_str_profile_name': instance.typeOfWasteStrProfileName,
      'job_card_code': instance.jobCardCode,
    };
