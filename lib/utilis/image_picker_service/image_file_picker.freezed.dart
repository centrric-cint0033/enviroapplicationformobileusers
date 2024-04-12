// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_file_picker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageFilePickerModel _$ImageFilePickerModelFromJson(Map<String, dynamic> json) {
  return _ImageFilePickerModel.fromJson(json);
}

/// @nodoc
mixin _$ImageFilePickerModel {
  bool? get primary => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get imageUUID => throw _privateConstructorUsedError;
  String? get imageFileName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true, required: false)
  Uint8List? get imageUint8List => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageFilePickerModelCopyWith<ImageFilePickerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFilePickerModelCopyWith<$Res> {
  factory $ImageFilePickerModelCopyWith(ImageFilePickerModel value,
          $Res Function(ImageFilePickerModel) then) =
      _$ImageFilePickerModelCopyWithImpl<$Res, ImageFilePickerModel>;
  @useResult
  $Res call(
      {bool? primary,
      String? imageUrl,
      String? fileName,
      String? imagePath,
      String? imageUUID,
      String? imageFileName,
      @JsonKey(ignore: true, required: false) Uint8List? imageUint8List});
}

/// @nodoc
class _$ImageFilePickerModelCopyWithImpl<$Res,
        $Val extends ImageFilePickerModel>
    implements $ImageFilePickerModelCopyWith<$Res> {
  _$ImageFilePickerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? imageUrl = freezed,
    Object? fileName = freezed,
    Object? imagePath = freezed,
    Object? imageUUID = freezed,
    Object? imageFileName = freezed,
    Object? imageUint8List = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUUID: freezed == imageUUID
          ? _value.imageUUID
          : imageUUID // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFileName: freezed == imageFileName
          ? _value.imageFileName
          : imageFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUint8List: freezed == imageUint8List
          ? _value.imageUint8List
          : imageUint8List // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageFilePickerModelImplCopyWith<$Res>
    implements $ImageFilePickerModelCopyWith<$Res> {
  factory _$$ImageFilePickerModelImplCopyWith(_$ImageFilePickerModelImpl value,
          $Res Function(_$ImageFilePickerModelImpl) then) =
      __$$ImageFilePickerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? primary,
      String? imageUrl,
      String? fileName,
      String? imagePath,
      String? imageUUID,
      String? imageFileName,
      @JsonKey(ignore: true, required: false) Uint8List? imageUint8List});
}

/// @nodoc
class __$$ImageFilePickerModelImplCopyWithImpl<$Res>
    extends _$ImageFilePickerModelCopyWithImpl<$Res, _$ImageFilePickerModelImpl>
    implements _$$ImageFilePickerModelImplCopyWith<$Res> {
  __$$ImageFilePickerModelImplCopyWithImpl(_$ImageFilePickerModelImpl _value,
      $Res Function(_$ImageFilePickerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? imageUrl = freezed,
    Object? fileName = freezed,
    Object? imagePath = freezed,
    Object? imageUUID = freezed,
    Object? imageFileName = freezed,
    Object? imageUint8List = freezed,
  }) {
    return _then(_$ImageFilePickerModelImpl(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUUID: freezed == imageUUID
          ? _value.imageUUID
          : imageUUID // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFileName: freezed == imageFileName
          ? _value.imageFileName
          : imageFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUint8List: freezed == imageUint8List
          ? _value.imageUint8List
          : imageUint8List // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageFilePickerModelImpl implements _ImageFilePickerModel {
  _$ImageFilePickerModelImpl(
      {this.primary,
      this.imageUrl,
      this.fileName,
      this.imagePath,
      this.imageUUID,
      this.imageFileName,
      @JsonKey(ignore: true, required: false) this.imageUint8List});

  factory _$ImageFilePickerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageFilePickerModelImplFromJson(json);

  @override
  final bool? primary;
  @override
  final String? imageUrl;
  @override
  final String? fileName;
  @override
  final String? imagePath;
  @override
  final String? imageUUID;
  @override
  final String? imageFileName;
  @override
  @JsonKey(ignore: true, required: false)
  final Uint8List? imageUint8List;

  @override
  String toString() {
    return 'ImageFilePickerModel(primary: $primary, imageUrl: $imageUrl, fileName: $fileName, imagePath: $imagePath, imageUUID: $imageUUID, imageFileName: $imageFileName, imageUint8List: $imageUint8List)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFilePickerModelImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageUUID, imageUUID) ||
                other.imageUUID == imageUUID) &&
            (identical(other.imageFileName, imageFileName) ||
                other.imageFileName == imageFileName) &&
            const DeepCollectionEquality()
                .equals(other.imageUint8List, imageUint8List));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      primary,
      imageUrl,
      fileName,
      imagePath,
      imageUUID,
      imageFileName,
      const DeepCollectionEquality().hash(imageUint8List));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageFilePickerModelImplCopyWith<_$ImageFilePickerModelImpl>
      get copyWith =>
          __$$ImageFilePickerModelImplCopyWithImpl<_$ImageFilePickerModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageFilePickerModelImplToJson(
      this,
    );
  }
}

abstract class _ImageFilePickerModel implements ImageFilePickerModel {
  factory _ImageFilePickerModel(
      {final bool? primary,
      final String? imageUrl,
      final String? fileName,
      final String? imagePath,
      final String? imageUUID,
      final String? imageFileName,
      @JsonKey(ignore: true, required: false)
      final Uint8List? imageUint8List}) = _$ImageFilePickerModelImpl;

  factory _ImageFilePickerModel.fromJson(Map<String, dynamic> json) =
      _$ImageFilePickerModelImpl.fromJson;

  @override
  bool? get primary;
  @override
  String? get imageUrl;
  @override
  String? get fileName;
  @override
  String? get imagePath;
  @override
  String? get imageUUID;
  @override
  String? get imageFileName;
  @override
  @JsonKey(ignore: true, required: false)
  Uint8List? get imageUint8List;
  @override
  @JsonKey(ignore: true)
  _$$ImageFilePickerModelImplCopyWith<_$ImageFilePickerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
