// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intranet_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

intranetfldrRespModel _$intranetfldrRespModelFromJson(
    Map<String, dynamic> json) {
  return _intranetfldrRespModel.fromJson(json);
}

/// @nodoc
mixin _$intranetfldrRespModel {
  List<intranetfldrRespModelFolder> get folders =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $intranetfldrRespModelCopyWith<intranetfldrRespModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $intranetfldrRespModelCopyWith<$Res> {
  factory $intranetfldrRespModelCopyWith(intranetfldrRespModel value,
          $Res Function(intranetfldrRespModel) then) =
      _$intranetfldrRespModelCopyWithImpl<$Res, intranetfldrRespModel>;
  @useResult
  $Res call({List<intranetfldrRespModelFolder> folders});
}

/// @nodoc
class _$intranetfldrRespModelCopyWithImpl<$Res,
        $Val extends intranetfldrRespModel>
    implements $intranetfldrRespModelCopyWith<$Res> {
  _$intranetfldrRespModelCopyWithImpl(this._value, this._then);

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
              as List<intranetfldrRespModelFolder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$intranetfldrRespModelImplCopyWith<$Res>
    implements $intranetfldrRespModelCopyWith<$Res> {
  factory _$$intranetfldrRespModelImplCopyWith(
          _$intranetfldrRespModelImpl value,
          $Res Function(_$intranetfldrRespModelImpl) then) =
      __$$intranetfldrRespModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<intranetfldrRespModelFolder> folders});
}

/// @nodoc
class __$$intranetfldrRespModelImplCopyWithImpl<$Res>
    extends _$intranetfldrRespModelCopyWithImpl<$Res,
        _$intranetfldrRespModelImpl>
    implements _$$intranetfldrRespModelImplCopyWith<$Res> {
  __$$intranetfldrRespModelImplCopyWithImpl(_$intranetfldrRespModelImpl _value,
      $Res Function(_$intranetfldrRespModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = null,
  }) {
    return _then(_$intranetfldrRespModelImpl(
      folders: null == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<intranetfldrRespModelFolder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$intranetfldrRespModelImpl implements _intranetfldrRespModel {
  const _$intranetfldrRespModelImpl(
      {required final List<intranetfldrRespModelFolder> folders})
      : _folders = folders;

  factory _$intranetfldrRespModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$intranetfldrRespModelImplFromJson(json);

  final List<intranetfldrRespModelFolder> _folders;
  @override
  List<intranetfldrRespModelFolder> get folders {
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_folders);
  }

  @override
  String toString() {
    return 'intranetfldrRespModel(folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$intranetfldrRespModelImpl &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_folders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$intranetfldrRespModelImplCopyWith<_$intranetfldrRespModelImpl>
      get copyWith => __$$intranetfldrRespModelImplCopyWithImpl<
          _$intranetfldrRespModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$intranetfldrRespModelImplToJson(
      this,
    );
  }
}

abstract class _intranetfldrRespModel implements intranetfldrRespModel {
  const factory _intranetfldrRespModel(
          {required final List<intranetfldrRespModelFolder> folders}) =
      _$intranetfldrRespModelImpl;

  factory _intranetfldrRespModel.fromJson(Map<String, dynamic> json) =
      _$intranetfldrRespModelImpl.fromJson;

  @override
  List<intranetfldrRespModelFolder> get folders;
  @override
  @JsonKey(ignore: true)
  _$$intranetfldrRespModelImplCopyWith<_$intranetfldrRespModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

intranetfldrRespModelFolder _$intranetfldrRespModelFolderFromJson(
    Map<String, dynamic> json) {
  return _intranetfldrRespModelFolder.fromJson(json);
}

/// @nodoc
mixin _$intranetfldrRespModelFolder {
  String get type => throw _privateConstructorUsedError;
  List<FileElement> get files => throw _privateConstructorUsedError;
  List<FolderFolder> get folders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $intranetfldrRespModelFolderCopyWith<intranetfldrRespModelFolder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $intranetfldrRespModelFolderCopyWith<$Res> {
  factory $intranetfldrRespModelFolderCopyWith(
          intranetfldrRespModelFolder value,
          $Res Function(intranetfldrRespModelFolder) then) =
      _$intranetfldrRespModelFolderCopyWithImpl<$Res,
          intranetfldrRespModelFolder>;
  @useResult
  $Res call({String type, List<FileElement> files, List<FolderFolder> folders});
}

/// @nodoc
class _$intranetfldrRespModelFolderCopyWithImpl<$Res,
        $Val extends intranetfldrRespModelFolder>
    implements $intranetfldrRespModelFolderCopyWith<$Res> {
  _$intranetfldrRespModelFolderCopyWithImpl(this._value, this._then);

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
abstract class _$$intranetfldrRespModelFolderImplCopyWith<$Res>
    implements $intranetfldrRespModelFolderCopyWith<$Res> {
  factory _$$intranetfldrRespModelFolderImplCopyWith(
          _$intranetfldrRespModelFolderImpl value,
          $Res Function(_$intranetfldrRespModelFolderImpl) then) =
      __$$intranetfldrRespModelFolderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<FileElement> files, List<FolderFolder> folders});
}

/// @nodoc
class __$$intranetfldrRespModelFolderImplCopyWithImpl<$Res>
    extends _$intranetfldrRespModelFolderCopyWithImpl<$Res,
        _$intranetfldrRespModelFolderImpl>
    implements _$$intranetfldrRespModelFolderImplCopyWith<$Res> {
  __$$intranetfldrRespModelFolderImplCopyWithImpl(
      _$intranetfldrRespModelFolderImpl _value,
      $Res Function(_$intranetfldrRespModelFolderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? files = null,
    Object? folders = null,
  }) {
    return _then(_$intranetfldrRespModelFolderImpl(
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
class _$intranetfldrRespModelFolderImpl
    implements _intranetfldrRespModelFolder {
  const _$intranetfldrRespModelFolderImpl(
      {required this.type,
      required final List<FileElement> files,
      required final List<FolderFolder> folders})
      : _files = files,
        _folders = folders;

  factory _$intranetfldrRespModelFolderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$intranetfldrRespModelFolderImplFromJson(json);

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
    return 'intranetfldrRespModelFolder(type: $type, files: $files, folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$intranetfldrRespModelFolderImpl &&
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
  _$$intranetfldrRespModelFolderImplCopyWith<_$intranetfldrRespModelFolderImpl>
      get copyWith => __$$intranetfldrRespModelFolderImplCopyWithImpl<
          _$intranetfldrRespModelFolderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$intranetfldrRespModelFolderImplToJson(
      this,
    );
  }
}

abstract class _intranetfldrRespModelFolder
    implements intranetfldrRespModelFolder {
  const factory _intranetfldrRespModelFolder(
          {required final String type,
          required final List<FileElement> files,
          required final List<FolderFolder> folders}) =
      _$intranetfldrRespModelFolderImpl;

  factory _intranetfldrRespModelFolder.fromJson(Map<String, dynamic> json) =
      _$intranetfldrRespModelFolderImpl.fromJson;

  @override
  String get type;
  @override
  List<FileElement> get files;
  @override
  List<FolderFolder> get folders;
  @override
  @JsonKey(ignore: true)
  _$$intranetfldrRespModelFolderImplCopyWith<_$intranetfldrRespModelFolderImpl>
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
