// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attached_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttachedFile _$AttachedFileFromJson(Map<String, dynamic> json) {
  return _AttachedFile.fromJson(json);
}

/// @nodoc
mixin _$AttachedFile {
  num? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  dynamic get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'template_html')
  String? get templateHtml => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachedFileCopyWith<AttachedFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachedFileCopyWith<$Res> {
  factory $AttachedFileCopyWith(
          AttachedFile value, $Res Function(AttachedFile) then) =
      _$AttachedFileCopyWithImpl<$Res, AttachedFile>;
  @useResult
  $Res call(
      {num? id,
      String? url,
      String? type,
      String? name,
      @JsonKey(name: 'file_name') dynamic fileName,
      @JsonKey(name: 'template_html') String? templateHtml});
}

/// @nodoc
class _$AttachedFileCopyWithImpl<$Res, $Val extends AttachedFile>
    implements $AttachedFileCopyWith<$Res> {
  _$AttachedFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? templateHtml = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      templateHtml: freezed == templateHtml
          ? _value.templateHtml
          : templateHtml // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachedFileImplCopyWith<$Res>
    implements $AttachedFileCopyWith<$Res> {
  factory _$$AttachedFileImplCopyWith(
          _$AttachedFileImpl value, $Res Function(_$AttachedFileImpl) then) =
      __$$AttachedFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      String? url,
      String? type,
      String? name,
      @JsonKey(name: 'file_name') dynamic fileName,
      @JsonKey(name: 'template_html') String? templateHtml});
}

/// @nodoc
class __$$AttachedFileImplCopyWithImpl<$Res>
    extends _$AttachedFileCopyWithImpl<$Res, _$AttachedFileImpl>
    implements _$$AttachedFileImplCopyWith<$Res> {
  __$$AttachedFileImplCopyWithImpl(
      _$AttachedFileImpl _value, $Res Function(_$AttachedFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? templateHtml = freezed,
  }) {
    return _then(_$AttachedFileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      templateHtml: freezed == templateHtml
          ? _value.templateHtml
          : templateHtml // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachedFileImpl implements _AttachedFile {
  _$AttachedFileImpl(
      {this.id,
      this.url,
      this.type,
      this.name,
      @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'template_html') this.templateHtml});

  factory _$AttachedFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachedFileImplFromJson(json);

  @override
  final num? id;
  @override
  final String? url;
  @override
  final String? type;
  @override
  final String? name;
  @override
  @JsonKey(name: 'file_name')
  final dynamic fileName;
  @override
  @JsonKey(name: 'template_html')
  final String? templateHtml;

  @override
  String toString() {
    return 'AttachedFile(id: $id, url: $url, type: $type, name: $name, fileName: $fileName, templateHtml: $templateHtml)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachedFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            (identical(other.templateHtml, templateHtml) ||
                other.templateHtml == templateHtml));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, type, name,
      const DeepCollectionEquality().hash(fileName), templateHtml);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachedFileImplCopyWith<_$AttachedFileImpl> get copyWith =>
      __$$AttachedFileImplCopyWithImpl<_$AttachedFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachedFileImplToJson(
      this,
    );
  }
}

abstract class _AttachedFile implements AttachedFile {
  factory _AttachedFile(
          {final num? id,
          final String? url,
          final String? type,
          final String? name,
          @JsonKey(name: 'file_name') final dynamic fileName,
          @JsonKey(name: 'template_html') final String? templateHtml}) =
      _$AttachedFileImpl;

  factory _AttachedFile.fromJson(Map<String, dynamic> json) =
      _$AttachedFileImpl.fromJson;

  @override
  num? get id;
  @override
  String? get url;
  @override
  String? get type;
  @override
  String? get name;
  @override
  @JsonKey(name: 'file_name')
  dynamic get fileName;
  @override
  @JsonKey(name: 'template_html')
  String? get templateHtml;
  @override
  @JsonKey(ignore: true)
  _$$AttachedFileImplCopyWith<_$AttachedFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
