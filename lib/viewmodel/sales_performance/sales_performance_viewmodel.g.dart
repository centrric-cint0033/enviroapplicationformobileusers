// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_performance_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SalesPerformanceViewModel on SalesPerformanceViewModelBase, Store {
  late final _$salespageResponseAtom = Atom(
      name: 'SalesPerformanceViewModelBase.salespageResponse',
      context: context);

  @override
  ApiResponse<List<SalesListResModel>> get salespageResponse {
    _$salespageResponseAtom.reportRead();
    return super.salespageResponse;
  }

  @override
  set salespageResponse(ApiResponse<List<SalesListResModel>> value) {
    _$salespageResponseAtom.reportWrite(value, super.salespageResponse, () {
      super.salespageResponse = value;
    });
  }

  late final _$saleslistviewmodelfunctionAsyncAction = AsyncAction(
      'SalesPerformanceViewModelBase.saleslistviewmodelfunction',
      context: context);

  @override
  Future<void> saleslistviewmodelfunction() {
    return _$saleslistviewmodelfunctionAsyncAction
        .run(() => super.saleslistviewmodelfunction());
  }

  @override
  String toString() {
    return '''
salespageResponse: ${salespageResponse}
    ''';
  }
}
