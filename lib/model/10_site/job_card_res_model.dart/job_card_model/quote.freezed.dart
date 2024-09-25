// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

/// @nodoc
mixin _$Quote {
  num? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_name')
  String? get clientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_team_review')
  bool? get salesTeamReview => throw _privateConstructorUsedError;
  Client? get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_type')
  String? get clientType => throw _privateConstructorUsedError;
  String? get template => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_receive')
  dynamic get templateReceive => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_response')
  List<dynamic>? get templateResponse => throw _privateConstructorUsedError;
  @JsonKey(name: 'quote_file')
  String? get quoteFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_file')
  String? get receivedFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_on')
  String? get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_file_name')
  String? get receivedFileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_type_name')
  String? get templateTypeName => throw _privateConstructorUsedError;
  bool? get reoccurring => throw _privateConstructorUsedError;
  @JsonKey(name: 'recurring_status')
  String? get recurringStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_quote_through_recurring')
  bool? get isQuoteThroughRecurring => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_quote_id')
  dynamic get parentQuoteId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'tab_type')
  String? get tabType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_amount')
  String? get invoiceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'attached_files')
  List<AttachedFile>? get attachedFiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_card_id')
  num? get jobCardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'waste_type_str')
  String? get wasteTypeStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_waste_str_profile_name')
  dynamic get typeOfWasteStrProfileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_card_code')
  String? get jobCardCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res, Quote>;
  @useResult
  $Res call(
      {num? id,
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
      @JsonKey(name: 'is_quote_through_recurring')
      bool? isQuoteThroughRecurring,
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
      @JsonKey(name: 'job_card_code') String? jobCardCode});

  $ClientCopyWith<$Res>? get client;
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res, $Val extends Quote>
    implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientName = freezed,
    Object? salesTeamReview = freezed,
    Object? client = freezed,
    Object? clientType = freezed,
    Object? template = freezed,
    Object? templateReceive = freezed,
    Object? templateResponse = freezed,
    Object? quoteFile = freezed,
    Object? receivedFile = freezed,
    Object? createdOn = freezed,
    Object? receivedFileName = freezed,
    Object? templateTypeName = freezed,
    Object? reoccurring = freezed,
    Object? recurringStatus = freezed,
    Object? isQuoteThroughRecurring = freezed,
    Object? parentQuoteId = freezed,
    Object? status = freezed,
    Object? frequency = freezed,
    Object? tabType = freezed,
    Object? createdBy = freezed,
    Object? invoiceAmount = freezed,
    Object? attachedFiles = freezed,
    Object? jobCardId = freezed,
    Object? wasteTypeStr = freezed,
    Object? typeOfWasteStrProfileName = freezed,
    Object? jobCardCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesTeamReview: freezed == salesTeamReview
          ? _value.salesTeamReview
          : salesTeamReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      clientType: freezed == clientType
          ? _value.clientType
          : clientType // ignore: cast_nullable_to_non_nullable
              as String?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      templateReceive: freezed == templateReceive
          ? _value.templateReceive
          : templateReceive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      templateResponse: freezed == templateResponse
          ? _value.templateResponse
          : templateResponse // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      quoteFile: freezed == quoteFile
          ? _value.quoteFile
          : quoteFile // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedFile: freezed == receivedFile
          ? _value.receivedFile
          : receivedFile // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedFileName: freezed == receivedFileName
          ? _value.receivedFileName
          : receivedFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      templateTypeName: freezed == templateTypeName
          ? _value.templateTypeName
          : templateTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      reoccurring: freezed == reoccurring
          ? _value.reoccurring
          : reoccurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      recurringStatus: freezed == recurringStatus
          ? _value.recurringStatus
          : recurringStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isQuoteThroughRecurring: freezed == isQuoteThroughRecurring
          ? _value.isQuoteThroughRecurring
          : isQuoteThroughRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      parentQuoteId: freezed == parentQuoteId
          ? _value.parentQuoteId
          : parentQuoteId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      tabType: freezed == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
      invoiceAmount: freezed == invoiceAmount
          ? _value.invoiceAmount
          : invoiceAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      attachedFiles: freezed == attachedFiles
          ? _value.attachedFiles
          : attachedFiles // ignore: cast_nullable_to_non_nullable
              as List<AttachedFile>?,
      jobCardId: freezed == jobCardId
          ? _value.jobCardId
          : jobCardId // ignore: cast_nullable_to_non_nullable
              as num?,
      wasteTypeStr: freezed == wasteTypeStr
          ? _value.wasteTypeStr
          : wasteTypeStr // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfWasteStrProfileName: freezed == typeOfWasteStrProfileName
          ? _value.typeOfWasteStrProfileName
          : typeOfWasteStrProfileName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jobCardCode: freezed == jobCardCode
          ? _value.jobCardCode
          : jobCardCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuoteImplCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$QuoteImplCopyWith(
          _$QuoteImpl value, $Res Function(_$QuoteImpl) then) =
      __$$QuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
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
      @JsonKey(name: 'is_quote_through_recurring')
      bool? isQuoteThroughRecurring,
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
      @JsonKey(name: 'job_card_code') String? jobCardCode});

  @override
  $ClientCopyWith<$Res>? get client;
  @override
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$QuoteImplCopyWithImpl<$Res>
    extends _$QuoteCopyWithImpl<$Res, _$QuoteImpl>
    implements _$$QuoteImplCopyWith<$Res> {
  __$$QuoteImplCopyWithImpl(
      _$QuoteImpl _value, $Res Function(_$QuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientName = freezed,
    Object? salesTeamReview = freezed,
    Object? client = freezed,
    Object? clientType = freezed,
    Object? template = freezed,
    Object? templateReceive = freezed,
    Object? templateResponse = freezed,
    Object? quoteFile = freezed,
    Object? receivedFile = freezed,
    Object? createdOn = freezed,
    Object? receivedFileName = freezed,
    Object? templateTypeName = freezed,
    Object? reoccurring = freezed,
    Object? recurringStatus = freezed,
    Object? isQuoteThroughRecurring = freezed,
    Object? parentQuoteId = freezed,
    Object? status = freezed,
    Object? frequency = freezed,
    Object? tabType = freezed,
    Object? createdBy = freezed,
    Object? invoiceAmount = freezed,
    Object? attachedFiles = freezed,
    Object? jobCardId = freezed,
    Object? wasteTypeStr = freezed,
    Object? typeOfWasteStrProfileName = freezed,
    Object? jobCardCode = freezed,
  }) {
    return _then(_$QuoteImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesTeamReview: freezed == salesTeamReview
          ? _value.salesTeamReview
          : salesTeamReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      clientType: freezed == clientType
          ? _value.clientType
          : clientType // ignore: cast_nullable_to_non_nullable
              as String?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      templateReceive: freezed == templateReceive
          ? _value.templateReceive
          : templateReceive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      templateResponse: freezed == templateResponse
          ? _value._templateResponse
          : templateResponse // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      quoteFile: freezed == quoteFile
          ? _value.quoteFile
          : quoteFile // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedFile: freezed == receivedFile
          ? _value.receivedFile
          : receivedFile // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedFileName: freezed == receivedFileName
          ? _value.receivedFileName
          : receivedFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      templateTypeName: freezed == templateTypeName
          ? _value.templateTypeName
          : templateTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      reoccurring: freezed == reoccurring
          ? _value.reoccurring
          : reoccurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      recurringStatus: freezed == recurringStatus
          ? _value.recurringStatus
          : recurringStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isQuoteThroughRecurring: freezed == isQuoteThroughRecurring
          ? _value.isQuoteThroughRecurring
          : isQuoteThroughRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      parentQuoteId: freezed == parentQuoteId
          ? _value.parentQuoteId
          : parentQuoteId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      tabType: freezed == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
      invoiceAmount: freezed == invoiceAmount
          ? _value.invoiceAmount
          : invoiceAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      attachedFiles: freezed == attachedFiles
          ? _value._attachedFiles
          : attachedFiles // ignore: cast_nullable_to_non_nullable
              as List<AttachedFile>?,
      jobCardId: freezed == jobCardId
          ? _value.jobCardId
          : jobCardId // ignore: cast_nullable_to_non_nullable
              as num?,
      wasteTypeStr: freezed == wasteTypeStr
          ? _value.wasteTypeStr
          : wasteTypeStr // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfWasteStrProfileName: freezed == typeOfWasteStrProfileName
          ? _value.typeOfWasteStrProfileName
          : typeOfWasteStrProfileName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jobCardCode: freezed == jobCardCode
          ? _value.jobCardCode
          : jobCardCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteImpl implements _Quote {
  _$QuoteImpl(
      {this.id,
      @JsonKey(name: 'client_name') this.clientName,
      @JsonKey(name: 'sales_team_review') this.salesTeamReview,
      this.client,
      @JsonKey(name: 'client_type') this.clientType,
      this.template,
      @JsonKey(name: 'template_receive') this.templateReceive,
      @JsonKey(name: 'template_response') final List<dynamic>? templateResponse,
      @JsonKey(name: 'quote_file') this.quoteFile,
      @JsonKey(name: 'received_file') this.receivedFile,
      @JsonKey(name: 'created_on') this.createdOn,
      @JsonKey(name: 'received_file_name') this.receivedFileName,
      @JsonKey(name: 'template_type_name') this.templateTypeName,
      this.reoccurring,
      @JsonKey(name: 'recurring_status') this.recurringStatus,
      @JsonKey(name: 'is_quote_through_recurring') this.isQuoteThroughRecurring,
      @JsonKey(name: 'parent_quote_id') this.parentQuoteId,
      this.status,
      this.frequency,
      @JsonKey(name: 'tab_type') this.tabType,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'invoice_amount') this.invoiceAmount,
      @JsonKey(name: 'attached_files') final List<AttachedFile>? attachedFiles,
      @JsonKey(name: 'job_card_id') this.jobCardId,
      @JsonKey(name: 'waste_type_str') this.wasteTypeStr,
      @JsonKey(name: 'type_of_waste_str_profile_name')
      this.typeOfWasteStrProfileName,
      @JsonKey(name: 'job_card_code') this.jobCardCode})
      : _templateResponse = templateResponse,
        _attachedFiles = attachedFiles;

  factory _$QuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteImplFromJson(json);

  @override
  final num? id;
  @override
  @JsonKey(name: 'client_name')
  final String? clientName;
  @override
  @JsonKey(name: 'sales_team_review')
  final bool? salesTeamReview;
  @override
  final Client? client;
  @override
  @JsonKey(name: 'client_type')
  final String? clientType;
  @override
  final String? template;
  @override
  @JsonKey(name: 'template_receive')
  final dynamic templateReceive;
  final List<dynamic>? _templateResponse;
  @override
  @JsonKey(name: 'template_response')
  List<dynamic>? get templateResponse {
    final value = _templateResponse;
    if (value == null) return null;
    if (_templateResponse is EqualUnmodifiableListView)
      return _templateResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'quote_file')
  final String? quoteFile;
  @override
  @JsonKey(name: 'received_file')
  final String? receivedFile;
  @override
  @JsonKey(name: 'created_on')
  final String? createdOn;
  @override
  @JsonKey(name: 'received_file_name')
  final String? receivedFileName;
  @override
  @JsonKey(name: 'template_type_name')
  final String? templateTypeName;
  @override
  final bool? reoccurring;
  @override
  @JsonKey(name: 'recurring_status')
  final String? recurringStatus;
  @override
  @JsonKey(name: 'is_quote_through_recurring')
  final bool? isQuoteThroughRecurring;
  @override
  @JsonKey(name: 'parent_quote_id')
  final dynamic parentQuoteId;
  @override
  final String? status;
  @override
  final String? frequency;
  @override
  @JsonKey(name: 'tab_type')
  final String? tabType;
  @override
  @JsonKey(name: 'created_by')
  final CreatedBy? createdBy;
  @override
  @JsonKey(name: 'invoice_amount')
  final String? invoiceAmount;
  final List<AttachedFile>? _attachedFiles;
  @override
  @JsonKey(name: 'attached_files')
  List<AttachedFile>? get attachedFiles {
    final value = _attachedFiles;
    if (value == null) return null;
    if (_attachedFiles is EqualUnmodifiableListView) return _attachedFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'job_card_id')
  final num? jobCardId;
  @override
  @JsonKey(name: 'waste_type_str')
  final String? wasteTypeStr;
  @override
  @JsonKey(name: 'type_of_waste_str_profile_name')
  final dynamic typeOfWasteStrProfileName;
  @override
  @JsonKey(name: 'job_card_code')
  final String? jobCardCode;

  @override
  String toString() {
    return 'Quote(id: $id, clientName: $clientName, salesTeamReview: $salesTeamReview, client: $client, clientType: $clientType, template: $template, templateReceive: $templateReceive, templateResponse: $templateResponse, quoteFile: $quoteFile, receivedFile: $receivedFile, createdOn: $createdOn, receivedFileName: $receivedFileName, templateTypeName: $templateTypeName, reoccurring: $reoccurring, recurringStatus: $recurringStatus, isQuoteThroughRecurring: $isQuoteThroughRecurring, parentQuoteId: $parentQuoteId, status: $status, frequency: $frequency, tabType: $tabType, createdBy: $createdBy, invoiceAmount: $invoiceAmount, attachedFiles: $attachedFiles, jobCardId: $jobCardId, wasteTypeStr: $wasteTypeStr, typeOfWasteStrProfileName: $typeOfWasteStrProfileName, jobCardCode: $jobCardCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.salesTeamReview, salesTeamReview) ||
                other.salesTeamReview == salesTeamReview) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.clientType, clientType) ||
                other.clientType == clientType) &&
            (identical(other.template, template) ||
                other.template == template) &&
            const DeepCollectionEquality()
                .equals(other.templateReceive, templateReceive) &&
            const DeepCollectionEquality()
                .equals(other._templateResponse, _templateResponse) &&
            (identical(other.quoteFile, quoteFile) ||
                other.quoteFile == quoteFile) &&
            (identical(other.receivedFile, receivedFile) ||
                other.receivedFile == receivedFile) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.receivedFileName, receivedFileName) ||
                other.receivedFileName == receivedFileName) &&
            (identical(other.templateTypeName, templateTypeName) ||
                other.templateTypeName == templateTypeName) &&
            (identical(other.reoccurring, reoccurring) ||
                other.reoccurring == reoccurring) &&
            (identical(other.recurringStatus, recurringStatus) ||
                other.recurringStatus == recurringStatus) &&
            (identical(
                    other.isQuoteThroughRecurring, isQuoteThroughRecurring) ||
                other.isQuoteThroughRecurring == isQuoteThroughRecurring) &&
            const DeepCollectionEquality()
                .equals(other.parentQuoteId, parentQuoteId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.tabType, tabType) || other.tabType == tabType) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.invoiceAmount, invoiceAmount) ||
                other.invoiceAmount == invoiceAmount) &&
            const DeepCollectionEquality()
                .equals(other._attachedFiles, _attachedFiles) &&
            (identical(other.jobCardId, jobCardId) ||
                other.jobCardId == jobCardId) &&
            (identical(other.wasteTypeStr, wasteTypeStr) ||
                other.wasteTypeStr == wasteTypeStr) &&
            const DeepCollectionEquality().equals(
                other.typeOfWasteStrProfileName, typeOfWasteStrProfileName) &&
            (identical(other.jobCardCode, jobCardCode) ||
                other.jobCardCode == jobCardCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        clientName,
        salesTeamReview,
        client,
        clientType,
        template,
        const DeepCollectionEquality().hash(templateReceive),
        const DeepCollectionEquality().hash(_templateResponse),
        quoteFile,
        receivedFile,
        createdOn,
        receivedFileName,
        templateTypeName,
        reoccurring,
        recurringStatus,
        isQuoteThroughRecurring,
        const DeepCollectionEquality().hash(parentQuoteId),
        status,
        frequency,
        tabType,
        createdBy,
        invoiceAmount,
        const DeepCollectionEquality().hash(_attachedFiles),
        jobCardId,
        wasteTypeStr,
        const DeepCollectionEquality().hash(typeOfWasteStrProfileName),
        jobCardCode
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      __$$QuoteImplCopyWithImpl<_$QuoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteImplToJson(
      this,
    );
  }
}

