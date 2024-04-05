// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waste_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WasteTypeModel _$WasteTypeModelFromJson(Map<String, dynamic> json) {
  return _WasteTypeModel.fromJson(json);
}

/// @nodoc
mixin _$WasteTypeModel {
  num? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'waste_type_str')
  dynamic get wasteTypeStr => throw _privateConstructorUsedError;
  bool? get hidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WasteTypeModelCopyWith<WasteTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WasteTypeModelCopyWith<$Res> {
  factory $WasteTypeModelCopyWith(
          WasteTypeModel value, $Res Function(WasteTypeModel) then) =
      _$WasteTypeModelCopyWithImpl<$Res, WasteTypeModel>;
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'waste_type_str') dynamic wasteTypeStr,
      bool? hidden,
      @JsonKey(name: 'original_name') String? originalName});
}

/// @nodoc
class _$WasteTypeModelCopyWithImpl<$Res, $Val extends WasteTypeModel>
    implements $WasteTypeModelCopyWith<$Res> {
  _$WasteTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? wasteTypeStr = freezed,
    Object? hidden = freezed,
    Object? originalName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      wasteTypeStr: freezed == wasteTypeStr
          ? _value.wasteTypeStr
          : wasteTypeStr // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hidden: freezed == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WasteTypeModelImplCopyWith<$Res>
    implements $WasteTypeModelCopyWith<$Res> {
  factory _$$WasteTypeModelImplCopyWith(_$WasteTypeModelImpl value,
          $Res Function(_$WasteTypeModelImpl) then) =
      __$$WasteTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? id,
      @JsonKey(name: 'waste_type_str') dynamic wasteTypeStr,
      bool? hidden,
      @JsonKey(name: 'original_name') String? originalName});
}

/// @nodoc
class __$$WasteTypeModelImplCopyWithImpl<$Res>
    extends _$WasteTypeModelCopyWithImpl<$Res, _$WasteTypeModelImpl>
    implements _$$WasteTypeModelImplCopyWith<$Res> {
  __$$WasteTypeModelImplCopyWithImpl(
      _$WasteTypeModelImpl _value, $Res Function(_$WasteTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? wasteTypeStr = freezed,
    Object? hidden = freezed,
    Object? originalName = freezed,
  }) {
    return _then(_$WasteTypeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      wasteTypeStr: freezed == wasteTypeStr
          ? _value.wasteTypeStr
          : wasteTypeStr // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hidden: freezed == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WasteTypeModelImpl implements _WasteTypeModel {
  _$WasteTypeModelImpl(
      {this.id,
      @JsonKey(name: 'waste_type_str') this.wasteTypeStr,
      this.hidden,
      @JsonKey(name: 'original_name') this.originalName});

  factory _$WasteTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WasteTypeModelImplFromJson(json);

  @override
  final num? id;
  @override
  @JsonKey(name: 'waste_type_str')
  final dynamic wasteTypeStr;
  @override
  final bool? hidden;
  @override
  @JsonKey(name: 'original_name')
  final String? originalName;

  @override
  String toString() {
    return 'WasteTypeModel(id: $id, wasteTypeStr: $wasteTypeStr, hidden: $hidden, originalName: $originalName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WasteTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.wasteTypeStr, wasteTypeStr) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(wasteTypeStr), hidden, originalName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WasteTypeModelImplCopyWith<_$WasteTypeModelImpl> get copyWith =>
      __$$WasteTypeModelImplCopyWithImpl<_$WasteTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WasteTypeModelImplToJson(
      this,
    );
  }
}

abstract class _WasteTypeModel implements WasteTypeModel {
  factory _WasteTypeModel(
          {final num? id,
          @JsonKey(name: 'waste_type_str') final dynamic wasteTypeStr,
          final bool? hidden,
          @JsonKey(name: 'original_name') final String? originalName}) =
      _$WasteTypeModelImpl;

  factory _WasteTypeModel.fromJson(Map<String, dynamic> json) =
      _$WasteTypeModelImpl.fromJson;

  @override
  num? get id;
  @override
  @JsonKey(name: 'waste_type_str')
  dynamic get wasteTypeStr;
  @override
  bool? get hidden;
  @override
  @JsonKey(name: 'original_name')
  String? get originalName;
  @override
  @JsonKey(ignore: true)
  _$$WasteTypeModelImplCopyWith<_$WasteTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
