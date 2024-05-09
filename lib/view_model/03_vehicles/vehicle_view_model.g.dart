// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VehicleViewModel on VehicleViewModelBase, Store {
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

  late final _$vehicleStatusTypeAtom =
      Atom(name: 'VehicleViewModelBase.vehicleStatusType', context: context);

  @override
  VehicleActionType? get vehicleStatusType {
    _$vehicleStatusTypeAtom.reportRead();
    return super.vehicleStatusType;
  }

  @override
  set vehicleStatusType(VehicleActionType? value) {
    _$vehicleStatusTypeAtom.reportWrite(value, super.vehicleStatusType, () {
      super.vehicleStatusType = value;
    });
  }

  late final _$masterTruckApiResponseAtom = Atom(
      name: 'VehicleViewModelBase.masterTruckApiResponse', context: context);

  @override
  ApiResponse<List<VehicleModel>> get masterTruckApiResponse {
    _$masterTruckApiResponseAtom.reportRead();
    return super.masterTruckApiResponse;
  }

  @override
  set masterTruckApiResponse(ApiResponse<List<VehicleModel>> value) {
    _$masterTruckApiResponseAtom
        .reportWrite(value, super.masterTruckApiResponse, () {
      super.masterTruckApiResponse = value;
    });
  }

  late final _$masterCarApiResponseAtom =
      Atom(name: 'VehicleViewModelBase.masterCarApiResponse', context: context);

  @override
  ApiResponse<List<VehicleModel>> get masterCarApiResponse {
    _$masterCarApiResponseAtom.reportRead();
    return super.masterCarApiResponse;
  }

  @override
  set masterCarApiResponse(ApiResponse<List<VehicleModel>> value) {
    _$masterCarApiResponseAtom.reportWrite(value, super.masterCarApiResponse,
        () {
      super.masterCarApiResponse = value;
    });
  }

  late final _$semiTrailorApiResponseAtom = Atom(
      name: 'VehicleViewModelBase.semiTrailorApiResponse', context: context);

  @override
  ApiResponse<List<VehicleModel>> get semiTrailorApiResponse {
    _$semiTrailorApiResponseAtom.reportRead();
    return super.semiTrailorApiResponse;
  }

  @override
  set semiTrailorApiResponse(ApiResponse<List<VehicleModel>> value) {
    _$semiTrailorApiResponseAtom
        .reportWrite(value, super.semiTrailorApiResponse, () {
      super.semiTrailorApiResponse = value;
    });
  }

  late final _$sstatusAtom =
      Atom(name: 'VehicleViewModelBase.sstatus', context: context);

  @override
  VehicleActionType? get sstatus {
    _$sstatusAtom.reportRead();
    return super.sstatus;
  }

  @override
  set sstatus(VehicleActionType? value) {
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

  late final _$masterTruckApiAsyncAction =
      AsyncAction('VehicleViewModelBase.masterTruckApi', context: context);

  @override
  Future<void> masterTruckApi({int? page}) {
    return _$masterTruckApiAsyncAction
        .run(() => super.masterTruckApi(page: page));
  }

  late final _$masterTruckSearchServiceApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.masterTruckSearchServiceApi',
      context: context);

  @override
  Future<void> masterTruckSearchServiceApi(String value, {int? page}) {
    return _$masterTruckSearchServiceApiAsyncAction
        .run(() => super.masterTruckSearchServiceApi(value, page: page));
  }

  late final _$masterCarApiAsyncAction =
      AsyncAction('VehicleViewModelBase.masterCarApi', context: context);

  @override
  Future<void> masterCarApi({int? page}) {
    return _$masterCarApiAsyncAction.run(() => super.masterCarApi(page: page));
  }

  late final _$masterCarSearchApiAsyncAction =
      AsyncAction('VehicleViewModelBase.masterCarSearchApi', context: context);

  @override
  Future<void> masterCarSearchApi(String value, {int? page}) {
    return _$masterCarSearchApiAsyncAction
        .run(() => super.masterCarSearchApi(value, page: page));
  }

  late final _$semiTrailorApiAsyncAction =
      AsyncAction('VehicleViewModelBase.semiTrailorApi', context: context);

  @override
  Future<void> semiTrailorApi() {
    return _$semiTrailorApiAsyncAction.run(() => super.semiTrailorApi());
  }

  late final _$semiTrailorSearchApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.semiTrailorSearchApi',
      context: context);

  @override
  Future<void> semiTrailorSearchApi(String value) {
    return _$semiTrailorSearchApiAsyncAction
        .run(() => super.semiTrailorSearchApi(value));
  }

  late final _$VehicleViewModelBaseActionController =
      ActionController(name: 'VehicleViewModelBase', context: context);

  @override
  void dropDownUpdate(VehicleActionType statusType, String statusString) {
    final _$actionInfo = _$VehicleViewModelBaseActionController.startAction(
        name: 'VehicleViewModelBase.dropDownUpdate');
    try {
      return super.dropDownUpdate(statusType, statusString);
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
selectedVehicle: ${selectedVehicle},
vehicleStatusType: ${vehicleStatusType},
masterTruckApiResponse: ${masterTruckApiResponse},
masterCarApiResponse: ${masterCarApiResponse},
semiTrailorApiResponse: ${semiTrailorApiResponse},
sstatus: ${sstatus},
selectedTruckresponse: ${selectedTruckresponse}
    ''';
  }
}
