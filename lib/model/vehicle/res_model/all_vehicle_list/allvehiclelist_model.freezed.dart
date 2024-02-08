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
  List<Allvehiclepermission> get allVehiclePermission =>
      throw _privateConstructorUsedError;

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
  $Res call({List<Allvehiclepermission> allVehiclePermission});
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
    Object? allVehiclePermission = null,
  }) {
    return _then(_value.copyWith(
      allVehiclePermission: null == allVehiclePermission
          ? _value.allVehiclePermission
          : allVehiclePermission // ignore: cast_nullable_to_non_nullable
              as List<Allvehiclepermission>,
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
  $Res call({List<Allvehiclepermission> allVehiclePermission});
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
    Object? allVehiclePermission = null,
  }) {
    return _then(_$AllVehicleListModelImpl(
      allVehiclePermission: null == allVehiclePermission
          ? _value._allVehiclePermission
          : allVehiclePermission // ignore: cast_nullable_to_non_nullable
              as List<Allvehiclepermission>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllVehicleListModelImpl implements _AllVehicleListModel {
  _$AllVehicleListModelImpl(
      {required final List<Allvehiclepermission> allVehiclePermission})
      : _allVehiclePermission = allVehiclePermission;

  factory _$AllVehicleListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllVehicleListModelImplFromJson(json);

  final List<Allvehiclepermission> _allVehiclePermission;
  @override
  List<Allvehiclepermission> get allVehiclePermission {
    if (_allVehiclePermission is EqualUnmodifiableListView)
      return _allVehiclePermission;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allVehiclePermission);
  }

  @override
  String toString() {
    return 'AllVehicleListModel(allVehiclePermission: $allVehiclePermission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllVehicleListModelImpl &&
            const DeepCollectionEquality()
                .equals(other._allVehiclePermission, _allVehiclePermission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allVehiclePermission));

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
  factory _AllVehicleListModel(
          {required final List<Allvehiclepermission> allVehiclePermission}) =
      _$AllVehicleListModelImpl;

  factory _AllVehicleListModel.fromJson(Map<String, dynamic> json) =
      _$AllVehicleListModelImpl.fromJson;

  @override
  List<Allvehiclepermission> get allVehiclePermission;
  @override
  @JsonKey(ignore: true)
  _$$AllVehicleListModelImplCopyWith<_$AllVehicleListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
