import 'package:freezed_annotation/freezed_annotation.dart';

import 'attached_file.dart';
import 'client.dart';
import 'created_by.dart';

part 'quote.freezed.dart';
part 'quote.g.dart';

@freezed
class Quote with _$Quote {
  factory Quote({
    num? id,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'sales_team_review') bool? salesTeamReview,
    Client? client,
    @JsonKey(name: 'client_type') String? clientType,
    String? template,
    @JsonKey(name: 'template_receive') dynamic templateReceive,
    @JsonKey(name: 'template_response') List<dynamic>? templateResponse,
    @JsonKey(name: 'quote_file') String? quoteFile,
    @JsonKey(name: 'received_file') String? receivedFile,
    @JsonKey(name: 'created_on') String? createdOn,
    @JsonKey(name: 'received_file_name') String? receivedFileName,
    @JsonKey(name: 'template_type_name') String? templateTypeName,
    bool? reoccurring,
    @JsonKey(name: 'recurring_status') String? recurringStatus,
    @JsonKey(name: 'is_quote_through_recurring') bool? isQuoteThroughRecurring,
    @JsonKey(name: 'parent_quote_id') dynamic parentQuoteId,
    String? status,
    String? frequency,
    @JsonKey(name: 'tab_type') String? tabType,
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'invoice_amount') String? invoiceAmount,
    @JsonKey(name: 'attached_files') List<AttachedFile>? attachedFiles,
    @JsonKey(name: 'job_card_id') num? jobCardId,
    @JsonKey(name: 'waste_type_str') String? wasteTypeStr,
    @JsonKey(name: 'type_of_waste_str_profile_name')
    dynamic typeOfWasteStrProfileName,
    @JsonKey(name: 'job_card_code') String? jobCardCode,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}
