// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_of_clients_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NumberOfClientsResModel _$NumberOfClientsResModelFromJson(
    Map<String, dynamic> json) {
  return _NumberOfClientsResModel.fromJson(json);
}

/// @nodoc
mixin _$NumberOfClientsResModel {
  @JsonKey(name: 'total_permanent_clients')
  num? get totalPermanentClients => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_temp_clients')
  num? get totalTempClients => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_deleted_clients')
  num? get totalDeletedClients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberOfClientsResModelCopyWith<NumberOfClientsResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberOfClientsResModelCopyWith<$Res> {
  factory $NumberOfClientsResModelCopyWith(NumberOfClientsResModel value,
          $Res Function(NumberOfClientsResModel) then) =
      _$NumberOfClientsResModelCopyWithImpl<$Res, NumberOfClientsResModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_permanent_clients') num? totalPermanentClients,
      @JsonKey(name: 'total_temp_clients') num? totalTempClients,
      @JsonKey(name: 'total_deleted_clients') num? totalDeletedClients});
}

/// @nodoc
class _$NumberOfClientsResModelCopyWithImpl<$Res,
        $Val extends NumberOfClientsResModel>
    implements $NumberOfClientsResModelCopyWith<$Res> {
  _$NumberOfClientsResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPermanentClients = freezed,
    Object? totalTempClients = freezed,
    Object? totalDeletedClients = freezed,
  }) {
    return _then(_value.copyWith(
      totalPermanentClients: freezed == totalPermanentClients
          ? _value.totalPermanentClients
          : totalPermanentClients // ignore: cast_nullable_to_non_nullable
              as num?,
      totalTempClients: freezed == totalTempClients
          ? _value.totalTempClients
          : totalTempClients // ignore: cast_nullable_to_non_nullable
              as num?,
      totalDeletedClients: freezed == totalDeletedClients
          ? _value.totalDeletedClients
          : totalDeletedClients // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NumberOfClientsResModelImplCopyWith<$Res>
    implements $NumberOfClientsResModelCopyWith<$Res> {
  factory _$$NumberOfClientsResModelImplCopyWith(
          _$NumberOfClientsResModelImpl value,
          $Res Function(_$NumberOfClientsResModelImpl) then) =
      __$$NumberOfClientsResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_permanent_clients') num? totalPermanentClients,
      @JsonKey(name: 'total_temp_clients') num? totalTempClients,
      @JsonKey(name: 'total_deleted_clients') num? totalDeletedClients});
}

/// @nodoc
class __$$NumberOfClientsResModelImplCopyWithImpl<$Res>
    extends _$NumberOfClientsResModelCopyWithImpl<$Res,
        _$NumberOfClientsResModelImpl>
    implements _$$NumberOfClientsResModelImplCopyWith<$Res> {
  __$$NumberOfClientsResModelImplCopyWithImpl(
      _$NumberOfClientsResModelImpl _value,
      $Res Function(_$NumberOfClientsResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPermanentClients = freezed,
    Object? totalTempClients = freezed,
    Object? totalDeletedClients = freezed,
  }) {
    return _then(_$NumberOfClientsResModelImpl(
      totalPermanentClients: freezed == totalPermanentClients
          ? _value.totalPermanentClients
          : totalPermanentClients // ignore: cast_nullable_to_non_nullable
              as num?,
      totalTempClients: freezed == totalTempClients
          ? _value.totalTempClients
          : totalTempClients // ignore: cast_nullable_to_non_nullable
              as num?,
      totalDeletedClients: freezed == totalDeletedClients
          ? _value.totalDeletedClients
          : totalDeletedClients // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberOfClientsResModelImpl implements _NumberOfClientsResModel {
  _$NumberOfClientsResModelImpl(
      {@JsonKey(name: 'total_permanent_clients') this.totalPermanentClients,
      @JsonKey(name: 'total_temp_clients') this.totalTempClients,
      @JsonKey(name: 'total_deleted_clients') this.totalDeletedClients});

  factory _$NumberOfClientsResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberOfClientsResModelImplFromJson(json);

  @override
  @JsonKey(name: 'total_permanent_clients')
  final num? totalPermanentClients;
  @override
  @JsonKey(name: 'total_temp_clients')
  final num? totalTempClients;
  @override
  @JsonKey(name: 'total_deleted_clients')
  final num? totalDeletedClients;

  @override
  String toString() {
    return 'NumberOfClientsResModel(totalPermanentClients: $totalPermanentClients, totalTempClients: $totalTempClients, totalDeletedClients: $totalDeletedClients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberOfClientsResModelImpl &&
            (identical(other.totalPermanentClients, totalPermanentClients) ||
                other.totalPermanentClients == totalPermanentClients) &&
            (identical(other.totalTempClients, totalTempClients) ||
                other.totalTempClients == totalTempClients) &&
            (identical(other.totalDeletedClients, totalDeletedClients) ||
                other.totalDeletedClients == totalDeletedClients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalPermanentClients,
      totalTempClients, totalDeletedClients);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberOfClientsResModelImplCopyWith<_$NumberOfClientsResModelImpl>
      get copyWith => __$$NumberOfClientsResModelImplCopyWithImpl<
          _$NumberOfClientsResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberOfClientsResModelImplToJson(
      this,
    );
  }
}

abstract class _NumberOfClientsResModel implements NumberOfClientsResModel {
  factory _NumberOfClientsResModel(
      {@JsonKey(name: 'total_permanent_clients')
      final num? totalPermanentClients,
      @JsonKey(name: 'total_temp_clients') final num? totalTempClients,
      @JsonKey(name: 'total_deleted_clients')
      final num? totalDeletedClients}) = _$NumberOfClientsResModelImpl;

  factory _NumberOfClientsResModel.fromJson(Map<String, dynamic> json) =
      _$NumberOfClientsResModelImpl.fromJson;

  @override
  @JsonKey(name: 'total_permanent_clients')
  num? get totalPermanentClients;
  @override
  @JsonKey(name: 'total_temp_clients')
  num? get totalTempClients;
  @override
  @JsonKey(name: 'total_deleted_clients')
  num? get totalDeletedClients;
  @override
  @JsonKey(ignore: true)
  _$$NumberOfClientsResModelImplCopyWith<_$NumberOfClientsResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
