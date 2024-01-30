import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse {
  factory ApiResponse({
    T? data,
    int? statusCode,
    String? message,
    MainFailure? error,
    @Default(1) int pageNo,
    @Default(false) bool loading,
    @Default(true) bool pagination,
    @Default(false) bool searchLoading,
    @Default(false) bool paginationLoading,
  }) = _ApiResponse;
}