abstract class _Quote implements Quote {
  factory _Quote(
      {final num? id,
      @JsonKey(name: 'client_name') final String? clientName,
      @JsonKey(name: 'sales_team_review') final bool? salesTeamReview,
      final Client? client,
      @JsonKey(name: 'client_type') final String? clientType,
      final String? template,
      @JsonKey(name: 'template_receive') final dynamic templateReceive,
      @JsonKey(name: 'template_response') final List<dynamic>? templateResponse,
      @JsonKey(name: 'quote_file') final String? quoteFile,
      @JsonKey(name: 'received_file') final String? receivedFile,
      @JsonKey(name: 'created_on') final String? createdOn,
      @JsonKey(name: 'received_file_name') final String? receivedFileName,
      @JsonKey(name: 'template_type_name') final String? templateTypeName,
      final bool? reoccurring,
      @JsonKey(name: 'recurring_status') final String? recurringStatus,
      @JsonKey(name: 'is_quote_through_recurring')
      final bool? isQuoteThroughRecurring,
      @JsonKey(name: 'parent_quote_id') final dynamic parentQuoteId,
      final String? status,
      final String? frequency,
      @JsonKey(name: 'tab_type') final String? tabType,
      @JsonKey(name: 'created_by') final CreatedBy? createdBy,
      @JsonKey(name: 'invoice_amount') final String? invoiceAmount,
      @JsonKey(name: 'attached_files') final List<AttachedFile>? attachedFiles,
      @JsonKey(name: 'job_card_id') final num? jobCardId,
      @JsonKey(name: 'waste_type_str') final String? wasteTypeStr,
      @JsonKey(name: 'type_of_waste_str_profile_name')
      final dynamic typeOfWasteStrProfileName,
      @JsonKey(name: 'job_card_code') final String? jobCardCode}) = _$QuoteImpl;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$QuoteImpl.fromJson;

