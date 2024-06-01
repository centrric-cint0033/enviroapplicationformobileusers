// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shedule_card_comnt_resp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SheduleCommentModel _$SheduleCommentModelFromJson(Map<String, dynamic> json) {
  return _SheduleCommentModel.fromJson(json);
}

/// @nodoc
mixin _$SheduleCommentModel {
  @JsonKey(name: "Success")
  String? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  Comment? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SheduleCommentModelCopyWith<SheduleCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SheduleCommentModelCopyWith<$Res> {
  factory $SheduleCommentModelCopyWith(
          SheduleCommentModel value, $Res Function(SheduleCommentModel) then) =
      _$SheduleCommentModelCopyWithImpl<$Res, SheduleCommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Success") String? success,
      @JsonKey(name: "comment") Comment? comment});

  $CommentCopyWith<$Res>? get comment;
}

/// @nodoc
class _$SheduleCommentModelCopyWithImpl<$Res, $Val extends SheduleCommentModel>
    implements $SheduleCommentModelCopyWith<$Res> {
  _$SheduleCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $CommentCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SheduleCommentModelImplCopyWith<$Res>
    implements $SheduleCommentModelCopyWith<$Res> {
  factory _$$SheduleCommentModelImplCopyWith(_$SheduleCommentModelImpl value,
          $Res Function(_$SheduleCommentModelImpl) then) =
      __$$SheduleCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Success") String? success,
      @JsonKey(name: "comment") Comment? comment});

  @override
  $CommentCopyWith<$Res>? get comment;
}

/// @nodoc
class __$$SheduleCommentModelImplCopyWithImpl<$Res>
    extends _$SheduleCommentModelCopyWithImpl<$Res, _$SheduleCommentModelImpl>
    implements _$$SheduleCommentModelImplCopyWith<$Res> {
  __$$SheduleCommentModelImplCopyWithImpl(_$SheduleCommentModelImpl _value,
      $Res Function(_$SheduleCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$SheduleCommentModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SheduleCommentModelImpl implements _SheduleCommentModel {
  const _$SheduleCommentModelImpl(
      {@JsonKey(name: "Success") this.success,
      @JsonKey(name: "comment") this.comment});

  factory _$SheduleCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SheduleCommentModelImplFromJson(json);

  @override
  @JsonKey(name: "Success")
  final String? success;
  @override
  @JsonKey(name: "comment")
  final Comment? comment;

  @override
  String toString() {
    return 'SheduleCommentModel(success: $success, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SheduleCommentModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SheduleCommentModelImplCopyWith<_$SheduleCommentModelImpl> get copyWith =>
      __$$SheduleCommentModelImplCopyWithImpl<_$SheduleCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SheduleCommentModelImplToJson(
      this,
    );
  }
}

abstract class _SheduleCommentModel implements SheduleCommentModel {
  const factory _SheduleCommentModel(
          {@JsonKey(name: "Success") final String? success,
          @JsonKey(name: "comment") final Comment? comment}) =
      _$SheduleCommentModelImpl;

  factory _SheduleCommentModel.fromJson(Map<String, dynamic> json) =
      _$SheduleCommentModelImpl.fromJson;

  @override
  @JsonKey(name: "Success")
  String? get success;
  @override
  @JsonKey(name: "comment")
  Comment? get comment;
  @override
  @JsonKey(ignore: true)
  _$$SheduleCommentModelImplCopyWith<_$SheduleCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  bool? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "author") bool? author,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "comment") String? comment});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? createdBy = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "author") bool? author,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "comment") String? comment});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? createdBy = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$CommentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "comment") this.comment});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "author")
  final bool? author;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "comment")
  final String? comment;

  @override
  String toString() {
    return 'Comment(id: $id, author: $author, createdBy: $createdBy, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, author, createdBy, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "author") final bool? author,
      @JsonKey(name: "created_by") final String? createdBy,
      @JsonKey(name: "comment") final String? comment}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "author")
  bool? get author;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "comment")
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
