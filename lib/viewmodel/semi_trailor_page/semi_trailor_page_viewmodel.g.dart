// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semi_trailor_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SemiTrailorPageViewModel on AllSemiTrailorPageViewModelBase, Store {
  late final _$selectedVehicleAtom = Atom(
      name: 'AllSemiTrailorPageViewModelBase.selectedVehicle',
      context: context);

  @override
  String? get selectedVehicle {
    _$selectedVehicleAtom.reportRead();
    return super.selectedVehicle;
  }

  @override
  set selectedVehicle(String? value) {
    _$selectedVehicleAtom.reportWrite(value, super.selectedVehicle, () {
      super.selectedVehicle = value;
    });
  }

  late final _$semitrailorPageResponseAtom = Atom(
      name: 'AllSemiTrailorPageViewModelBase.semitrailorPageResponse',
      context: context);

  @override
  ApiResponse<List<CmnvehiclepageModel>> get semitrailorPageResponse {
    _$semitrailorPageResponseAtom.reportRead();
    return super.semitrailorPageResponse;
  }

  @override
  set semitrailorPageResponse(ApiResponse<List<CmnvehiclepageModel>> value) {
    _$semitrailorPageResponseAtom
        .reportWrite(value, super.semitrailorPageResponse, () {
      super.semitrailorPageResponse = value;
    });
  }

  late final _$trailorfunctionAsyncAction = AsyncAction(
      'AllSemiTrailorPageViewModelBase.trailorfunction',
      context: context);

  @override
  Future<void> trailorfunction({MasterTruckActionType? semitruckdrop}) {
    return _$trailorfunctionAsyncAction
        .run(() => super.trailorfunction(semitruckdrop: semitruckdrop));
  }

  late final _$AllSemiTrailorPageViewModelBaseActionController =
      ActionController(
          name: 'AllSemiTrailorPageViewModelBase', context: context);

  @override
  void setSelectedVehicle(String? newValue) {
    final _$actionInfo =
        _$AllSemiTrailorPageViewModelBaseActionController.startAction(
            name: 'AllSemiTrailorPageViewModelBase.setSelectedVehicle');
    try {
      return super.setSelectedVehicle(newValue);
    } finally {
      _$AllSemiTrailorPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedVehicle: ${selectedVehicle},
semitrailorPageResponse: ${semitrailorPageResponse}
    ''';
  }
}
