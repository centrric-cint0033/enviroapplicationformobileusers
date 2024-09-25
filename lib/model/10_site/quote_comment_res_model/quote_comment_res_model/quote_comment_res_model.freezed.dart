// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_comment_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuoteCommentResModel _$QuoteCommentResModelFromJson(Map<String, dynamic> json) {
  return _QuoteCommentResModel.fromJson(json);
}

/// @nodoc
mixin _$QuoteCommentResModel {
  num? get id => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  num? get quote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCommentResModelCopyWith<QuoteCommentResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCommentResModelCopyWith<$Res> {
  factory $QuoteCommentResModelCopyWith(QuoteCommentResModel value,
          $Res Function(QuoteCommentResModel) then) =
      _$QuoteCommentResModelCopyWithImpl<$Res, QuoteCommentResModel>;
  @useResult
  $Res call({num? id, String? comment, num? quote});
}

/// @nodoc
class _$QuoteCommentResModelCopyWithImpl<$Res,
        $Val extends QuoteCommentResModel>
    implements $QuoteCommentResModelCopyWith<$Res> {
  _$QuoteCommentResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? quote = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      quote: freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteCommentResModelImplCopyWith<$Res>
    implements $QuoteCommentResModelCopyWith<$Res> {
  factory _$$QuoteCommentResModelImplCopyWith(_$QuoteCommentResModelImpl value,
          $Res Function(_$QuoteCommentResModelImpl) then) =
      __$$QuoteCommentResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? id, String? comment, num? quote});
}

/// @nodoc
class __$$QuoteCommentResModelImplCopyWithImpl<$Res>
    extends _$QuoteCommentResModelCopyWithImpl<$Res, _$QuoteCommentResModelImpl>
    implements _$$QuoteCommentResModelImplCopyWith<$Res> {
  __$$QuoteCommentResModelImplCopyWithImpl(_$QuoteCommentResModelImpl _value,
      $Res Function(_$QuoteCommentResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? quote = freezed,
  }) {
    return _then(_$QuoteCommentResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      quote: freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteCommentResModelImpl implements _QuoteCommentResModel {
  _$QuoteCommentResModelImpl({this.id, this.comment, this.quote});

  factory _$QuoteCommentResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteCommentResModelImplFromJson(json);

  @override
  final num? id;
  @override
  final String? comment;
  @override
  final num? quote;

  @override
  String toString() {
    return 'QuoteCommentResModel(id: $id, comment: $comment, quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteCommentResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, comment, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteCommentResModelImplCopyWith<_$QuoteCommentResModelImpl>
      get copyWith =>
          __$$QuoteCommentResModelImplCopyWithImpl<_$QuoteCommentResModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteCommentResModelImplToJson(
      this,
    );
  }
}

abstract class _QuoteCommentResModel implements QuoteCommentResModel {
  factory _QuoteCommentResModel(
      {final num? id,
      final String? comment,
      final num? quote}) = _$QuoteCommentResModelImpl;

  factory _QuoteCommentResModel.fromJson(Map<String, dynamic> json) =
      _$QuoteCommentResModelImpl.fromJson;

  @override
  num? get id;
  @override
  String? get comment;
  @override
  num? get quote;
  @override
  @JsonKey(ignore: true)
  _$$QuoteCommentResModelImplCopyWith<_$QuoteCommentResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
