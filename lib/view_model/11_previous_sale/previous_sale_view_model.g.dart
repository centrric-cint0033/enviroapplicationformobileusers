// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_sale_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PreviousSaleViewModel on PreviousSaleViewModelBase, Store {
  late final _$previousSaleResponseAtom = Atom(
      name: 'PreviousSaleViewModelBase.previousSaleResponse', context: context);

  @override
  ApiResponse<List<PreviousSaleResModel>> get previousSaleResponse {
    _$previousSaleResponseAtom.reportRead();
    return super.previousSaleResponse;
  }

  @override
  set previousSaleResponse(ApiResponse<List<PreviousSaleResModel>> value) {
    _$previousSaleResponseAtom.reportWrite(value, super.previousSaleResponse,
        () {
      super.previousSaleResponse = value;
    });
  }

  late final _$getPreviousSalesAsyncAction = AsyncAction(
      'PreviousSaleViewModelBase.getPreviousSales',
      context: context);

  @override
  Future<void> getPreviousSales({int? page}) {
    return _$getPreviousSalesAsyncAction
        .run(() => super.getPreviousSales(page: page));
  }

  @override
  String toString() {
    return '''
previousSaleResponse: ${previousSaleResponse}
    ''';
  }
}
