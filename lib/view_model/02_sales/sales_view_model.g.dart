// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SalesViewModel on SalesViewModelBase, Store {
  late final _$selectedMonthAtom =
      Atom(name: 'SalesViewModelBase.selectedMonth', context: context);

  @override
  String? get selectedMonth {
    _$selectedMonthAtom.reportRead();
    return super.selectedMonth;
  }

  @override
  set selectedMonth(String? value) {
    _$selectedMonthAtom.reportWrite(value, super.selectedMonth, () {
      super.selectedMonth = value;
    });
  }

  late final _$selectedYearAtom =
      Atom(name: 'SalesViewModelBase.selectedYear', context: context);

  @override
  String? get selectedYear {
    _$selectedYearAtom.reportRead();
    return super.selectedYear;
  }

  @override
  set selectedYear(String? value) {
    _$selectedYearAtom.reportWrite(value, super.selectedYear, () {
      super.selectedYear = value;
    });
  }

  late final _$joblistResponseAtom =
      Atom(name: 'SalesViewModelBase.joblistResponse', context: context);

  @override
  ApiResponse<List<SalesModel>> get joblistResponse {
    _$joblistResponseAtom.reportRead();
    return super.joblistResponse;
  }

  @override
  set joblistResponse(ApiResponse<List<SalesModel>> value) {
    _$joblistResponseAtom.reportWrite(value, super.joblistResponse, () {
      super.joblistResponse = value;
    });
  }

  late final _$salespageResponseAtom =
      Atom(name: 'SalesViewModelBase.salespageResponse', context: context);

  @override
  ApiResponse<List<SalesModel>> get salespageResponse {
    _$salespageResponseAtom.reportRead();
    return super.salespageResponse;
  }

  @override
  set salespageResponse(ApiResponse<List<SalesModel>> value) {
    _$salespageResponseAtom.reportWrite(value, super.salespageResponse, () {
      super.salespageResponse = value;
    });
  }

  late final _$quoteRegResponseAtom =
      Atom(name: 'SalesViewModelBase.quoteRegResponse', context: context);

  @override
  ApiResponse<List<SalesModel>> get quoteRegResponse {
    _$quoteRegResponseAtom.reportRead();
    return super.quoteRegResponse;
  }

  @override
  set quoteRegResponse(ApiResponse<List<SalesModel>> value) {
    _$quoteRegResponseAtom.reportWrite(value, super.quoteRegResponse, () {
      super.quoteRegResponse = value;
    });
  }

  late final _$salesQuoteDetailsResponseAtom = Atom(
      name: 'SalesViewModelBase.salesQuoteDetailsResponse', context: context);

  @override
  ApiResponse<List<SalesModel>> get salesQuoteDetailsResponse {
    _$salesQuoteDetailsResponseAtom.reportRead();
    return super.salesQuoteDetailsResponse;
  }

  @override
  set salesQuoteDetailsResponse(ApiResponse<List<SalesModel>> value) {
    _$salesQuoteDetailsResponseAtom
        .reportWrite(value, super.salesQuoteDetailsResponse, () {
      super.salesQuoteDetailsResponse = value;
    });
  }

  late final _$saleDetailResponseAtom =
      Atom(name: 'SalesViewModelBase.saleDetailResponse', context: context);

  @override
  ApiResponse<SalesModel> get saleDetailResponse {
    _$saleDetailResponseAtom.reportRead();
    return super.saleDetailResponse;
  }

  @override
  set saleDetailResponse(ApiResponse<SalesModel> value) {
    _$saleDetailResponseAtom.reportWrite(value, super.saleDetailResponse, () {
      super.saleDetailResponse = value;
    });
  }

  late final _$saleJobListApiAsyncAction =
      AsyncAction('SalesViewModelBase.saleJobListApi', context: context);

  @override
  Future<void> saleJobListApi({int? page}) {
    return _$saleJobListApiAsyncAction
        .run(() => super.saleJobListApi(page: page));
  }

  late final _$salesJobListSearchApiAsyncAction =
      AsyncAction('SalesViewModelBase.salesJobListSearchApi', context: context);

  @override
  Future<void> salesJobListSearchApi(String searchData, {int? page}) {
    return _$salesJobListSearchApiAsyncAction
        .run(() => super.salesJobListSearchApi(searchData, page: page));
  }

  late final _$saleslistApiAsyncAction =
      AsyncAction('SalesViewModelBase.saleslistApi', context: context);

  @override
  Future<void> saleslistApi() {
    return _$saleslistApiAsyncAction.run(() => super.saleslistApi());
  }

  late final _$quoteRegisterApiAsyncAction =
      AsyncAction('SalesViewModelBase.quoteRegisterApi', context: context);

  @override
  Future<void> quoteRegisterApi({int? page}) {
    return _$quoteRegisterApiAsyncAction
        .run(() => super.quoteRegisterApi(page: page));
  }

  late final _$salesQuoteListSearchApiAsyncAction = AsyncAction(
      'SalesViewModelBase.salesQuoteListSearchApi',
      context: context);

  @override
  Future<void> salesQuoteListSearchApi(String searchData, {int? page}) {
    return _$salesQuoteListSearchApiAsyncAction
        .run(() => super.salesQuoteListSearchApi(searchData, page: page));
  }

  late final _$getSalesQuoteDetailsAsyncAction =
      AsyncAction('SalesViewModelBase.getSalesQuoteDetails', context: context);

  @override
  Future<void> getSalesQuoteDetails({int? page, String? id}) {
    return _$getSalesQuoteDetailsAsyncAction
        .run(() => super.getSalesQuoteDetails(page: page, id: id));
  }

  late final _$salesJobDetailApiAsyncAction =
      AsyncAction('SalesViewModelBase.salesJobDetailApi', context: context);

  @override
  Future<void> salesJobDetailApi(int index, int? id) {
    return _$salesJobDetailApiAsyncAction
        .run(() => super.salesJobDetailApi(index, id));
  }

  late final _$salesQuoteRegDetailApiAsyncAction = AsyncAction(
      'SalesViewModelBase.salesQuoteRegDetailApi',
      context: context);

  @override
  Future<void> salesQuoteRegDetailApi(int index, int? id) {
    return _$salesQuoteRegDetailApiAsyncAction
        .run(() => super.salesQuoteRegDetailApi(index, id));
  }

  @override
  String toString() {
    return '''
selectedMonth: ${selectedMonth},
selectedYear: ${selectedYear},
joblistResponse: ${joblistResponse},
salespageResponse: ${salespageResponse},
quoteRegResponse: ${quoteRegResponse},
salesQuoteDetailsResponse: ${salesQuoteDetailsResponse},
saleDetailResponse: ${saleDetailResponse}
    ''';
  }
}
