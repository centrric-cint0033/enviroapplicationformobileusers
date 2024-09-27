// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'before_pic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeforePic _$BeforePicFromJson(Map<String, dynamic> json) {
  return _BeforePic.fromJson(json);
}

/// @nodoc
mixin _$BeforePic {
  num? get id => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date_time')
  DateTime? get createdDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_date_time')
  DateTime? get editedDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeforePicCopyWith<BeforePic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeforePicCopyWith<$Res> {
  factory $BeforePicCopyWith(BeforePic value, $Res Function(BeforePic) then) =
      _$BeforePicCopyWithImpl<$Res, BeforePic>;
  @useResult
  $Res call(
      {num? id,
      String? file,
      String? image,
      @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
      @JsonKey(name: 'edited_date_time') DateTime? editedDateTime});
}

/// @nodoc
class _$BeforePicCopyWithImpl<$Res, $Val extends BeforePic>
    implements $BeforePicCopyWith<$Res> {
  _$BeforePicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? image = freezed,
    Object? createdDateTime = freezed,
    Object? editedDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDateTime: freezed == createdDateTime
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      editedDateTime: freezed == editedDateTime
          ? _value.editedDateTime
          : editedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeforePicImplCopyWith<$Res>
    implements $BeforePicCopyWith<$Res> {
  factory _$$BeforePicImplCopyWith(
          _$BeforePicImpl value, $Res Function(_$BeforePicImpl) then) =
      __$$BeforePicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      String? file,
      String? image,
      @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
      @JsonKey(name: 'edited_date_time') DateTime? editedDateTime});
}

/// @nodoc
class __$$BeforePicImplCopyWithImpl<$Res>
    extends _$BeforePicCopyWithImpl<$Res, _$BeforePicImpl>
    implements _$$BeforePicImplCopyWith<$Res> {
  __$$BeforePicImplCopyWithImpl(
      _$BeforePicImpl _value, $Res Function(_$BeforePicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? image = freezed,
    Object? createdDateTime = freezed,
    Object? editedDateTime = freezed,
  }) {
    return _then(_$BeforePicImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDateTime: freezed == createdDateTime
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      editedDateTime: freezed == editedDateTime
          ? _value.editedDateTime
          : editedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeforePicImpl implements _BeforePic {
  _$BeforePicImpl(
      {this.id,
      this.file,
      this.image,
      @JsonKey(name: 'created_date_time') this.createdDateTime,
      @JsonKey(name: 'edited_date_time') this.editedDateTime});

  factory _$BeforePicImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeforePicImplFromJson(json);

  @override
  final num? id;
  @override
  final String? file;
  @override
  final String? image;
  @override
  @JsonKey(name: 'created_date_time')
  final DateTime? createdDateTime;
  @override
  @JsonKey(name: 'edited_date_time')
  final DateTime? editedDateTime;

  @override
  String toString() {
    return 'BeforePic(id: $id, file: $file, image: $image, createdDateTime: $createdDateTime, editedDateTime: $editedDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeforePicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdDateTime, createdDateTime) ||
                other.createdDateTime == createdDateTime) &&
            (identical(other.editedDateTime, editedDateTime) ||
                other.editedDateTime == editedDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, file, image, createdDateTime, editedDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeforePicImplCopyWith<_$BeforePicImpl> get copyWith =>
      __$$BeforePicImplCopyWithImpl<_$BeforePicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeforePicImplToJson(
      this,
    );
  }
}

abstract class _BeforePic implements BeforePic {
  factory _BeforePic(
          {final num? id,
          final String? file,
          final String? image,
          @JsonKey(name: 'created_date_time') final DateTime? createdDateTime,
          @JsonKey(name: 'edited_date_time') final DateTime? editedDateTime}) =
      _$BeforePicImpl;

  factory _BeforePic.fromJson(Map<String, dynamic> json) =
      _$BeforePicImpl.fromJson;

  @override
  num? get id;
  @override
  String? get file;
  @override
  String? get image;
  @override
  @JsonKey(name: 'created_date_time')
  DateTime? get createdDateTime;
  @override
  @JsonKey(name: 'edited_date_time')
  DateTime? get editedDateTime;
  @override
  @JsonKey(ignore: true)
  _$$BeforePicImplCopyWith<_$BeforePicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
