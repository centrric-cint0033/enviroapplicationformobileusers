// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semi_trailor_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SemiTrailorPageViewModel on AllSemiTrailorPageViewModelBase, Store {
  late final _$statusAtom =
      Atom(name: 'AllSemiTrailorPageViewModelBase.status', context: context);

  @override
  InvalidType get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(InvalidType value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

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

  late final _$semitruckPagefuelResponseAtom = Atom(
      name: 'AllSemiTrailorPageViewModelBase.semitruckPagefuelResponse',
      context: context);

  @override
  ApiResponse<List<CmnvehiclepageModel>> get semitruckPagefuelResponse {
    _$semitruckPagefuelResponseAtom.reportRead();
    return super.semitruckPagefuelResponse;
  }

  @override
  set semitruckPagefuelResponse(ApiResponse<List<CmnvehiclepageModel>> value) {
    _$semitruckPagefuelResponseAtom
        .reportWrite(value, super.semitruckPagefuelResponse, () {
      super.semitruckPagefuelResponse = value;
    });
  }

  late final _$trailorfunctionAsyncAction = AsyncAction(
      'AllSemiTrailorPageViewModelBase.trailorfunction',
      context: context);

  @override
  Future<void> trailorfunction({InvalidType semitruckdrop}) {
    return _$trailorfunctionAsyncAction
        .run(() => super.trailorfunction(semitruckdrop: semitruckdrop));
  }

  late final _$semifueltrucksearchfunctionAsyncAction = AsyncAction(
      'AllSemiTrailorPageViewModelBase.semifueltrucksearchfunction',
      context: context);

  @override
  Future<void> semifueltrucksearchfunction({InvalidType searchsemidrop}) {
    return _$semifueltrucksearchfunctionAsyncAction.run(() =>
        super.semifueltrucksearchfunction(searchsemidrop: searchsemidrop));
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
status: ${status},
selectedVehicle: ${selectedVehicle},
semitrailorPageResponse: ${semitrailorPageResponse},
semitruckPagefuelResponse: ${semitruckPagefuelResponse}
    ''';
  }
}
