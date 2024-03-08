// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_reg_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuoteRegPageViewModel on QuoteRegPageViewModelBase, Store {
  late final _$quoteRegResponseAtom = Atom(
      name: 'QuoteRegPageViewModelBase.quoteRegResponse', context: context);

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

  late final _$quoteregviewmodelfunctionAsyncAction = AsyncAction(
      'QuoteRegPageViewModelBase.quoteregviewmodelfunction',
      context: context);

  @override
  Future<void> quoteregviewmodelfunction() {
    return _$quoteregviewmodelfunctionAsyncAction
        .run(() => super.quoteregviewmodelfunction());
  }

  @override
  String toString() {
    return '''
quoteRegResponse: ${quoteRegResponse}
    ''';
  }
}
