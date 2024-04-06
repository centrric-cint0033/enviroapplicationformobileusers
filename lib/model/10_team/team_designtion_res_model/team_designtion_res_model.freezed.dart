// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_designtion_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamDesigntionResModel _$TeamDesigntionResModelFromJson(
    Map<String, dynamic> json) {
  return _TeamDesigntionResModel.fromJson(json);
}

/// @nodoc
mixin _$TeamDesigntionResModel {
  List<Designation>? get designations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamDesigntionResModelCopyWith<TeamDesigntionResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamDesigntionResModelCopyWith<$Res> {
  factory $TeamDesigntionResModelCopyWith(TeamDesigntionResModel value,
          $Res Function(TeamDesigntionResModel) then) =
      _$TeamDesigntionResModelCopyWithImpl<$Res, TeamDesigntionResModel>;
  @useResult
  $Res call({List<Designation>? designations});
}

/// @nodoc
class _$TeamDesigntionResModelCopyWithImpl<$Res,
        $Val extends TeamDesigntionResModel>
    implements $TeamDesigntionResModelCopyWith<$Res> {
  _$TeamDesigntionResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designations = freezed,
  }) {
    return _then(_value.copyWith(
      designations: freezed == designations
          ? _value.designations
          : designations // ignore: cast_nullable_to_non_nullable
              as List<Designation>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamDesigntionResModelImplCopyWith<$Res>
    implements $TeamDesigntionResModelCopyWith<$Res> {
  factory _$$TeamDesigntionResModelImplCopyWith(
          _$TeamDesigntionResModelImpl value,
          $Res Function(_$TeamDesigntionResModelImpl) then) =
      __$$TeamDesigntionResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Designation>? designations});
}

/// @nodoc
class __$$TeamDesigntionResModelImplCopyWithImpl<$Res>
    extends _$TeamDesigntionResModelCopyWithImpl<$Res,
        _$TeamDesigntionResModelImpl>
    implements _$$TeamDesigntionResModelImplCopyWith<$Res> {
  __$$TeamDesigntionResModelImplCopyWithImpl(
      _$TeamDesigntionResModelImpl _value,
      $Res Function(_$TeamDesigntionResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designations = freezed,
  }) {
    return _then(_$TeamDesigntionResModelImpl(
      designations: freezed == designations
          ? _value._designations
          : designations // ignore: cast_nullable_to_non_nullable
              as List<Designation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamDesigntionResModelImpl implements _TeamDesigntionResModel {
  _$TeamDesigntionResModelImpl({final List<Designation>? designations})
      : _designations = designations;

  factory _$TeamDesigntionResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamDesigntionResModelImplFromJson(json);

  final List<Designation>? _designations;
  @override
  List<Designation>? get designations {
    final value = _designations;
    if (value == null) return null;
    if (_designations is EqualUnmodifiableListView) return _designations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TeamDesigntionResModel(designations: $designations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamDesigntionResModelImpl &&
            const DeepCollectionEquality()
                .equals(other._designations, _designations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_designations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamDesigntionResModelImplCopyWith<_$TeamDesigntionResModelImpl>
      get copyWith => __$$TeamDesigntionResModelImplCopyWithImpl<
          _$TeamDesigntionResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamDesigntionResModelImplToJson(
      this,
    );
  }
}

abstract class _TeamDesigntionResModel implements TeamDesigntionResModel {
  factory _TeamDesigntionResModel({final List<Designation>? designations}) =
      _$TeamDesigntionResModelImpl;

  factory _TeamDesigntionResModel.fromJson(Map<String, dynamic> json) =
      _$TeamDesigntionResModelImpl.fromJson;

  @override
  List<Designation>? get designations;
  @override
  @JsonKey(ignore: true)
  _$$TeamDesigntionResModelImplCopyWith<_$TeamDesigntionResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
