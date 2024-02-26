// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarPageViewModel on AllCarPageViewModelBase, Store {
  late final _$selectedcarstatusAtom =
      Atom(name: 'AllCarPageViewModelBase.selectedcarstatus', context: context);

  @override
  String? get selectedcarstatus {
    _$selectedcarstatusAtom.reportRead();
    return super.selectedcarstatus;
  }

  @override
  set selectedcarstatus(String? value) {
    _$selectedcarstatusAtom.reportWrite(value, super.selectedcarstatus, () {
      super.selectedcarstatus = value;
    });
  }

  late final _$carPageResponseAtom =
      Atom(name: 'AllCarPageViewModelBase.carPageResponse', context: context);

  @override
  ApiResponse<List<CmnvehiclepageModel>> get carPageResponse {
    _$carPageResponseAtom.reportRead();
    return super.carPageResponse;
  }

  @override
  set carPageResponse(ApiResponse<List<CmnvehiclepageModel>> value) {
    _$carPageResponseAtom.reportWrite(value, super.carPageResponse, () {
      super.carPageResponse = value;
    });
  }

  late final _$mastercarfunctionAsyncAction = AsyncAction(
      'AllCarPageViewModelBase.mastercarfunction',
      context: context);

  @override
  Future<void> mastercarfunction({CarActionType? drop}) {
    return _$mastercarfunctionAsyncAction
        .run(() => super.mastercarfunction(drop: drop));
  }

  late final _$AllCarPageViewModelBaseActionController =
      ActionController(name: 'AllCarPageViewModelBase', context: context);

  @override
  void setSelectedCar(String? newValue) {
    final _$actionInfo = _$AllCarPageViewModelBaseActionController.startAction(
        name: 'AllCarPageViewModelBase.setSelectedCar');
    try {
      return super.setSelectedCar(newValue);
    } finally {
      _$AllCarPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedcarstatus: ${selectedcarstatus},
carPageResponse: ${carPageResponse}
    ''';
  }
}
