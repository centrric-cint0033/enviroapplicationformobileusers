// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folder_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FolderResModel _$FolderResModelFromJson(Map<String, dynamic> json) {
  return _FolderResModel.fromJson(json);
}

/// @nodoc
mixin _$FolderResModel {
  List<FolderListModel>? get folders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderResModelCopyWith<FolderResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderResModelCopyWith<$Res> {
  factory $FolderResModelCopyWith(
          FolderResModel value, $Res Function(FolderResModel) then) =
      _$FolderResModelCopyWithImpl<$Res, FolderResModel>;
  @useResult
  $Res call({List<FolderListModel>? folders});
}

/// @nodoc
class _$FolderResModelCopyWithImpl<$Res, $Val extends FolderResModel>
    implements $FolderResModelCopyWith<$Res> {
  _$FolderResModelCopyWithImpl(this._value, this._then);

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
              as List<FolderListModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderResModelImplCopyWith<$Res>
    implements $FolderResModelCopyWith<$Res> {
  factory _$$FolderResModelImplCopyWith(_$FolderResModelImpl value,
          $Res Function(_$FolderResModelImpl) then) =
      __$$FolderResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FolderListModel>? folders});
}

/// @nodoc
class __$$FolderResModelImplCopyWithImpl<$Res>
    extends _$FolderResModelCopyWithImpl<$Res, _$FolderResModelImpl>
    implements _$$FolderResModelImplCopyWith<$Res> {
  __$$FolderResModelImplCopyWithImpl(
      _$FolderResModelImpl _value, $Res Function(_$FolderResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = freezed,
  }) {
    return _then(_$FolderResModelImpl(
      folders: freezed == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderListModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderResModelImpl implements _FolderResModel {
  _$FolderResModelImpl({final List<FolderListModel>? folders})
      : _folders = folders;

  factory _$FolderResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderResModelImplFromJson(json);

  final List<FolderListModel>? _folders;
  @override
  List<FolderListModel>? get folders {
    final value = _folders;
    if (value == null) return null;
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FolderResModel(folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderResModelImpl &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_folders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderResModelImplCopyWith<_$FolderResModelImpl> get copyWith =>
      __$$FolderResModelImplCopyWithImpl<_$FolderResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderResModelImplToJson(
      this,
    );
  }
}

abstract class _FolderResModel implements FolderResModel {
  factory _FolderResModel({final List<FolderListModel>? folders}) =
      _$FolderResModelImpl;

  factory _FolderResModel.fromJson(Map<String, dynamic> json) =
      _$FolderResModelImpl.fromJson;

  @override
  List<FolderListModel>? get folders;
  @override
  @JsonKey(ignore: true)
  _$$FolderResModelImplCopyWith<_$FolderResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FolderListModel _$FolderListModelFromJson(Map<String, dynamic> json) {
  return _FolderListModel.fromJson(json);
}

/// @nodoc
mixin _$FolderListModel {
  String? get type => throw _privateConstructorUsedError;
  List<dynamic>? get files => throw _privateConstructorUsedError;
  List<Folder>? get folders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderListModelCopyWith<FolderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderListModelCopyWith<$Res> {
  factory $FolderListModelCopyWith(
          FolderListModel value, $Res Function(FolderListModel) then) =
      _$FolderListModelCopyWithImpl<$Res, FolderListModel>;
  @useResult
  $Res call({String? type, List<dynamic>? files, List<Folder>? folders});
}

/// @nodoc
class _$FolderListModelCopyWithImpl<$Res, $Val extends FolderListModel>
    implements $FolderListModelCopyWith<$Res> {
  _$FolderListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? files = freezed,
    Object? folders = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      folders: freezed == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<Folder>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderListModelImplCopyWith<$Res>
    implements $FolderListModelCopyWith<$Res> {
  factory _$$FolderListModelImplCopyWith(_$FolderListModelImpl value,
          $Res Function(_$FolderListModelImpl) then) =
      __$$FolderListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, List<dynamic>? files, List<Folder>? folders});
}

/// @nodoc
class __$$FolderListModelImplCopyWithImpl<$Res>
    extends _$FolderListModelCopyWithImpl<$Res, _$FolderListModelImpl>
    implements _$$FolderListModelImplCopyWith<$Res> {
  __$$FolderListModelImplCopyWithImpl(
      _$FolderListModelImpl _value, $Res Function(_$FolderListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? files = freezed,
    Object? folders = freezed,
  }) {
    return _then(_$FolderListModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      folders: freezed == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<Folder>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderListModelImpl implements _FolderListModel {
  _$FolderListModelImpl(
      {this.type, final List<dynamic>? files, final List<Folder>? folders})
      : _files = files,
        _folders = folders;

  factory _$FolderListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderListModelImplFromJson(json);

  @override
  final String? type;
  final List<dynamic>? _files;
  @override
  List<dynamic>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'FolderListModel(type: $type, files: $files, folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderListModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_folders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderListModelImplCopyWith<_$FolderListModelImpl> get copyWith =>
      __$$FolderListModelImplCopyWithImpl<_$FolderListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderListModelImplToJson(
      this,
    );
  }
}

abstract class _FolderListModel implements FolderListModel {
  factory _FolderListModel(
      {final String? type,
      final List<dynamic>? files,
      final List<Folder>? folders}) = _$FolderListModelImpl;

  factory _FolderListModel.fromJson(Map<String, dynamic> json) =
      _$FolderListModelImpl.fromJson;

  @override
  String? get type;
  @override
  List<dynamic>? get files;
  @override
  List<Folder>? get folders;
  @override
  @JsonKey(ignore: true)
  _$$FolderListModelImplCopyWith<_$FolderListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Folder _$FolderFromJson(Map<String, dynamic> json) {
  return _Folder.fromJson(json);
}

/// @nodoc
mixin _$Folder {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderCopyWith<Folder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderCopyWith<$Res> {
  factory $FolderCopyWith(Folder value, $Res Function(Folder) then) =
      _$FolderCopyWithImpl<$Res, Folder>;
  @useResult
  $Res call({int? id, String? name, String? type});
}

/// @nodoc
class _$FolderCopyWithImpl<$Res, $Val extends Folder>
    implements $FolderCopyWith<$Res> {
  _$FolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderImplCopyWith<$Res> implements $FolderCopyWith<$Res> {
  factory _$$FolderImplCopyWith(
          _$FolderImpl value, $Res Function(_$FolderImpl) then) =
      __$$FolderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? type});
}

/// @nodoc
class __$$FolderImplCopyWithImpl<$Res>
    extends _$FolderCopyWithImpl<$Res, _$FolderImpl>
    implements _$$FolderImplCopyWith<$Res> {
  __$$FolderImplCopyWithImpl(
      _$FolderImpl _value, $Res Function(_$FolderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$FolderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderImpl implements _Folder {
  _$FolderImpl({this.id, this.name, this.type});

  factory _$FolderImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;

  @override
  String toString() {
    return 'Folder(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderImplCopyWith<_$FolderImpl> get copyWith =>
      __$$FolderImplCopyWithImpl<_$FolderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderImplToJson(
      this,
    );
  }
}

abstract class _Folder implements Folder {
  factory _Folder({final int? id, final String? name, final String? type}) =
      _$FolderImpl;

  factory _Folder.fromJson(Map<String, dynamic> json) = _$FolderImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$FolderImplCopyWith<_$FolderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
