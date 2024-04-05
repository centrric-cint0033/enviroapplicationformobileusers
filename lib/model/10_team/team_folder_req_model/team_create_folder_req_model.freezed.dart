// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_create_folder_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamCreateFolderReqModel _$TeamCreateFolderReqModelFromJson(
    Map<String, dynamic> json) {
  return _TeamCreateFolderReqModel.fromJson(json);
}

/// @nodoc
mixin _$TeamCreateFolderReqModel {
  String? get name => throw _privateConstructorUsedError;
  num? get employee => throw _privateConstructorUsedError;
  int? get parent_folder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCreateFolderReqModelCopyWith<TeamCreateFolderReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCreateFolderReqModelCopyWith<$Res> {
  factory $TeamCreateFolderReqModelCopyWith(TeamCreateFolderReqModel value,
          $Res Function(TeamCreateFolderReqModel) then) =
      _$TeamCreateFolderReqModelCopyWithImpl<$Res, TeamCreateFolderReqModel>;
  @useResult
  $Res call({String? name, num? employee, int? parent_folder});
}

/// @nodoc
class _$TeamCreateFolderReqModelCopyWithImpl<$Res,
        $Val extends TeamCreateFolderReqModel>
    implements $TeamCreateFolderReqModelCopyWith<$Res> {
  _$TeamCreateFolderReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? employee = freezed,
    Object? parent_folder = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as num?,
      parent_folder: freezed == parent_folder
          ? _value.parent_folder
          : parent_folder // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamCreateFolderReqModelImplCopyWith<$Res>
    implements $TeamCreateFolderReqModelCopyWith<$Res> {
  factory _$$TeamCreateFolderReqModelImplCopyWith(
          _$TeamCreateFolderReqModelImpl value,
          $Res Function(_$TeamCreateFolderReqModelImpl) then) =
      __$$TeamCreateFolderReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, num? employee, int? parent_folder});
}

/// @nodoc
class __$$TeamCreateFolderReqModelImplCopyWithImpl<$Res>
    extends _$TeamCreateFolderReqModelCopyWithImpl<$Res,
        _$TeamCreateFolderReqModelImpl>
    implements _$$TeamCreateFolderReqModelImplCopyWith<$Res> {
  __$$TeamCreateFolderReqModelImplCopyWithImpl(
      _$TeamCreateFolderReqModelImpl _value,
      $Res Function(_$TeamCreateFolderReqModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? employee = freezed,
    Object? parent_folder = freezed,
  }) {
    return _then(_$TeamCreateFolderReqModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as num?,
      parent_folder: freezed == parent_folder
          ? _value.parent_folder
          : parent_folder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamCreateFolderReqModelImpl implements _TeamCreateFolderReqModel {
  _$TeamCreateFolderReqModelImpl(
      {required this.name,
      required this.employee,
      required this.parent_folder});

  factory _$TeamCreateFolderReqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamCreateFolderReqModelImplFromJson(json);

  @override
  final String? name;
  @override
  final num? employee;
  @override
  final int? parent_folder;

  @override
  String toString() {
    return 'TeamCreateFolderReqModel(name: $name, employee: $employee, parent_folder: $parent_folder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamCreateFolderReqModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.parent_folder, parent_folder) ||
                other.parent_folder == parent_folder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, employee, parent_folder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamCreateFolderReqModelImplCopyWith<_$TeamCreateFolderReqModelImpl>
      get copyWith => __$$TeamCreateFolderReqModelImplCopyWithImpl<
          _$TeamCreateFolderReqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamCreateFolderReqModelImplToJson(
      this,
    );
  }
}

abstract class _TeamCreateFolderReqModel implements TeamCreateFolderReqModel {
  factory _TeamCreateFolderReqModel(
      {required final String? name,
      required final num? employee,
      required final int? parent_folder}) = _$TeamCreateFolderReqModelImpl;

  factory _TeamCreateFolderReqModel.fromJson(Map<String, dynamic> json) =
      _$TeamCreateFolderReqModelImpl.fromJson;

  @override
  String? get name;
  @override
  num? get employee;
  @override
  int? get parent_folder;
  @override
  @JsonKey(ignore: true)
  _$$TeamCreateFolderReqModelImplCopyWith<_$TeamCreateFolderReqModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