  @override
  num? get id;
  @override
  @JsonKey(name: 'client_name')
  String? get clientName;
  @override
  @JsonKey(name: 'sales_team_review')
  bool? get salesTeamReview;
  @override
  Client? get client;
  @override
  @JsonKey(name: 'client_type')
  String? get clientType;
  @override
  String? get template;
  @override
  @JsonKey(name: 'template_receive')
  dynamic get templateReceive;
  @override
  @JsonKey(name: 'template_response')
  List<dynamic>? get templateResponse;
  @override
  @JsonKey(name: 'quote_file')
  String? get quoteFile;
  @override
  @JsonKey(name: 'received_file')
  String? get receivedFile;
  @override
  @JsonKey(name: 'created_on')
  String? get createdOn;
  @override
  @JsonKey(name: 'received_file_name')
  String? get receivedFileName;
  @override
  @JsonKey(name: 'template_type_name')
  String? get templateTypeName;
  @override
  bool? get reoccurring;
  @override
  @JsonKey(name: 'recurring_status')
  String? get recurringStatus;
  @override
  @JsonKey(name: 'is_quote_through_recurring')
  bool? get isQuoteThroughRecurring;
  @override
  @JsonKey(name: 'parent_quote_id')
  dynamic get parentQuoteId;
  @override
  String? get status;
  @override
  String? get frequency;
  @override
  @JsonKey(name: 'tab_type')
  String? get tabType;
  @override
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy;
  @override
  @JsonKey(name: 'invoice_amount')
  String? get invoiceAmount;
  @override
  @JsonKey(name: 'attached_files')
  List<AttachedFile>? get attachedFiles;
  @override
  @JsonKey(name: 'job_card_id')
  num? get jobCardId;
  @override
  @JsonKey(name: 'waste_type_str')
  String? get wasteTypeStr;
  @override
  @JsonKey(name: 'type_of_waste_str_profile_name')
  dynamic get typeOfWasteStrProfileName;
  @override
  @JsonKey(name: 'job_card_code')
  String? get jobCardCode;
  @override
  @JsonKey(ignore: true)
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
