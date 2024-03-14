// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saleslist_resmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesJobListstRegResModel _$SalesJobListstRegResModelFromJson(
    Map<String, dynamic> json) {
  return _SalesJobListstRegResModel.fromJson(json);
}

/// @nodoc
mixin _$SalesJobListstRegResModel {
  int? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get client_name => throw _privateConstructorUsedError;
  String? get quoted_by => throw _privateConstructorUsedError;
  String? get paid_status => throw _privateConstructorUsedError;
  String? get paid_amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesJobListstRegResModelCopyWith<SalesJobListstRegResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesJobListstRegResModelCopyWith<$Res> {
  factory $SalesJobListstRegResModelCopyWith(SalesJobListstRegResModel value,
          $Res Function(SalesJobListstRegResModel) then) =
      _$SalesJobListstRegResModelCopyWithImpl<$Res, SalesJobListstRegResModel>;
  @useResult
  $Res call(
      {int? id,
      String? date,
      String? client_name,
      String? quoted_by,
      String? paid_status,
      String? paid_amount});
}

/// @nodoc
class _$SalesJobListstRegResModelCopyWithImpl<$Res,
        $Val extends SalesJobListstRegResModel>
    implements $SalesJobListstRegResModelCopyWith<$Res> {
  _$SalesJobListstRegResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? client_name = freezed,
    Object? quoted_by = freezed,
    Object? paid_status = freezed,
    Object? paid_amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      client_name: freezed == client_name
          ? _value.client_name
          : client_name // ignore: cast_nullable_to_non_nullable
              as String?,
      quoted_by: freezed == quoted_by
          ? _value.quoted_by
          : quoted_by // ignore: cast_nullable_to_non_nullable
              as String?,
      paid_status: freezed == paid_status
          ? _value.paid_status
          : paid_status // ignore: cast_nullable_to_non_nullable
              as String?,
      paid_amount: freezed == paid_amount
          ? _value.paid_amount
          : paid_amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesJobListstRegResModelImplCopyWith<$Res>
    implements $SalesJobListstRegResModelCopyWith<$Res> {
  factory _$$SalesJobListstRegResModelImplCopyWith(
          _$SalesJobListstRegResModelImpl value,
          $Res Function(_$SalesJobListstRegResModelImpl) then) =
      __$$SalesJobListstRegResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? date,
      String? client_name,
      String? quoted_by,
      String? paid_status,
      String? paid_amount});
}

/// @nodoc
class __$$SalesJobListstRegResModelImplCopyWithImpl<$Res>
    extends _$SalesJobListstRegResModelCopyWithImpl<$Res,
        _$SalesJobListstRegResModelImpl>
    implements _$$SalesJobListstRegResModelImplCopyWith<$Res> {
  __$$SalesJobListstRegResModelImplCopyWithImpl(
      _$SalesJobListstRegResModelImpl _value,
      $Res Function(_$SalesJobListstRegResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? client_name = freezed,
    Object? quoted_by = freezed,
    Object? paid_status = freezed,
    Object? paid_amount = freezed,
  }) {
    return _then(_$SalesJobListstRegResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      client_name: freezed == client_name
          ? _value.client_name
          : client_name // ignore: cast_nullable_to_non_nullable
              as String?,
      quoted_by: freezed == quoted_by
          ? _value.quoted_by
          : quoted_by // ignore: cast_nullable_to_non_nullable
              as String?,
      paid_status: freezed == paid_status
          ? _value.paid_status
          : paid_status // ignore: cast_nullable_to_non_nullable
              as String?,
      paid_amount: freezed == paid_amount
          ? _value.paid_amount
          : paid_amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesJobListstRegResModelImpl implements _SalesJobListstRegResModel {
  _$SalesJobListstRegResModelImpl(
      {this.id,
      this.date,
      this.client_name,
      this.quoted_by,
      this.paid_status,
      this.paid_amount});

  factory _$SalesJobListstRegResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesJobListstRegResModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? date;
  @override
  final String? client_name;
  @override
  final String? quoted_by;
  @override
  final String? paid_status;
  @override
  final String? paid_amount;

  @override
  String toString() {
    return 'SalesJobListstRegResModel(id: $id, date: $date, client_name: $client_name, quoted_by: $quoted_by, paid_status: $paid_status, paid_amount: $paid_amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesJobListstRegResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.client_name, client_name) ||
                other.client_name == client_name) &&
            (identical(other.quoted_by, quoted_by) ||
                other.quoted_by == quoted_by) &&
            (identical(other.paid_status, paid_status) ||
                other.paid_status == paid_status) &&
            (identical(other.paid_amount, paid_amount) ||
                other.paid_amount == paid_amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, date, client_name, quoted_by, paid_status, paid_amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesJobListstRegResModelImplCopyWith<_$SalesJobListstRegResModelImpl>
      get copyWith => __$$SalesJobListstRegResModelImplCopyWithImpl<
          _$SalesJobListstRegResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesJobListstRegResModelImplToJson(
      this,
    );
  }
}

abstract class _SalesJobListstRegResModel implements SalesJobListstRegResModel {
  factory _SalesJobListstRegResModel(
      {final int? id,
      final String? date,
      final String? client_name,
      final String? quoted_by,
      final String? paid_status,
      final String? paid_amount}) = _$SalesJobListstRegResModelImpl;

  factory _SalesJobListstRegResModel.fromJson(Map<String, dynamic> json) =
      _$SalesJobListstRegResModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get date;
  @override
  String? get client_name;
  @override
  String? get quoted_by;
  @override
  String? get paid_status;
  @override
  String? get paid_amount;
  @override
  @JsonKey(ignore: true)
  _$$SalesJobListstRegResModelImplCopyWith<_$SalesJobListstRegResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
