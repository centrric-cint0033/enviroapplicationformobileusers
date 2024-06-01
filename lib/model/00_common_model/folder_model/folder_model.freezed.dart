// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FolderListModel _$FolderListModelFromJson(Map<String, dynamic> json) {
  return _FolderListModel.fromJson(json);
}

/// @nodoc
mixin _$FolderListModel {
  List<FolderModel>? get folders => throw _privateConstructorUsedError;

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
  $Res call({List<FolderModel>? folders});
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
    Object? folders = freezed,
  }) {
    return _then(_value.copyWith(
      folders: freezed == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderModel>?,
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
  $Res call({List<FolderModel>? folders});
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
    Object? folders = freezed,
  }) {
    return _then(_$FolderListModelImpl(
      folders: freezed == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderListModelImpl implements _FolderListModel {
  const _$FolderListModelImpl({final List<FolderModel>? folders})
      : _folders = folders;

  factory _$FolderListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderListModelImplFromJson(json);

  final List<FolderModel>? _folders;
  @override
  List<FolderModel>? get folders {
    final value = _folders;
    if (value == null) return null;
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FolderListModel(folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderListModelImpl &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_folders));

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
  const factory _FolderListModel({final List<FolderModel>? folders}) =
      _$FolderListModelImpl;

  factory _FolderListModel.fromJson(Map<String, dynamic> json) =
      _$FolderListModelImpl.fromJson;

  @override
  List<FolderModel>? get folders;
  @override
  @JsonKey(ignore: true)
  _$$FolderListModelImplCopyWith<_$FolderListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FolderModel _$FolderModelFromJson(Map<String, dynamic> json) {
  return _FolderModel.fromJson(json);
}

/// @nodoc
mixin _$FolderModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<FolderModel>? get files => throw _privateConstructorUsedError;
  List<FolderModel>? get folders => throw _privateConstructorUsedError;
  String? get expiry_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderModelCopyWith<FolderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderModelCopyWith<$Res> {
  factory $FolderModelCopyWith(
          FolderModel value, $Res Function(FolderModel) then) =
      _$FolderModelCopyWithImpl<$Res, FolderModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? url,
      List<FolderModel>? files,
      List<FolderModel>? folders,
      String? expiry_date});
}

/// @nodoc
class _$FolderModelCopyWithImpl<$Res, $Val extends FolderModel>
    implements $FolderModelCopyWith<$Res> {
  _$FolderModelCopyWithImpl(this._value, this._then);

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
    Object? url = freezed,
    Object? files = freezed,
    Object? folders = freezed,
    Object? expiry_date = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FolderModel>?,
      folders: freezed == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderModel>?,
      expiry_date: freezed == expiry_date
          ? _value.expiry_date
          : expiry_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderModelImplCopyWith<$Res>
    implements $FolderModelCopyWith<$Res> {
  factory _$$FolderModelImplCopyWith(
          _$FolderModelImpl value, $Res Function(_$FolderModelImpl) then) =
      __$$FolderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? url,
      List<FolderModel>? files,
      List<FolderModel>? folders,
      String? expiry_date});
}

/// @nodoc
class __$$FolderModelImplCopyWithImpl<$Res>
    extends _$FolderModelCopyWithImpl<$Res, _$FolderModelImpl>
    implements _$$FolderModelImplCopyWith<$Res> {
  __$$FolderModelImplCopyWithImpl(
      _$FolderModelImpl _value, $Res Function(_$FolderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? files = freezed,
    Object? folders = freezed,
    Object? expiry_date = freezed,
  }) {
    return _then(_$FolderModelImpl(
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FolderModel>?,
      folders: freezed == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderModel>?,
      expiry_date: freezed == expiry_date
          ? _value.expiry_date
          : expiry_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderModelImpl implements _FolderModel {
  const _$FolderModelImpl(
      {this.id,
      this.name,
      this.type,
      this.url,
      final List<FolderModel>? files,
      final List<FolderModel>? folders,
      this.expiry_date})
      : _files = files,
        _folders = folders;

  factory _$FolderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? url;
  final List<FolderModel>? _files;
  @override
  List<FolderModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FolderModel>? _folders;
  @override
  List<FolderModel>? get folders {
    final value = _folders;
    if (value == null) return null;
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? expiry_date;

  @override
  String toString() {
    return 'FolderModel(id: $id, name: $name, type: $type, url: $url, files: $files, folders: $folders, expiry_date: $expiry_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._folders, _folders) &&
            (identical(other.expiry_date, expiry_date) ||
                other.expiry_date == expiry_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      url,
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_folders),
      expiry_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderModelImplCopyWith<_$FolderModelImpl> get copyWith =>
      __$$FolderModelImplCopyWithImpl<_$FolderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderModelImplToJson(
      this,
    );
  }
}

abstract class _FolderModel implements FolderModel {
  const factory _FolderModel(
      {final int? id,
      final String? name,
      final String? type,
      final String? url,
      final List<FolderModel>? files,
      final List<FolderModel>? folders,
      final String? expiry_date}) = _$FolderModelImpl;

  factory _FolderModel.fromJson(Map<String, dynamic> json) =
      _$FolderModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get url;
  @override
  List<FolderModel>? get files;
  @override
  List<FolderModel>? get folders;
  @override
  String? get expiry_date;
  @override
  @JsonKey(ignore: true)
  _$$FolderModelImplCopyWith<_$FolderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
