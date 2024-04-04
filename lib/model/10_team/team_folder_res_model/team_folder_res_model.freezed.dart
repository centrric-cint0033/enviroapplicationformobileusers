// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_folder_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamFolderResModel _$TeamFolderResModelFromJson(Map<String, dynamic> json) {
  return _TeamFolderResModel.fromJson(json);
}

/// @nodoc
mixin _$TeamFolderResModel {
  List<Folder>? get folders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamFolderResModelCopyWith<TeamFolderResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamFolderResModelCopyWith<$Res> {
  factory $TeamFolderResModelCopyWith(
          TeamFolderResModel value, $Res Function(TeamFolderResModel) then) =
      _$TeamFolderResModelCopyWithImpl<$Res, TeamFolderResModel>;
  @useResult
  $Res call({List<Folder>? folders});
}

/// @nodoc
class _$TeamFolderResModelCopyWithImpl<$Res, $Val extends TeamFolderResModel>
    implements $TeamFolderResModelCopyWith<$Res> {
  _$TeamFolderResModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TeamFolderResModelImplCopyWith<$Res>
    implements $TeamFolderResModelCopyWith<$Res> {
  factory _$$TeamFolderResModelImplCopyWith(_$TeamFolderResModelImpl value,
          $Res Function(_$TeamFolderResModelImpl) then) =
      __$$TeamFolderResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Folder>? folders});
}

/// @nodoc
class __$$TeamFolderResModelImplCopyWithImpl<$Res>
    extends _$TeamFolderResModelCopyWithImpl<$Res, _$TeamFolderResModelImpl>
    implements _$$TeamFolderResModelImplCopyWith<$Res> {
  __$$TeamFolderResModelImplCopyWithImpl(_$TeamFolderResModelImpl _value,
      $Res Function(_$TeamFolderResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = freezed,
  }) {
    return _then(_$TeamFolderResModelImpl(
      folders: freezed == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<Folder>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamFolderResModelImpl implements _TeamFolderResModel {
  _$TeamFolderResModelImpl({final List<Folder>? folders}) : _folders = folders;

  factory _$TeamFolderResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamFolderResModelImplFromJson(json);

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
    return 'TeamFolderResModel(folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamFolderResModelImpl &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_folders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamFolderResModelImplCopyWith<_$TeamFolderResModelImpl> get copyWith =>
      __$$TeamFolderResModelImplCopyWithImpl<_$TeamFolderResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamFolderResModelImplToJson(
      this,
    );
  }
}

abstract class _TeamFolderResModel implements TeamFolderResModel {
  factory _TeamFolderResModel({final List<Folder>? folders}) =
      _$TeamFolderResModelImpl;

  factory _TeamFolderResModel.fromJson(Map<String, dynamic> json) =
      _$TeamFolderResModelImpl.fromJson;

  @override
  List<Folder>? get folders;
  @override
  @JsonKey(ignore: true)
  _$$TeamFolderResModelImplCopyWith<_$TeamFolderResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
