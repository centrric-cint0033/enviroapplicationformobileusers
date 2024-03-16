// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oh&snews_fldr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OhsNewsfldrRespModel _$OhsNewsfldrRespModelFromJson(Map<String, dynamic> json) {
  return _OhsNewsfldrRespModel.fromJson(json);
}

/// @nodoc
mixin _$OhsNewsfldrRespModel {
  List<OhsNewsfldrRespModelFolder> get folders =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OhsNewsfldrRespModelCopyWith<OhsNewsfldrRespModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OhsNewsfldrRespModelCopyWith<$Res> {
  factory $OhsNewsfldrRespModelCopyWith(OhsNewsfldrRespModel value,
          $Res Function(OhsNewsfldrRespModel) then) =
      _$OhsNewsfldrRespModelCopyWithImpl<$Res, OhsNewsfldrRespModel>;
  @useResult
  $Res call({List<OhsNewsfldrRespModelFolder> folders});
}

/// @nodoc
class _$OhsNewsfldrRespModelCopyWithImpl<$Res,
        $Val extends OhsNewsfldrRespModel>
    implements $OhsNewsfldrRespModelCopyWith<$Res> {
  _$OhsNewsfldrRespModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = null,
  }) {
    return _then(_value.copyWith(
      folders: null == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<OhsNewsfldrRespModelFolder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OhsNewsfldrRespModelImplCopyWith<$Res>
    implements $OhsNewsfldrRespModelCopyWith<$Res> {
  factory _$$OhsNewsfldrRespModelImplCopyWith(_$OhsNewsfldrRespModelImpl value,
          $Res Function(_$OhsNewsfldrRespModelImpl) then) =
      __$$OhsNewsfldrRespModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OhsNewsfldrRespModelFolder> folders});
}

/// @nodoc
class __$$OhsNewsfldrRespModelImplCopyWithImpl<$Res>
    extends _$OhsNewsfldrRespModelCopyWithImpl<$Res, _$OhsNewsfldrRespModelImpl>
    implements _$$OhsNewsfldrRespModelImplCopyWith<$Res> {
  __$$OhsNewsfldrRespModelImplCopyWithImpl(_$OhsNewsfldrRespModelImpl _value,
      $Res Function(_$OhsNewsfldrRespModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = null,
  }) {
    return _then(_$OhsNewsfldrRespModelImpl(
      folders: null == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<OhsNewsfldrRespModelFolder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OhsNewsfldrRespModelImpl implements _OhsNewsfldrRespModel {
  const _$OhsNewsfldrRespModelImpl(
      {required final List<OhsNewsfldrRespModelFolder> folders})
      : _folders = folders;

  factory _$OhsNewsfldrRespModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OhsNewsfldrRespModelImplFromJson(json);

  final List<OhsNewsfldrRespModelFolder> _folders;
  @override
  List<OhsNewsfldrRespModelFolder> get folders {
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_folders);
  }

  @override
  String toString() {
    return 'OhsNewsfldrRespModel(folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OhsNewsfldrRespModelImpl &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_folders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OhsNewsfldrRespModelImplCopyWith<_$OhsNewsfldrRespModelImpl>
      get copyWith =>
          __$$OhsNewsfldrRespModelImplCopyWithImpl<_$OhsNewsfldrRespModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OhsNewsfldrRespModelImplToJson(
      this,
    );
  }
}

abstract class _OhsNewsfldrRespModel implements OhsNewsfldrRespModel {
  const factory _OhsNewsfldrRespModel(
          {required final List<OhsNewsfldrRespModelFolder> folders}) =
      _$OhsNewsfldrRespModelImpl;

  factory _OhsNewsfldrRespModel.fromJson(Map<String, dynamic> json) =
      _$OhsNewsfldrRespModelImpl.fromJson;

  @override
  List<OhsNewsfldrRespModelFolder> get folders;
  @override
  @JsonKey(ignore: true)
  _$$OhsNewsfldrRespModelImplCopyWith<_$OhsNewsfldrRespModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OhsNewsfldrRespModelFolder _$OhsNewsfldrRespModelFolderFromJson(
    Map<String, dynamic> json) {
  return _OhsNewsfldrRespModelFolder.fromJson(json);
}

/// @nodoc
mixin _$OhsNewsfldrRespModelFolder {
  String get type => throw _privateConstructorUsedError;
  List<FileElement> get files => throw _privateConstructorUsedError;
  List<FolderFolder> get folders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OhsNewsfldrRespModelFolderCopyWith<OhsNewsfldrRespModelFolder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OhsNewsfldrRespModelFolderCopyWith<$Res> {
  factory $OhsNewsfldrRespModelFolderCopyWith(OhsNewsfldrRespModelFolder value,
          $Res Function(OhsNewsfldrRespModelFolder) then) =
      _$OhsNewsfldrRespModelFolderCopyWithImpl<$Res,
          OhsNewsfldrRespModelFolder>;
  @useResult
  $Res call({String type, List<FileElement> files, List<FolderFolder> folders});
}

/// @nodoc
class _$OhsNewsfldrRespModelFolderCopyWithImpl<$Res,
        $Val extends OhsNewsfldrRespModelFolder>
    implements $OhsNewsfldrRespModelFolderCopyWith<$Res> {
  _$OhsNewsfldrRespModelFolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? files = null,
    Object? folders = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileElement>,
      folders: null == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderFolder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OhsNewsfldrRespModelFolderImplCopyWith<$Res>
    implements $OhsNewsfldrRespModelFolderCopyWith<$Res> {
  factory _$$OhsNewsfldrRespModelFolderImplCopyWith(
          _$OhsNewsfldrRespModelFolderImpl value,
          $Res Function(_$OhsNewsfldrRespModelFolderImpl) then) =
      __$$OhsNewsfldrRespModelFolderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<FileElement> files, List<FolderFolder> folders});
}

/// @nodoc
class __$$OhsNewsfldrRespModelFolderImplCopyWithImpl<$Res>
    extends _$OhsNewsfldrRespModelFolderCopyWithImpl<$Res,
        _$OhsNewsfldrRespModelFolderImpl>
    implements _$$OhsNewsfldrRespModelFolderImplCopyWith<$Res> {
  __$$OhsNewsfldrRespModelFolderImplCopyWithImpl(
      _$OhsNewsfldrRespModelFolderImpl _value,
      $Res Function(_$OhsNewsfldrRespModelFolderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? files = null,
    Object? folders = null,
  }) {
    return _then(_$OhsNewsfldrRespModelFolderImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileElement>,
      folders: null == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderFolder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OhsNewsfldrRespModelFolderImpl implements _OhsNewsfldrRespModelFolder {
  const _$OhsNewsfldrRespModelFolderImpl(
      {required this.type,
      required final List<FileElement> files,
      required final List<FolderFolder> folders})
      : _files = files,
        _folders = folders;

  factory _$OhsNewsfldrRespModelFolderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OhsNewsfldrRespModelFolderImplFromJson(json);

  @override
  final String type;
  final List<FileElement> _files;
  @override
  List<FileElement> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  final List<FolderFolder> _folders;
  @override
  List<FolderFolder> get folders {
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_folders);
  }

  @override
  String toString() {
    return 'OhsNewsfldrRespModelFolder(type: $type, files: $files, folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OhsNewsfldrRespModelFolderImpl &&
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
  _$$OhsNewsfldrRespModelFolderImplCopyWith<_$OhsNewsfldrRespModelFolderImpl>
      get copyWith => __$$OhsNewsfldrRespModelFolderImplCopyWithImpl<
          _$OhsNewsfldrRespModelFolderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OhsNewsfldrRespModelFolderImplToJson(
      this,
    );
  }
}

abstract class _OhsNewsfldrRespModelFolder
    implements OhsNewsfldrRespModelFolder {
  const factory _OhsNewsfldrRespModelFolder(
          {required final String type,
          required final List<FileElement> files,
          required final List<FolderFolder> folders}) =
      _$OhsNewsfldrRespModelFolderImpl;

  factory _OhsNewsfldrRespModelFolder.fromJson(Map<String, dynamic> json) =
      _$OhsNewsfldrRespModelFolderImpl.fromJson;

  @override
  String get type;
  @override
  List<FileElement> get files;
  @override
  List<FolderFolder> get folders;
  @override
  @JsonKey(ignore: true)
  _$$OhsNewsfldrRespModelFolderImplCopyWith<_$OhsNewsfldrRespModelFolderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FileElement _$FileElementFromJson(Map<String, dynamic> json) {
  return _FileElement.fromJson(json);
}

/// @nodoc
mixin _$FileElement {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  dynamic get expiryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileElementCopyWith<FileElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileElementCopyWith<$Res> {
  factory $FileElementCopyWith(
          FileElement value, $Res Function(FileElement) then) =
      _$FileElementCopyWithImpl<$Res, FileElement>;
  @useResult
  $Res call({int id, String name, String url, dynamic expiryDate});
}

/// @nodoc
class _$FileElementCopyWithImpl<$Res, $Val extends FileElement>
    implements $FileElementCopyWith<$Res> {
  _$FileElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileElementImplCopyWith<$Res>
    implements $FileElementCopyWith<$Res> {
  factory _$$FileElementImplCopyWith(
          _$FileElementImpl value, $Res Function(_$FileElementImpl) then) =
      __$$FileElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String url, dynamic expiryDate});
}

/// @nodoc
class __$$FileElementImplCopyWithImpl<$Res>
    extends _$FileElementCopyWithImpl<$Res, _$FileElementImpl>
    implements _$$FileElementImplCopyWith<$Res> {
  __$$FileElementImplCopyWithImpl(
      _$FileElementImpl _value, $Res Function(_$FileElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? expiryDate = freezed,
  }) {
    return _then(_$FileElementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileElementImpl implements _FileElement {
  const _$FileElementImpl(
      {required this.id,
      required this.name,
      required this.url,
      required this.expiryDate});

  factory _$FileElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileElementImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String url;
  @override
  final dynamic expiryDate;

  @override
  String toString() {
    return 'FileElement(id: $id, name: $name, url: $url, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other.expiryDate, expiryDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, url,
      const DeepCollectionEquality().hash(expiryDate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileElementImplCopyWith<_$FileElementImpl> get copyWith =>
      __$$FileElementImplCopyWithImpl<_$FileElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileElementImplToJson(
      this,
    );
  }
}

abstract class _FileElement implements FileElement {
  const factory _FileElement(
      {required final int id,
      required final String name,
      required final String url,
      required final dynamic expiryDate}) = _$FileElementImpl;

  factory _FileElement.fromJson(Map<String, dynamic> json) =
      _$FileElementImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get url;
  @override
  dynamic get expiryDate;
  @override
  @JsonKey(ignore: true)
  _$$FileElementImplCopyWith<_$FileElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FolderFolder _$FolderFolderFromJson(Map<String, dynamic> json) {
  return _FolderFolder.fromJson(json);
}

/// @nodoc
mixin _$FolderFolder {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderFolderCopyWith<FolderFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderFolderCopyWith<$Res> {
  factory $FolderFolderCopyWith(
          FolderFolder value, $Res Function(FolderFolder) then) =
      _$FolderFolderCopyWithImpl<$Res, FolderFolder>;
  @useResult
  $Res call({int id, String name, String type});
}

/// @nodoc
class _$FolderFolderCopyWithImpl<$Res, $Val extends FolderFolder>
    implements $FolderFolderCopyWith<$Res> {
  _$FolderFolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderFolderImplCopyWith<$Res>
    implements $FolderFolderCopyWith<$Res> {
  factory _$$FolderFolderImplCopyWith(
          _$FolderFolderImpl value, $Res Function(_$FolderFolderImpl) then) =
      __$$FolderFolderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String type});
}

/// @nodoc
class __$$FolderFolderImplCopyWithImpl<$Res>
    extends _$FolderFolderCopyWithImpl<$Res, _$FolderFolderImpl>
    implements _$$FolderFolderImplCopyWith<$Res> {
  __$$FolderFolderImplCopyWithImpl(
      _$FolderFolderImpl _value, $Res Function(_$FolderFolderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$FolderFolderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderFolderImpl implements _FolderFolder {
  const _$FolderFolderImpl(
      {required this.id, required this.name, required this.type});

  factory _$FolderFolderImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderFolderImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;

  @override
  String toString() {
    return 'FolderFolder(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderFolderImpl &&
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
  _$$FolderFolderImplCopyWith<_$FolderFolderImpl> get copyWith =>
      __$$FolderFolderImplCopyWithImpl<_$FolderFolderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderFolderImplToJson(
      this,
    );
  }
}

abstract class _FolderFolder implements FolderFolder {
  const factory _FolderFolder(
      {required final int id,
      required final String name,
      required final String type}) = _$FolderFolderImpl;

  factory _FolderFolder.fromJson(Map<String, dynamic> json) =
      _$FolderFolderImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$FolderFolderImplCopyWith<_$FolderFolderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
