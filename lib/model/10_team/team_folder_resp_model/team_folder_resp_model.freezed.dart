// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_folder_resp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamFolderRespModel _$TeamFolderRespModelFromJson(Map<String, dynamic> json) {
  return _TeamFolderRespModel.fromJson(json);
}

/// @nodoc
mixin _$TeamFolderRespModel {
  List<Folder>? get folders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamFolderRespModelCopyWith<TeamFolderRespModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamFolderRespModelCopyWith<$Res> {
  factory $TeamFolderRespModelCopyWith(
          TeamFolderRespModel value, $Res Function(TeamFolderRespModel) then) =
      _$TeamFolderRespModelCopyWithImpl<$Res, TeamFolderRespModel>;
  @useResult
  $Res call({List<Folder>? folders});
}

/// @nodoc
class _$TeamFolderRespModelCopyWithImpl<$Res, $Val extends TeamFolderRespModel>
    implements $TeamFolderRespModelCopyWith<$Res> {
  _$TeamFolderRespModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = freezed,
  }) {
    return _then(_value.copyWith(
      folders: freezed == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<Folder>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamFolderRespModelImplCopyWith<$Res>
    implements $TeamFolderRespModelCopyWith<$Res> {
  factory _$$TeamFolderRespModelImplCopyWith(_$TeamFolderRespModelImpl value,
          $Res Function(_$TeamFolderRespModelImpl) then) =
      __$$TeamFolderRespModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Folder>? folders});
}

/// @nodoc
class __$$TeamFolderRespModelImplCopyWithImpl<$Res>
    extends _$TeamFolderRespModelCopyWithImpl<$Res, _$TeamFolderRespModelImpl>
    implements _$$TeamFolderRespModelImplCopyWith<$Res> {
  __$$TeamFolderRespModelImplCopyWithImpl(_$TeamFolderRespModelImpl _value,
      $Res Function(_$TeamFolderRespModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = freezed,
  }) {
    return _then(_$TeamFolderRespModelImpl(
      folders: freezed == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<Folder>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamFolderRespModelImpl implements _TeamFolderRespModel {
  _$TeamFolderRespModelImpl({final List<Folder>? folders}) : _folders = folders;

  factory _$TeamFolderRespModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamFolderRespModelImplFromJson(json);

  final List<Folder>? _folders;
  @override
  List<Folder>? get folders {
    final value = _folders;
    if (value == null) return null;
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TeamFolderRespModel(folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamFolderRespModelImpl &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_folders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamFolderRespModelImplCopyWith<_$TeamFolderRespModelImpl> get copyWith =>
      __$$TeamFolderRespModelImplCopyWithImpl<_$TeamFolderRespModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamFolderRespModelImplToJson(
      this,
    );
  }
}

abstract class _TeamFolderRespModel implements TeamFolderRespModel {
  factory _TeamFolderRespModel({final List<Folder>? folders}) =
      _$TeamFolderRespModelImpl;

  factory _TeamFolderRespModel.fromJson(Map<String, dynamic> json) =
      _$TeamFolderRespModelImpl.fromJson;

  @override
  List<Folder>? get folders;
  @override
  @JsonKey(ignore: true)
  _$$TeamFolderRespModelImplCopyWith<_$TeamFolderRespModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
