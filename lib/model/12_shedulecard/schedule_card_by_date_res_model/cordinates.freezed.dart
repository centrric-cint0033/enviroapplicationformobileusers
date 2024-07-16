// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cordinates _$CordinatesFromJson(Map<String, dynamic> json) {
  return _Cordinates.fromJson(json);
}

/// @nodoc
mixin _$Cordinates {
  dynamic get longitude => throw _privateConstructorUsedError;
  dynamic get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CordinatesCopyWith<Cordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CordinatesCopyWith<$Res> {
  factory $CordinatesCopyWith(
          Cordinates value, $Res Function(Cordinates) then) =
      _$CordinatesCopyWithImpl<$Res, Cordinates>;
  @useResult
  $Res call({dynamic longitude, dynamic latitude});
}

/// @nodoc
class _$CordinatesCopyWithImpl<$Res, $Val extends Cordinates>
    implements $CordinatesCopyWith<$Res> {
  _$CordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CordinatesImplCopyWith<$Res>
    implements $CordinatesCopyWith<$Res> {
  factory _$$CordinatesImplCopyWith(
          _$CordinatesImpl value, $Res Function(_$CordinatesImpl) then) =
      __$$CordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic longitude, dynamic latitude});
}

/// @nodoc
class __$$CordinatesImplCopyWithImpl<$Res>
    extends _$CordinatesCopyWithImpl<$Res, _$CordinatesImpl>
    implements _$$CordinatesImplCopyWith<$Res> {
  __$$CordinatesImplCopyWithImpl(
      _$CordinatesImpl _value, $Res Function(_$CordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$CordinatesImpl(
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CordinatesImpl implements _Cordinates {
  _$CordinatesImpl({this.longitude, this.latitude});

  factory _$CordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CordinatesImplFromJson(json);

  @override
  final dynamic longitude;
  @override
  final dynamic latitude;

  @override
  String toString() {
    return 'Cordinates(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CordinatesImpl &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CordinatesImplCopyWith<_$CordinatesImpl> get copyWith =>
      __$$CordinatesImplCopyWithImpl<_$CordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CordinatesImplToJson(
      this,
    );
  }
}

abstract class _Cordinates implements Cordinates {
  factory _Cordinates({final dynamic longitude, final dynamic latitude}) =
      _$CordinatesImpl;

  factory _Cordinates.fromJson(Map<String, dynamic> json) =
      _$CordinatesImpl.fromJson;

  @override
  dynamic get longitude;
  @override
  dynamic get latitude;
  @override
  @JsonKey(ignore: true)
  _$$CordinatesImplCopyWith<_$CordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
