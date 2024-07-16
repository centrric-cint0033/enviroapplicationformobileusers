// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
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
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
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
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

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
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
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
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
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
    return _then(_$InvoiceImpl(
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
class _$InvoiceImpl implements _Invoice {
  _$InvoiceImpl(
      {this.edit,
      this.add,
      this.delete,
      this.view,
      this.waste,
      this.pumps,
      this.hills,
      this.destruction});

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

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
    return 'Invoice(edit: $edit, add: $add, delete: $delete, view: $view, waste: $waste, pumps: $pumps, hills: $hills, destruction: $destruction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
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
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  factory _Invoice(
      {final bool? edit,
      final bool? add,
      final bool? delete,
      final bool? view,
      final bool? waste,
      final bool? pumps,
      final bool? hills,
      final bool? destruction}) = _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

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
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
