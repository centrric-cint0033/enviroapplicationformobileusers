// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamResModel _$TeamResModelFromJson(Map<String, dynamic> json) {
  return _TeamResModel.fromJson(json);
}

/// @nodoc
mixin _$TeamResModel {
  num? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  num? get employeeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'dp_thumbnail')
  String? get dpThumbnail => throw _privateConstructorUsedError;
  String? get dp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamResModelCopyWith<TeamResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamResModelCopyWith<$Res> {
  factory $TeamResModelCopyWith(
          TeamResModel value, $Res Function(TeamResModel) then) =
      _$TeamResModelCopyWithImpl<$Res, TeamResModel>;
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'employee_id') num? employeeId,
      String? name,
      @JsonKey(name: 'dp_thumbnail') String? dpThumbnail,
      String? dp});
}

/// @nodoc
class _$TeamResModelCopyWithImpl<$Res, $Val extends TeamResModel>
    implements $TeamResModelCopyWith<$Res> {
  _$TeamResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employeeId = freezed,
    Object? name = freezed,
    Object? dpThumbnail = freezed,
    Object? dp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dpThumbnail: freezed == dpThumbnail
          ? _value.dpThumbnail
          : dpThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      dp: freezed == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamResModelImplCopyWith<$Res>
    implements $TeamResModelCopyWith<$Res> {
  factory _$$TeamResModelImplCopyWith(
          _$TeamResModelImpl value, $Res Function(_$TeamResModelImpl) then) =
      __$$TeamResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'employee_id') num? employeeId,
      String? name,
      @JsonKey(name: 'dp_thumbnail') String? dpThumbnail,
      String? dp});
}

/// @nodoc
class __$$TeamResModelImplCopyWithImpl<$Res>
    extends _$TeamResModelCopyWithImpl<$Res, _$TeamResModelImpl>
    implements _$$TeamResModelImplCopyWith<$Res> {
  __$$TeamResModelImplCopyWithImpl(
      _$TeamResModelImpl _value, $Res Function(_$TeamResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employeeId = freezed,
    Object? name = freezed,
    Object? dpThumbnail = freezed,
    Object? dp = freezed,
  }) {
    return _then(_$TeamResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dpThumbnail: freezed == dpThumbnail
          ? _value.dpThumbnail
          : dpThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      dp: freezed == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamResModelImpl implements _TeamResModel {
  _$TeamResModelImpl(
      {this.id,
      @JsonKey(name: 'employee_id') this.employeeId,
      this.name,
      @JsonKey(name: 'dp_thumbnail') this.dpThumbnail,
      this.dp});

  factory _$TeamResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamResModelImplFromJson(json);

  @override
  final num? id;
  @override
  @JsonKey(name: 'employee_id')
  final num? employeeId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'dp_thumbnail')
  final String? dpThumbnail;
  @override
  final String? dp;

  @override
  String toString() {
    return 'TeamResModel(id: $id, employeeId: $employeeId, name: $name, dpThumbnail: $dpThumbnail, dp: $dp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dpThumbnail, dpThumbnail) ||
                other.dpThumbnail == dpThumbnail) &&
            (identical(other.dp, dp) || other.dp == dp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, employeeId, name, dpThumbnail, dp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamResModelImplCopyWith<_$TeamResModelImpl> get copyWith =>
      __$$TeamResModelImplCopyWithImpl<_$TeamResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamResModelImplToJson(
      this,
    );
  }
}

abstract class _TeamResModel implements TeamResModel {
  factory _TeamResModel(
      {final num? id,
      @JsonKey(name: 'employee_id') final num? employeeId,
      final String? name,
      @JsonKey(name: 'dp_thumbnail') final String? dpThumbnail,
      final String? dp}) = _$TeamResModelImpl;

  factory _TeamResModel.fromJson(Map<String, dynamic> json) =
      _$TeamResModelImpl.fromJson;

  @override
  num? get id;
  @override
  @JsonKey(name: 'employee_id')
  num? get employeeId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'dp_thumbnail')
  String? get dpThumbnail;
  @override
  String? get dp;
  @override
  @JsonKey(ignore: true)
  _$$TeamResModelImplCopyWith<_$TeamResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
