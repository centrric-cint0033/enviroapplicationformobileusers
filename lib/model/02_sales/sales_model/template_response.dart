// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_response.freezed.dart';
part 'template_response.g.dart';

@freezed
class TemplateResponse with _$TemplateResponse {
  factory TemplateResponse({
    num? id,
    @JsonKey(name: 'template_type_name') String? templateTypeName,
    @JsonKey(name: 'template_content') String? templateContent,
    @JsonKey(name: 'template_name') String? templateName,
    @JsonKey(name: 'template_receive_response') String? templateReceiveResponse,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
    @JsonKey(name: 'quote_data') num? quoteData,
    @JsonKey(name: 'quote_attach_template_response')
    num? quoteAttachTemplateResponse,
  }) = _TemplateResponse;

  factory TemplateResponse.fromJson(Map<String, dynamic> json) =>
      _$TemplateResponseFromJson(json);
}
