// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salesresp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesListResModel _$SalesListResModelFromJson(Map<String, dynamic> json) {
  return _SalesListResModel.fromJson(json);
}

/// @nodoc
mixin _$SalesListResModel {
  String get name => throw _privateConstructorUsedError;
  int get won => throw _privateConstructorUsedError;
  int get lost => throw _privateConstructorUsedError;
  int get pending => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get profile => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesListResModelCopyWith<SalesListResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesListResModelCopyWith<$Res> {
  factory $SalesListResModelCopyWith(
          SalesListResModel value, $Res Function(SalesListResModel) then) =
      _$SalesListResModelCopyWithImpl<$Res, SalesListResModel>;
  @useResult
  $Res call(
      {String name,
      int won,
      int lost,
      int pending,
      int total,
      String profile,
      int id});
}

/// @nodoc
class _$SalesListResModelCopyWithImpl<$Res, $Val extends SalesListResModel>
    implements $SalesListResModelCopyWith<$Res> {
  _$SalesListResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? won = null,
    Object? lost = null,
    Object? pending = null,
    Object? total = null,
    Object? profile = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      won: null == won
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as int,
      lost: null == lost
          ? _value.lost
          : lost // ignore: cast_nullable_to_non_nullable
              as int,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesListResModelImplCopyWith<$Res>
    implements $SalesListResModelCopyWith<$Res> {
  factory _$$SalesListResModelImplCopyWith(_$SalesListResModelImpl value,
          $Res Function(_$SalesListResModelImpl) then) =
      __$$SalesListResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int won,
      int lost,
      int pending,
      int total,
      String profile,
      int id});
}

/// @nodoc
class __$$SalesListResModelImplCopyWithImpl<$Res>
    extends _$SalesListResModelCopyWithImpl<$Res, _$SalesListResModelImpl>
    implements _$$SalesListResModelImplCopyWith<$Res> {
  __$$SalesListResModelImplCopyWithImpl(_$SalesListResModelImpl _value,
      $Res Function(_$SalesListResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? won = null,
    Object? lost = null,
    Object? pending = null,
    Object? total = null,
    Object? profile = null,
    Object? id = null,
  }) {
    return _then(_$SalesListResModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      won: null == won
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as int,
      lost: null == lost
          ? _value.lost
          : lost // ignore: cast_nullable_to_non_nullable
              as int,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesListResModelImpl implements _SalesListResModel {
  const _$SalesListResModelImpl(
      {required this.name,
      required this.won,
      required this.lost,
      required this.pending,
      required this.total,
      required this.profile,
      required this.id});

  factory _$SalesListResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesListResModelImplFromJson(json);

  @override
  final String name;
  @override
  final int won;
  @override
  final int lost;
  @override
  final int pending;
  @override
  final int total;
  @override
  final String profile;
  @override
  final int id;

  @override
  String toString() {
    return 'SalesListResModel(name: $name, won: $won, lost: $lost, pending: $pending, total: $total, profile: $profile, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesListResModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.won, won) || other.won == won) &&
            (identical(other.lost, lost) || other.lost == lost) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, won, lost, pending, total, profile, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesListResModelImplCopyWith<_$SalesListResModelImpl> get copyWith =>
      __$$SalesListResModelImplCopyWithImpl<_$SalesListResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesListResModelImplToJson(
      this,
    );
  }
}

abstract class _SalesListResModel implements SalesListResModel {
  const factory _SalesListResModel(
      {required final String name,
      required final int won,
      required final int lost,
      required final int pending,
      required final int total,
      required final String profile,
      required final int id}) = _$SalesListResModelImpl;

  factory _SalesListResModel.fromJson(Map<String, dynamic> json) =
      _$SalesListResModelImpl.fromJson;

  @override
  String get name;
  @override
  int get won;
  @override
  int get lost;
  @override
  int get pending;
  @override
  int get total;
  @override
  String get profile;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$SalesListResModelImplCopyWith<_$SalesListResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
