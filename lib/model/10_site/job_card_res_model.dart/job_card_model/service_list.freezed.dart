// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceList _$ServiceListFromJson(Map<String, dynamic> json) {
  return _ServiceList.fromJson(json);
}

/// @nodoc
mixin _$ServiceList {
  String? get no => throw _privateConstructorUsedError;
  String? get capacity => throw _privateConstructorUsedError;
  String? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'waste_type')
  String? get wasteType => throw _privateConstructorUsedError;
  @JsonKey(name: 'pit_location')
  String? get pitLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceListCopyWith<ServiceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListCopyWith<$Res> {
  factory $ServiceListCopyWith(
          ServiceList value, $Res Function(ServiceList) then) =
      _$ServiceListCopyWithImpl<$Res, ServiceList>;
  @useResult
  $Res call(
      {String? no,
      String? capacity,
      String? frequency,
      @JsonKey(name: 'waste_type') String? wasteType,
      @JsonKey(name: 'pit_location') String? pitLocation});
}

/// @nodoc
class _$ServiceListCopyWithImpl<$Res, $Val extends ServiceList>
    implements $ServiceListCopyWith<$Res> {
  _$ServiceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = freezed,
    Object? capacity = freezed,
    Object? frequency = freezed,
    Object? wasteType = freezed,
    Object? pitLocation = freezed,
  }) {
    return _then(_value.copyWith(
      no: freezed == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      wasteType: freezed == wasteType
          ? _value.wasteType
          : wasteType // ignore: cast_nullable_to_non_nullable
              as String?,
      pitLocation: freezed == pitLocation
          ? _value.pitLocation
          : pitLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceListImplCopyWith<$Res>
    implements $ServiceListCopyWith<$Res> {
  factory _$$ServiceListImplCopyWith(
          _$ServiceListImpl value, $Res Function(_$ServiceListImpl) then) =
      __$$ServiceListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? no,
      String? capacity,
      String? frequency,
      @JsonKey(name: 'waste_type') String? wasteType,
      @JsonKey(name: 'pit_location') String? pitLocation});
}

/// @nodoc
class __$$ServiceListImplCopyWithImpl<$Res>
    extends _$ServiceListCopyWithImpl<$Res, _$ServiceListImpl>
    implements _$$ServiceListImplCopyWith<$Res> {
  __$$ServiceListImplCopyWithImpl(
      _$ServiceListImpl _value, $Res Function(_$ServiceListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = freezed,
    Object? capacity = freezed,
    Object? frequency = freezed,
    Object? wasteType = freezed,
    Object? pitLocation = freezed,
  }) {
    return _then(_$ServiceListImpl(
      no: freezed == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      wasteType: freezed == wasteType
          ? _value.wasteType
          : wasteType // ignore: cast_nullable_to_non_nullable
              as String?,
      pitLocation: freezed == pitLocation
          ? _value.pitLocation
          : pitLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceListImpl implements _ServiceList {
  _$ServiceListImpl(
      {this.no,
      this.capacity,
      this.frequency,
      @JsonKey(name: 'waste_type') this.wasteType,
      @JsonKey(name: 'pit_location') this.pitLocation});

  factory _$ServiceListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceListImplFromJson(json);

  @override
  final String? no;
  @override
  final String? capacity;
  @override
  final String? frequency;
  @override
  @JsonKey(name: 'waste_type')
  final String? wasteType;
  @override
  @JsonKey(name: 'pit_location')
  final String? pitLocation;

  @override
  String toString() {
    return 'ServiceList(no: $no, capacity: $capacity, frequency: $frequency, wasteType: $wasteType, pitLocation: $pitLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListImpl &&
            (identical(other.no, no) || other.no == no) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.wasteType, wasteType) ||
                other.wasteType == wasteType) &&
            (identical(other.pitLocation, pitLocation) ||
                other.pitLocation == pitLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, no, capacity, frequency, wasteType, pitLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceListImplCopyWith<_$ServiceListImpl> get copyWith =>
      __$$ServiceListImplCopyWithImpl<_$ServiceListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceListImplToJson(
      this,
    );
  }
}

abstract class _ServiceList implements ServiceList {
  factory _ServiceList(
          {final String? no,
          final String? capacity,
          final String? frequency,
          @JsonKey(name: 'waste_type') final String? wasteType,
          @JsonKey(name: 'pit_location') final String? pitLocation}) =
      _$ServiceListImpl;

  factory _ServiceList.fromJson(Map<String, dynamic> json) =
      _$ServiceListImpl.fromJson;

  @override
  String? get no;
  @override
  String? get capacity;
  @override
  String? get frequency;
  @override
  @JsonKey(name: 'waste_type')
  String? get wasteType;
  @override
  @JsonKey(name: 'pit_location')
  String? get pitLocation;
  @override
  @JsonKey(ignore: true)
  _$$ServiceListImplCopyWith<_$ServiceListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
