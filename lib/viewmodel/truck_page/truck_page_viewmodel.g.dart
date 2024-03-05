// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TruckPageViewModel on AllTruckPageViewModelBase, Store {
  late final _$selectedTruckresponseAtom = Atom(
      name: 'AllTruckPageViewModelBase.selectedTruckresponse',
      context: context);

  @override
  String? get selectedTruckresponse {
    _$selectedTruckresponseAtom.reportRead();
    return super.selectedTruckresponse;
  }

  @override
  set selectedTruckresponse(String? value) {
    _$selectedTruckresponseAtom.reportWrite(value, super.selectedTruckresponse,
        () {
      super.selectedTruckresponse = value;
    });
  }

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

  late final _$truckPagefuelResponseAtom = Atom(
      name: 'AllTruckPageViewModelBase.truckPagefuelResponse',
      context: context);

  @override
  ApiResponse<List<CmnvehiclepageModel>> get truckPagefuelResponse {
    _$truckPagefuelResponseAtom.reportRead();
    return super.truckPagefuelResponse;
  }

  @override
  set truckPagefuelResponse(ApiResponse<List<CmnvehiclepageModel>> value) {
    _$truckPagefuelResponseAtom.reportWrite(value, super.truckPagefuelResponse,
        () {
      super.truckPagefuelResponse = value;
    });
  }

  late final _$truckPageFunctionAsyncAction = AsyncAction(
      'AllTruckPageViewModelBase.truckPageFunction',
      context: context);

  @override
  Future<void> truckPageFunction({ActionType? truckdrop}) {
    return _$truckPageFunctionAsyncAction
        .run(() => super.truckPageFunction(truckdrop: truckdrop));
  }

  late final _$fueltrucksearchfunctionAsyncAction = AsyncAction(
      'AllTruckPageViewModelBase.fueltrucksearchfunction',
      context: context);

  @override
  Future<void> fueltrucksearchfunction(
      {dynamic value, ActionType? searchtrucksemidrop}) {
    return _$fueltrucksearchfunctionAsyncAction.run(() => super
        .fueltrucksearchfunction(
            value: value, searchtrucksemidrop: searchtrucksemidrop));
  }

  late final _$AllTruckPageViewModelBaseActionController =
      ActionController(name: 'AllTruckPageViewModelBase', context: context);

  @override
  void setSelectedTruck(String? newValue) {
    final _$actionInfo = _$AllTruckPageViewModelBaseActionController
        .startAction(name: 'AllTruckPageViewModelBase.setSelectedTruck');
    try {
      return super.setSelectedTruck(newValue);
    } finally {
      _$AllTruckPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTruckresponse: ${selectedTruckresponse},
truckPageResponse: ${truckPageResponse},
truckPagefuelResponse: ${truckPagefuelResponse}
    ''';
  }
}
