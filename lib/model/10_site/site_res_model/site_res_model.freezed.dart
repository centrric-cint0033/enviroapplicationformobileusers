// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SiteResModel _$SiteResModelFromJson(Map<String, dynamic> json) {
  return _SiteResModel.fromJson(json);
}

/// @nodoc
mixin _$SiteResModel {
  num? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_name')
  String? get clientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_type')
  String? get clientType => throw _privateConstructorUsedError;
  @JsonKey(name: 'dp_thumbnail')
  String? get dpThumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_address')
  String? get siteAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_purchase_no')
  dynamic get invoicePurchaseNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SiteResModelCopyWith<SiteResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteResModelCopyWith<$Res> {
  factory $SiteResModelCopyWith(
          SiteResModel value, $Res Function(SiteResModel) then) =
      _$SiteResModelCopyWithImpl<$Res, SiteResModel>;
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'client_name') String? clientName,
      @JsonKey(name: 'client_type') String? clientType,
      @JsonKey(name: 'dp_thumbnail') String? dpThumbnail,
      @JsonKey(name: 'site_address') String? siteAddress,
      @JsonKey(name: 'invoice_purchase_no') dynamic invoicePurchaseNo});
}

/// @nodoc
class _$SiteResModelCopyWithImpl<$Res, $Val extends SiteResModel>
    implements $SiteResModelCopyWith<$Res> {
  _$SiteResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientName = freezed,
    Object? clientType = freezed,
    Object? dpThumbnail = freezed,
    Object? siteAddress = freezed,
    Object? invoicePurchaseNo = freezed,
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
      clientType: freezed == clientType
          ? _value.clientType
          : clientType // ignore: cast_nullable_to_non_nullable
              as String?,
      dpThumbnail: freezed == dpThumbnail
          ? _value.dpThumbnail
          : dpThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      siteAddress: freezed == siteAddress
          ? _value.siteAddress
          : siteAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicePurchaseNo: freezed == invoicePurchaseNo
          ? _value.invoicePurchaseNo
          : invoicePurchaseNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiteResModelImplCopyWith<$Res>
    implements $SiteResModelCopyWith<$Res> {
  factory _$$SiteResModelImplCopyWith(
          _$SiteResModelImpl value, $Res Function(_$SiteResModelImpl) then) =
      __$$SiteResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'client_name') String? clientName,
      @JsonKey(name: 'client_type') String? clientType,
      @JsonKey(name: 'dp_thumbnail') String? dpThumbnail,
      @JsonKey(name: 'site_address') String? siteAddress,
      @JsonKey(name: 'invoice_purchase_no') dynamic invoicePurchaseNo});
}

/// @nodoc
class __$$SiteResModelImplCopyWithImpl<$Res>
    extends _$SiteResModelCopyWithImpl<$Res, _$SiteResModelImpl>
    implements _$$SiteResModelImplCopyWith<$Res> {
  __$$SiteResModelImplCopyWithImpl(
      _$SiteResModelImpl _value, $Res Function(_$SiteResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientName = freezed,
    Object? clientType = freezed,
    Object? dpThumbnail = freezed,
    Object? siteAddress = freezed,
    Object? invoicePurchaseNo = freezed,
  }) {
    return _then(_$SiteResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientType: freezed == clientType
          ? _value.clientType
          : clientType // ignore: cast_nullable_to_non_nullable
              as String?,
      dpThumbnail: freezed == dpThumbnail
          ? _value.dpThumbnail
          : dpThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      siteAddress: freezed == siteAddress
          ? _value.siteAddress
          : siteAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicePurchaseNo: freezed == invoicePurchaseNo
          ? _value.invoicePurchaseNo
          : invoicePurchaseNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteResModelImpl implements _SiteResModel {
  _$SiteResModelImpl(
      {this.id,
      @JsonKey(name: 'client_name') this.clientName,
      @JsonKey(name: 'client_type') this.clientType,
      @JsonKey(name: 'dp_thumbnail') this.dpThumbnail,
      @JsonKey(name: 'site_address') this.siteAddress,
      @JsonKey(name: 'invoice_purchase_no') this.invoicePurchaseNo});

  factory _$SiteResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteResModelImplFromJson(json);

  @override
  final num? id;
  @override
  @JsonKey(name: 'client_name')
  final String? clientName;
  @override
  @JsonKey(name: 'client_type')
  final String? clientType;
  @override
  @JsonKey(name: 'dp_thumbnail')
  final String? dpThumbnail;
  @override
  @JsonKey(name: 'site_address')
  final String? siteAddress;
  @override
  @JsonKey(name: 'invoice_purchase_no')
  final dynamic invoicePurchaseNo;

  @override
  String toString() {
    return 'SiteResModel(id: $id, clientName: $clientName, clientType: $clientType, dpThumbnail: $dpThumbnail, siteAddress: $siteAddress, invoicePurchaseNo: $invoicePurchaseNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.clientType, clientType) ||
                other.clientType == clientType) &&
            (identical(other.dpThumbnail, dpThumbnail) ||
                other.dpThumbnail == dpThumbnail) &&
            (identical(other.siteAddress, siteAddress) ||
                other.siteAddress == siteAddress) &&
            const DeepCollectionEquality()
                .equals(other.invoicePurchaseNo, invoicePurchaseNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientName,
      clientType,
      dpThumbnail,
      siteAddress,
      const DeepCollectionEquality().hash(invoicePurchaseNo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteResModelImplCopyWith<_$SiteResModelImpl> get copyWith =>
      __$$SiteResModelImplCopyWithImpl<_$SiteResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteResModelImplToJson(
      this,
    );
  }
}

abstract class _SiteResModel implements SiteResModel {
  factory _SiteResModel(
      {final num? id,
      @JsonKey(name: 'client_name') final String? clientName,
      @JsonKey(name: 'client_type') final String? clientType,
      @JsonKey(name: 'dp_thumbnail') final String? dpThumbnail,
      @JsonKey(name: 'site_address') final String? siteAddress,
      @JsonKey(name: 'invoice_purchase_no')
      final dynamic invoicePurchaseNo}) = _$SiteResModelImpl;

  factory _SiteResModel.fromJson(Map<String, dynamic> json) =
      _$SiteResModelImpl.fromJson;

  @override
  num? get id;
  @override
  @JsonKey(name: 'client_name')
  String? get clientName;
  @override
  @JsonKey(name: 'client_type')
  String? get clientType;
  @override
  @JsonKey(name: 'dp_thumbnail')
  String? get dpThumbnail;
  @override
  @JsonKey(name: 'site_address')
  String? get siteAddress;
  @override
  @JsonKey(name: 'invoice_purchase_no')
  dynamic get invoicePurchaseNo;
  @override
  @JsonKey(ignore: true)
  _$$SiteResModelImplCopyWith<_$SiteResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
