// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamEmployee _$TeamEmployeeFromJson(Map<String, dynamic> json) {
  return _TeamEmployee.fromJson(json);
}

/// @nodoc
mixin _$TeamEmployee {
  num? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get dp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamEmployeeCopyWith<TeamEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamEmployeeCopyWith<$Res> {
  factory $TeamEmployeeCopyWith(
          TeamEmployee value, $Res Function(TeamEmployee) then) =
      _$TeamEmployeeCopyWithImpl<$Res, TeamEmployee>;
  @useResult
  $Res call({num? id, String? name, String? dp});
}

/// @nodoc
class _$TeamEmployeeCopyWithImpl<$Res, $Val extends TeamEmployee>
    implements $TeamEmployeeCopyWith<$Res> {
  _$TeamEmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dp: freezed == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamEmployeeImplCopyWith<$Res>
    implements $TeamEmployeeCopyWith<$Res> {
  factory _$$TeamEmployeeImplCopyWith(
          _$TeamEmployeeImpl value, $Res Function(_$TeamEmployeeImpl) then) =
      __$$TeamEmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? id, String? name, String? dp});
}

/// @nodoc
class __$$TeamEmployeeImplCopyWithImpl<$Res>
    extends _$TeamEmployeeCopyWithImpl<$Res, _$TeamEmployeeImpl>
    implements _$$TeamEmployeeImplCopyWith<$Res> {
  __$$TeamEmployeeImplCopyWithImpl(
      _$TeamEmployeeImpl _value, $Res Function(_$TeamEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dp = freezed,
  }) {
    return _then(_$TeamEmployeeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dp: freezed == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamEmployeeImpl implements _TeamEmployee {
  _$TeamEmployeeImpl({this.id, this.name, this.dp});

  factory _$TeamEmployeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamEmployeeImplFromJson(json);

  @override
  final num? id;
  @override
  final String? name;
  @override
  final String? dp;

  @override
  String toString() {
    return 'TeamEmployee(id: $id, name: $name, dp: $dp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamEmployeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dp, dp) || other.dp == dp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, dp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamEmployeeImplCopyWith<_$TeamEmployeeImpl> get copyWith =>
      __$$TeamEmployeeImplCopyWithImpl<_$TeamEmployeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamEmployeeImplToJson(
      this,
    );
  }
}

abstract class _TeamEmployee implements TeamEmployee {
  factory _TeamEmployee({final num? id, final String? name, final String? dp}) =
      _$TeamEmployeeImpl;

  factory _TeamEmployee.fromJson(Map<String, dynamic> json) =
      _$TeamEmployeeImpl.fromJson;

  @override
  num? get id;
  @override
  String? get name;
  @override
  String? get dp;
  @override
  @JsonKey(ignore: true)
  _$$TeamEmployeeImplCopyWith<_$TeamEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
