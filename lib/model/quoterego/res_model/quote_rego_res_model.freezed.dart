// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_rego_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuoteRegResModel _$QuoteRegResModelFromJson(Map<String, dynamic> json) {
  return _QuoteRegResModel.fromJson(json);
}

/// @nodoc
mixin _$QuoteRegResModel {
  int? get id => throw _privateConstructorUsedError;
  String? get won_lose_status => throw _privateConstructorUsedError;
  int? get client => throw _privateConstructorUsedError;
  String? get created_by => throw _privateConstructorUsedError;
  String? get client_type => throw _privateConstructorUsedError;
  int? get schedule_id => throw _privateConstructorUsedError;
  String? get client_email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteRegResModelCopyWith<QuoteRegResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteRegResModelCopyWith<$Res> {
  factory $QuoteRegResModelCopyWith(
          QuoteRegResModel value, $Res Function(QuoteRegResModel) then) =
      _$QuoteRegResModelCopyWithImpl<$Res, QuoteRegResModel>;
  @useResult
  $Res call(
      {int? id,
      String? won_lose_status,
      int? client,
      String? created_by,
      String? client_type,
      int? schedule_id,
      String? client_email});
}

/// @nodoc
class _$QuoteRegResModelCopyWithImpl<$Res, $Val extends QuoteRegResModel>
    implements $QuoteRegResModelCopyWith<$Res> {
  _$QuoteRegResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? won_lose_status = freezed,
    Object? client = freezed,
    Object? created_by = freezed,
    Object? client_type = freezed,
    Object? schedule_id = freezed,
    Object? client_email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      won_lose_status: freezed == won_lose_status
          ? _value.won_lose_status
          : won_lose_status // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as int?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as String?,
      client_type: freezed == client_type
          ? _value.client_type
          : client_type // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule_id: freezed == schedule_id
          ? _value.schedule_id
          : schedule_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_email: freezed == client_email
          ? _value.client_email
          : client_email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteRegResModelImplCopyWith<$Res>
    implements $QuoteRegResModelCopyWith<$Res> {
  factory _$$QuoteRegResModelImplCopyWith(_$QuoteRegResModelImpl value,
          $Res Function(_$QuoteRegResModelImpl) then) =
      __$$QuoteRegResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? won_lose_status,
      int? client,
      String? created_by,
      String? client_type,
      int? schedule_id,
      String? client_email});
}

/// @nodoc
class __$$QuoteRegResModelImplCopyWithImpl<$Res>
    extends _$QuoteRegResModelCopyWithImpl<$Res, _$QuoteRegResModelImpl>
    implements _$$QuoteRegResModelImplCopyWith<$Res> {
  __$$QuoteRegResModelImplCopyWithImpl(_$QuoteRegResModelImpl _value,
      $Res Function(_$QuoteRegResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? won_lose_status = freezed,
    Object? client = freezed,
    Object? created_by = freezed,
    Object? client_type = freezed,
    Object? schedule_id = freezed,
    Object? client_email = freezed,
  }) {
    return _then(_$QuoteRegResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      won_lose_status: freezed == won_lose_status
          ? _value.won_lose_status
          : won_lose_status // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as int?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as String?,
      client_type: freezed == client_type
          ? _value.client_type
          : client_type // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule_id: freezed == schedule_id
          ? _value.schedule_id
          : schedule_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_email: freezed == client_email
          ? _value.client_email
          : client_email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteRegResModelImpl implements _QuoteRegResModel {
  _$QuoteRegResModelImpl(
      {this.id,
      this.won_lose_status,
      this.client,
      this.created_by,
      this.client_type,
      this.schedule_id,
      this.client_email});

  factory _$QuoteRegResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteRegResModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? won_lose_status;
  @override
  final int? client;
  @override
  final String? created_by;
  @override
  final String? client_type;
  @override
  final int? schedule_id;
  @override
  final String? client_email;

  @override
  String toString() {
    return 'QuoteRegResModel(id: $id, won_lose_status: $won_lose_status, client: $client, created_by: $created_by, client_type: $client_type, schedule_id: $schedule_id, client_email: $client_email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteRegResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.won_lose_status, won_lose_status) ||
                other.won_lose_status == won_lose_status) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.created_by, created_by) ||
                other.created_by == created_by) &&
            (identical(other.client_type, client_type) ||
                other.client_type == client_type) &&
            (identical(other.schedule_id, schedule_id) ||
                other.schedule_id == schedule_id) &&
            (identical(other.client_email, client_email) ||
                other.client_email == client_email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, won_lose_status, client,
      created_by, client_type, schedule_id, client_email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteRegResModelImplCopyWith<_$QuoteRegResModelImpl> get copyWith =>
      __$$QuoteRegResModelImplCopyWithImpl<_$QuoteRegResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteRegResModelImplToJson(
      this,
    );
  }
}

abstract class _QuoteRegResModel implements QuoteRegResModel {
  factory _QuoteRegResModel(
      {final int? id,
      final String? won_lose_status,
      final int? client,
      final String? created_by,
      final String? client_type,
      final int? schedule_id,
      final String? client_email}) = _$QuoteRegResModelImpl;

  factory _QuoteRegResModel.fromJson(Map<String, dynamic> json) =
      _$QuoteRegResModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get won_lose_status;
  @override
  int? get client;
  @override
  String? get created_by;
  @override
  String? get client_type;
  @override
  int? get schedule_id;
  @override
  String? get client_email;
  @override
  @JsonKey(ignore: true)
  _$$QuoteRegResModelImplCopyWith<_$QuoteRegResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
