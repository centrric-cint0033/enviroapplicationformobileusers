// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sales _$SalesFromJson(Map<String, dynamic> json) {
  return _Sales.fromJson(json);
}

/// @nodoc
mixin _$Sales {
  bool? get edit => throw _privateConstructorUsedError;
  bool? get add => throw _privateConstructorUsedError;
  bool? get delete => throw _privateConstructorUsedError;
  bool? get view => throw _privateConstructorUsedError;
  bool? get waste => throw _privateConstructorUsedError;
  bool? get pumps => throw _privateConstructorUsedError;
  bool? get hills => throw _privateConstructorUsedError;
  bool? get destruction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesCopyWith<Sales> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesCopyWith<$Res> {
  factory $SalesCopyWith(Sales value, $Res Function(Sales) then) =
      _$SalesCopyWithImpl<$Res, Sales>;
  @useResult
  $Res call(
      {bool? edit,
      bool? add,
      bool? delete,
      bool? view,
      bool? waste,
      bool? pumps,
      bool? hills,
      bool? destruction});
}

/// @nodoc
class _$SalesCopyWithImpl<$Res, $Val extends Sales>
    implements $SalesCopyWith<$Res> {
  _$SalesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edit = freezed,
    Object? add = freezed,
    Object? delete = freezed,
    Object? view = freezed,
    Object? waste = freezed,
    Object? pumps = freezed,
    Object? hills = freezed,
    Object? destruction = freezed,
  }) {
    return _then(_value.copyWith(
      edit: freezed == edit
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as bool?,
      add: freezed == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as bool?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as bool?,
      waste: freezed == waste
          ? _value.waste
          : waste // ignore: cast_nullable_to_non_nullable
              as bool?,
      pumps: freezed == pumps
          ? _value.pumps
          : pumps // ignore: cast_nullable_to_non_nullable
              as bool?,
      hills: freezed == hills
          ? _value.hills
          : hills // ignore: cast_nullable_to_non_nullable
              as bool?,
      destruction: freezed == destruction
          ? _value.destruction
          : destruction // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesImplCopyWith<$Res> implements $SalesCopyWith<$Res> {
  factory _$$SalesImplCopyWith(
          _$SalesImpl value, $Res Function(_$SalesImpl) then) =
      __$$SalesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? edit,
      bool? add,
      bool? delete,
      bool? view,
      bool? waste,
      bool? pumps,
      bool? hills,
      bool? destruction});
}

/// @nodoc
class __$$SalesImplCopyWithImpl<$Res>
    extends _$SalesCopyWithImpl<$Res, _$SalesImpl>
    implements _$$SalesImplCopyWith<$Res> {
  __$$SalesImplCopyWithImpl(
      _$SalesImpl _value, $Res Function(_$SalesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edit = freezed,
    Object? add = freezed,
    Object? delete = freezed,
    Object? view = freezed,
    Object? waste = freezed,
    Object? pumps = freezed,
    Object? hills = freezed,
    Object? destruction = freezed,
  }) {
    return _then(_$SalesImpl(
      edit: freezed == edit
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as bool?,
      add: freezed == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as bool?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as bool?,
      waste: freezed == waste
          ? _value.waste
          : waste // ignore: cast_nullable_to_non_nullable
              as bool?,
      pumps: freezed == pumps
          ? _value.pumps
          : pumps // ignore: cast_nullable_to_non_nullable
              as bool?,
      hills: freezed == hills
          ? _value.hills
          : hills // ignore: cast_nullable_to_non_nullable
              as bool?,
      destruction: freezed == destruction
          ? _value.destruction
          : destruction // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesImpl implements _Sales {
  _$SalesImpl(
      {this.edit,
      this.add,
      this.delete,
      this.view,
      this.waste,
      this.pumps,
      this.hills,
      this.destruction});

  factory _$SalesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesImplFromJson(json);

  @override
  final bool? edit;
  @override
  final bool? add;
  @override
  final bool? delete;
  @override
  final bool? view;
  @override
  final bool? waste;
  @override
  final bool? pumps;
  @override
  final bool? hills;
  @override
  final bool? destruction;

  @override
  String toString() {
    return 'Sales(edit: $edit, add: $add, delete: $delete, view: $view, waste: $waste, pumps: $pumps, hills: $hills, destruction: $destruction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesImpl &&
            (identical(other.edit, edit) || other.edit == edit) &&
            (identical(other.add, add) || other.add == add) &&
            (identical(other.delete, delete) || other.delete == delete) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.waste, waste) || other.waste == waste) &&
            (identical(other.pumps, pumps) || other.pumps == pumps) &&
            (identical(other.hills, hills) || other.hills == hills) &&
            (identical(other.destruction, destruction) ||
                other.destruction == destruction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, edit, add, delete, view, waste, pumps, hills, destruction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesImplCopyWith<_$SalesImpl> get copyWith =>
      __$$SalesImplCopyWithImpl<_$SalesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesImplToJson(
      this,
    );
  }
}

abstract class _Sales implements Sales {
  factory _Sales(
      {final bool? edit,
      final bool? add,
      final bool? delete,
      final bool? view,
      final bool? waste,
      final bool? pumps,
      final bool? hills,
      final bool? destruction}) = _$SalesImpl;

  factory _Sales.fromJson(Map<String, dynamic> json) = _$SalesImpl.fromJson;

  @override
  bool? get edit;
  @override
  bool? get add;
  @override
  bool? get delete;
  @override
  bool? get view;
  @override
  bool? get waste;
  @override
  bool? get pumps;
  @override
  bool? get hills;
  @override
  bool? get destruction;
  @override
  @JsonKey(ignore: true)
  _$$SalesImplCopyWith<_$SalesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
