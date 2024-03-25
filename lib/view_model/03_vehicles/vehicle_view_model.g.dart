// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VehicleViewModel on VehicleViewModelBase, Store {
  late final _$carStatusAtom =
      Atom(name: 'VehicleViewModelBase.carStatus', context: context);

  @override
  CarActionType? get carStatus {
    _$carStatusAtom.reportRead();
    return super.carStatus;
  }

  @override
  set carStatus(CarActionType? value) {
    _$carStatusAtom.reportWrite(value, super.carStatus, () {
      super.carStatus = value;
    });
  }

  late final _$selectedcarstatusAtom =
      Atom(name: 'VehicleViewModelBase.selectedcarstatus', context: context);

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
      Atom(name: 'VehicleViewModelBase.carPageResponse', context: context);

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

  late final _$carPagefuelResponseAtom =
      Atom(name: 'VehicleViewModelBase.carPagefuelResponse', context: context);

  @override
  ApiResponse<List<CmnvehiclepageModel>> get carPagefuelResponse {
    _$carPagefuelResponseAtom.reportRead();
    return super.carPagefuelResponse;
  }

  @override
  set carPagefuelResponse(ApiResponse<List<CmnvehiclepageModel>> value) {
    _$carPagefuelResponseAtom.reportWrite(value, super.carPagefuelResponse, () {
      super.carPagefuelResponse = value;
    });
  }

  late final _$statusAtom =
      Atom(name: 'VehicleViewModelBase.status', context: context);

  @override
  MasterTruckActionType? get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(MasterTruckActionType? value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$selectedVehicleAtom =
      Atom(name: 'VehicleViewModelBase.selectedVehicle', context: context);

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
      name: 'VehicleViewModelBase.semitrailorPageResponse', context: context);

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
      name: 'VehicleViewModelBase.semitruckPagefuelResponse', context: context);

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

  late final _$sstatusAtom =
      Atom(name: 'VehicleViewModelBase.sstatus', context: context);

  @override
  ActionType? get sstatus {
    _$sstatusAtom.reportRead();
    return super.sstatus;
  }

  @override
  set sstatus(ActionType? value) {
    _$sstatusAtom.reportWrite(value, super.sstatus, () {
      super.sstatus = value;
    });
  }

  late final _$selectedTruckresponseAtom = Atom(
      name: 'VehicleViewModelBase.selectedTruckresponse', context: context);

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

  late final _$truckPageResponseAtom =
      Atom(name: 'VehicleViewModelBase.truckPageResponse', context: context);

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
      name: 'VehicleViewModelBase.truckPagefuelResponse', context: context);

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

  late final _$mastercarfunctionAsyncAction =
      AsyncAction('VehicleViewModelBase.mastercarfunction', context: context);

  @override
  Future<void> mastercarfunction({CarActionType? drop}) {
    return _$mastercarfunctionAsyncAction
        .run(() => super.mastercarfunction(drop: drop));
  }

  late final _$fuelsearchfunctionAsyncAction =
      AsyncAction('VehicleViewModelBase.fuelsearchfunction', context: context);

  @override
  Future<void> fuelsearchfunction({ActionType? searchdrop}) {
    return _$fuelsearchfunctionAsyncAction
        .run(() => super.fuelsearchfunction(searchdrop: searchdrop));
  }

  late final _$trailorfunctionAsyncAction =
      AsyncAction('VehicleViewModelBase.trailorfunction', context: context);

  @override
  Future<void> trailorfunction({MasterTruckActionType? semitruckdrop}) {
    return _$trailorfunctionAsyncAction
        .run(() => super.trailorfunction(semitruckdrop: semitruckdrop));
  }

  late final _$semifueltrucksearchfunctionAsyncAction = AsyncAction(
      'VehicleViewModelBase.semifueltrucksearchfunction',
      context: context);

  @override
  Future<void> semifueltrucksearchfunction({ActionType? searchsemidrop}) {
    return _$semifueltrucksearchfunctionAsyncAction.run(() =>
        super.semifueltrucksearchfunction(searchsemidrop: searchsemidrop));
  }

  late final _$truckPageFunctionAsyncAction =
      AsyncAction('VehicleViewModelBase.truckPageFunction', context: context);

  @override
  Future<void> truckPageFunction({ActionType? truckdrop}) {
    return _$truckPageFunctionAsyncAction
        .run(() => super.truckPageFunction(truckdrop: truckdrop));
  }

  late final _$fueltrucksearchfunctionAsyncAction = AsyncAction(
      'VehicleViewModelBase.fueltrucksearchfunction',
      context: context);

  @override
  Future<void> fueltrucksearchfunction(
      {dynamic value, ActionType? searchtrucksemidrop}) {
    return _$fueltrucksearchfunctionAsyncAction.run(() => super
        .fueltrucksearchfunction(
            value: value, searchtrucksemidrop: searchtrucksemidrop));
  }

  late final _$VehicleViewModelBaseActionController =
      ActionController(name: 'VehicleViewModelBase', context: context);

  @override
  void setSelectedCar(String? newValue) {
    final _$actionInfo = _$VehicleViewModelBaseActionController.startAction(
        name: 'VehicleViewModelBase.setSelectedCar');
    try {
      return super.setSelectedCar(newValue);
    } finally {
      _$VehicleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedVehicle(String? newValue) {
    final _$actionInfo = _$VehicleViewModelBaseActionController.startAction(
        name: 'VehicleViewModelBase.setSelectedVehicle');
    try {
      return super.setSelectedVehicle(newValue);
    } finally {
      _$VehicleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedTruck(String? newValue) {
    final _$actionInfo = _$VehicleViewModelBaseActionController.startAction(
        name: 'VehicleViewModelBase.setSelectedTruck');
    try {
      return super.setSelectedTruck(newValue);
    } finally {
      _$VehicleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
carStatus: ${carStatus},
selectedcarstatus: ${selectedcarstatus},
carPageResponse: ${carPageResponse},
carPagefuelResponse: ${carPagefuelResponse},
status: ${status},
selectedVehicle: ${selectedVehicle},
semitrailorPageResponse: ${semitrailorPageResponse},
semitruckPagefuelResponse: ${semitruckPagefuelResponse},
sstatus: ${sstatus},
selectedTruckresponse: ${selectedTruckresponse},
truckPageResponse: ${truckPageResponse},
truckPagefuelResponse: ${truckPagefuelResponse}
    ''';
  }
}
