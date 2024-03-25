// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SalesViewModel on SalesViewModelBase, Store {
  late final _$joblistResponseAtom =
      Atom(name: 'SalesViewModelBase.joblistResponse', context: context);

  @override
  ApiResponse<List<SalesJobListstRegResModel>> get joblistResponse {
    _$joblistResponseAtom.reportRead();
    return super.joblistResponse;
  }

  @override
  set joblistResponse(ApiResponse<List<SalesJobListstRegResModel>> value) {
    _$joblistResponseAtom.reportWrite(value, super.joblistResponse, () {
      super.joblistResponse = value;
    });
  }

  late final _$salespageResponseAtom =
      Atom(name: 'SalesViewModelBase.salespageResponse', context: context);

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

  late final _$quoteRegResponseAtom =
      Atom(name: 'SalesViewModelBase.quoteRegResponse', context: context);

  @override
  ApiResponse<List<QuoteRegResModel>> get quoteRegResponse {
    _$quoteRegResponseAtom.reportRead();
    return super.quoteRegResponse;
  }

  @override
  set quoteRegResponse(ApiResponse<List<QuoteRegResModel>> value) {
    _$quoteRegResponseAtom.reportWrite(value, super.quoteRegResponse, () {
      super.quoteRegResponse = value;
    });
  }

  late final _$vehiclelistviewmodelfunctionAsyncAction = AsyncAction(
      'SalesViewModelBase.vehiclelistviewmodelfunction',
      context: context);

  @override
  Future<void> vehiclelistviewmodelfunction() {
    return _$vehiclelistviewmodelfunctionAsyncAction
        .run(() => super.vehiclelistviewmodelfunction());
  }

  late final _$saleslistviewmodelfunctionAsyncAction = AsyncAction(
      'SalesViewModelBase.saleslistviewmodelfunction',
      context: context);

  @override
  Future<void> saleslistviewmodelfunction() {
    return _$saleslistviewmodelfunctionAsyncAction
        .run(() => super.saleslistviewmodelfunction());
  }

  late final _$quoteregviewmodelfunctionAsyncAction = AsyncAction(
      'SalesViewModelBase.quoteregviewmodelfunction',
      context: context);

  @override
  Future<void> quoteregviewmodelfunction() {
    return _$quoteregviewmodelfunctionAsyncAction
        .run(() => super.quoteregviewmodelfunction());
  }

  @override
  String toString() {
    return '''
joblistResponse: ${joblistResponse},
salespageResponse: ${salespageResponse},
quoteRegResponse: ${quoteRegResponse}
    ''';
  }
}
