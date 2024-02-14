// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TruckPageViewModel on AllTruckPageViewModelBase, Store {
  late final _$truckPageResponseAtom = Atom(
      name: 'AllTruckPageViewModelBase.truckPageResponse', context: context);

  @override
  ApiResponse<List<CmnvehiclepageModel>> get truckPageResponse {
    _$truckPageResponseAtom.reportRead();
    return super.truckPageResponse;
  }

  @override
  set truckPageResponse(ApiResponse<List<CmnvehiclepageModel>> value) {
    _$truckPageResponseAtom.reportWrite(value, super.truckPageResponse, () {
      super.truckPageResponse = value;
    });
  }

  late final _$truckPageFunctionAsyncAction = AsyncAction(
      'AllTruckPageViewModelBase.truckPageFunction',
      context: context);

  @override
  Future<void> truckPageFunction() {
    return _$truckPageFunctionAsyncAction.run(() => super.truckPageFunction());
  }

  @override
  String toString() {
    return '''
truckPageResponse: ${truckPageResponse}
    ''';
  }
}
