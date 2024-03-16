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
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get expiryDate => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, String url, String expiryDate});
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
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? expiryDate = null,
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
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({int id, String name, String url, String expiryDate});
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
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? expiryDate = null,
  }) {
    return _then(_$OhsNewsfldrRespModelImpl(
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
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OhsNewsfldrRespModelImpl implements _OhsNewsfldrRespModel {
  const _$OhsNewsfldrRespModelImpl(
      {required this.id,
      required this.name,
      required this.url,
      required this.expiryDate});

  factory _$OhsNewsfldrRespModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OhsNewsfldrRespModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String url;
  @override
  final String expiryDate;

  @override
  String toString() {
    return 'OhsNewsfldrRespModel(id: $id, name: $name, url: $url, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OhsNewsfldrRespModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, url, expiryDate);

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
      {required final int id,
      required final String name,
      required final String url,
      required final String expiryDate}) = _$OhsNewsfldrRespModelImpl;

  factory _OhsNewsfldrRespModel.fromJson(Map<String, dynamic> json) =
      _$OhsNewsfldrRespModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get url;
  @override
  String get expiryDate;
  @override
  @JsonKey(ignore: true)
  _$$OhsNewsfldrRespModelImplCopyWith<_$OhsNewsfldrRespModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
