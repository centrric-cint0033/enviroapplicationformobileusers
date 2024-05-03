// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemplateResponseImpl _$$TemplateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TemplateResponseImpl(
      id: json['id'] as num?,
      templateTypeName: json['template_type_name'] as String?,
      templateContent: json['template_content'] as String?,
      templateName: json['template_name'] as String?,
      templateReceiveResponse: json['template_receive_response'] as String?,
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      editedDateTime: json['edited_date_time'] == null
          ? null
          : DateTime.parse(json['edited_date_time'] as String),
      quoteData: json['quote_data'] as num?,
      quoteAttachTemplateResponse:
          json['quote_attach_template_response'] as num?,
    );

Map<String, dynamic> _$$TemplateResponseImplToJson(
        _$TemplateResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'template_type_name': instance.templateTypeName,
      'template_content': instance.templateContent,
      'template_name': instance.templateName,
      'template_receive_response': instance.templateReceiveResponse,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
      'quote_data': instance.quoteData,
      'quote_attach_template_response': instance.quoteAttachTemplateResponse,
    };
