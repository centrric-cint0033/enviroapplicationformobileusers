// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponse<T> {
  T? get data => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  MainFailure? get error => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get pagination => throw _privateConstructorUsedError;
  bool get searchLoading => throw _privateConstructorUsedError;
  bool get paginationLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
  @useResult
  $Res call(
      {T? data,
      int? statusCode,
      String? message,
      MainFailure? error,
      int pageNo,
      bool loading,
      bool pagination,
      bool searchLoading,
      bool paginationLoading});

  $MainFailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? pageNo = null,
    Object? loading = null,
    Object? pagination = null,
    Object? searchLoading = null,
    Object? paginationLoading = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as bool,
      searchLoading: null == searchLoading
          ? _value.searchLoading
          : searchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      paginationLoading: null == paginationLoading
          ? _value.paginationLoading
          : paginationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainFailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $MainFailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResponseImplCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory _$$ApiResponseImplCopyWith(_$ApiResponseImpl<T> value,
          $Res Function(_$ApiResponseImpl<T>) then) =
      __$$ApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {T? data,
      int? statusCode,
      String? message,
      MainFailure? error,
      int pageNo,
      bool loading,
      bool pagination,
      bool searchLoading,
      bool paginationLoading});

  @override
  $MainFailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ApiResponseImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseImpl<T>>
    implements _$$ApiResponseImplCopyWith<T, $Res> {
  __$$ApiResponseImplCopyWithImpl(
      _$ApiResponseImpl<T> _value, $Res Function(_$ApiResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? pageNo = null,
    Object? loading = null,
    Object? pagination = null,
    Object? searchLoading = null,
    Object? paginationLoading = null,
  }) {
    return _then(_$ApiResponseImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as bool,
      searchLoading: null == searchLoading
          ? _value.searchLoading
          : searchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      paginationLoading: null == paginationLoading
          ? _value.paginationLoading
          : paginationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ApiResponseImpl<T> implements _ApiResponse<T> {
  _$ApiResponseImpl(
      {this.data,
      this.statusCode,
      this.message,
      this.error,
      this.pageNo = 1,
      this.loading = false,
      this.pagination = true,
      this.searchLoading = false,
      this.paginationLoading = false});

  @override
  final T? data;
  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final MainFailure? error;
  @override
  @JsonKey()
  final int pageNo;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool pagination;
  @override
  @JsonKey()
  final bool searchLoading;
  @override
  @JsonKey()
  final bool paginationLoading;

  @override
  String toString() {
    return 'ApiResponse<$T>(data: $data, statusCode: $statusCode, message: $message, error: $error, pageNo: $pageNo, loading: $loading, pagination: $pagination, searchLoading: $searchLoading, paginationLoading: $paginationLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.searchLoading, searchLoading) ||
                other.searchLoading == searchLoading) &&
            (identical(other.paginationLoading, paginationLoading) ||
                other.paginationLoading == paginationLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      statusCode,
      message,
      error,
      pageNo,
      loading,
      pagination,
      searchLoading,
      paginationLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseImplCopyWith<T, _$ApiResponseImpl<T>> get copyWith =>
      __$$ApiResponseImplCopyWithImpl<T, _$ApiResponseImpl<T>>(
          this, _$identity);
}

abstract class _ApiResponse<T> implements ApiResponse<T> {
  factory _ApiResponse(
      {final T? data,
      final int? statusCode,
      final String? message,
      final MainFailure? error,
      final int pageNo,
      final bool loading,
      final bool pagination,
      final bool searchLoading,
      final bool paginationLoading}) = _$ApiResponseImpl<T>;

  @override
  T? get data;
  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  MainFailure? get error;
  @override
  int get pageNo;
  @override
  bool get loading;
  @override
  bool get pagination;
  @override
  bool get searchLoading;
  @override
  bool get paginationLoading;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseImplCopyWith<T, _$ApiResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
