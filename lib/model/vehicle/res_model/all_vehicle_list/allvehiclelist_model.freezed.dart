// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allvehiclelist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllVehicleListModel _$AllVehicleListModelFromJson(Map<String, dynamic> json) {
  return _AllVehicleListModel.fromJson(json);
}

/// @nodoc
mixin _$AllVehicleListModel {
  int get id => throw _privateConstructorUsedError;
  String get registration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllVehicleListModelCopyWith<AllVehicleListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllVehicleListModelCopyWith<$Res> {
  factory $AllVehicleListModelCopyWith(
          AllVehicleListModel value, $Res Function(AllVehicleListModel) then) =
      _$AllVehicleListModelCopyWithImpl<$Res, AllVehicleListModel>;
  @useResult
  $Res call({int id, String registration});
}

/// @nodoc
class _$AllVehicleListModelCopyWithImpl<$Res, $Val extends AllVehicleListModel>
    implements $AllVehicleListModelCopyWith<$Res> {
  _$AllVehicleListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? registration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllVehicleListModelImplCopyWith<$Res>
    implements $AllVehicleListModelCopyWith<$Res> {
  factory _$$AllVehicleListModelImplCopyWith(_$AllVehicleListModelImpl value,
          $Res Function(_$AllVehicleListModelImpl) then) =
      __$$AllVehicleListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String registration});
}

/// @nodoc
class __$$AllVehicleListModelImplCopyWithImpl<$Res>
    extends _$AllVehicleListModelCopyWithImpl<$Res, _$AllVehicleListModelImpl>
    implements _$$AllVehicleListModelImplCopyWith<$Res> {
  __$$AllVehicleListModelImplCopyWithImpl(_$AllVehicleListModelImpl _value,
      $Res Function(_$AllVehicleListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? registration = null,
  }) {
    return _then(_$AllVehicleListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllVehicleListModelImpl implements _AllVehicleListModel {
  const _$AllVehicleListModelImpl(
      {required this.id, required this.registration});

  factory _$AllVehicleListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllVehicleListModelImplFromJson(json);

  @override
  final int id;
  @override
  final String registration;

  @override
  String toString() {
    return 'AllVehicleListModel(id: $id, registration: $registration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllVehicleListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.registration, registration) ||
                other.registration == registration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, registration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllVehicleListModelImplCopyWith<_$AllVehicleListModelImpl> get copyWith =>
      __$$AllVehicleListModelImplCopyWithImpl<_$AllVehicleListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllVehicleListModelImplToJson(
      this,
    );
  }
}

abstract class _AllVehicleListModel implements AllVehicleListModel {
  const factory _AllVehicleListModel(
      {required final int id,
      required final String registration}) = _$AllVehicleListModelImpl;

  factory _AllVehicleListModel.fromJson(Map<String, dynamic> json) =
      _$AllVehicleListModelImpl.fromJson;

  @override
  int get id;
  @override
  String get registration;
  @override
  @JsonKey(ignore: true)
  _$$AllVehicleListModelImplCopyWith<_$AllVehicleListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
