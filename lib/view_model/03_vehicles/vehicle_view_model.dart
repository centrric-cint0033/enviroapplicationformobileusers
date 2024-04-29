import 'dart:async';

import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';

import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'vehicle_view_model.g.dart';

final vmVehicle = getIt<VehicleViewModel>();

@injectable
@lazySingleton
class VehicleViewModel extends VehicleViewModelBase with _$VehicleViewModel {
  VehicleViewModel(super.vehicleService);
}

abstract class VehicleViewModelBase with Store {
  final IVehicleService vehicleService;

  VehicleViewModelBase(this.vehicleService);

  TextEditingController vehicleTextCtr = TextEditingController();

  int vehicleTabIndex = 0;

  Timer? debouce;

  void onTextChanged(Function() function) {
    // Clear the previous debounce timer
    if (debouce?.isActive ?? false) debouce?.cancel();

    // Set up a new debounce timer
    debouce = Timer(const Duration(milliseconds: 500), () => function());
  }

  @observable
  String? selectedVehicle;

  @observable
  VehicleActionType? vehicleStatusType;

  @action
  void dropDownUpdate(VehicleActionType statusType, String statusString) {
    vehicleStatusType = statusType;
    selectedVehicle = statusString;
  }

//      _      ____    ___      ____      _      _       _       ____
//     / \    |  _ \  |_ _|    / ___|    / \    | |     | |     / ___|
//    / _ \   | |_) |  | |    | |       / _ \   | |     | |     \___ \
//   / ___ \  |  __/   | |    | |___   / ___ \  | |___  | |___   ___) |
//  /_/   \_\ |_|     |___|    \____| /_/   \_\ |_____| |_____| |____/

  @observable
  ApiResponse<List<VehicleModel>> masterTruckApiResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> masterTruckApi() async {
    if (vehicleTextCtr.text.isNotEmpty) {
      masterTruckSearchServiceApi(vehicleTextCtr.text);
    } else {
      masterTruckApiResponse =
          masterTruckApiResponse.copyWith(errors: null, loading: true);
      final result =
          await vehicleService.masterTruckServiceApi(vehicleStatusType);
      return result.fold(
        (l) {
          masterTruckApiResponse =
              masterTruckApiResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          masterTruckApiResponse = masterTruckApiResponse.copyWith(
              data: r, errors: null, loading: false);
        },
      );
    }
  }

  @action
  Future<void> masterTruckSearchServiceApi(String value) async {
    masterTruckApiResponse =
        masterTruckApiResponse.copyWith(errors: null, loading: true);

    final result = await vehicleService.masterTruckSearchServiceApi(
        vehicleStatusType, value);
    return result.fold(
      (l) {
        masterTruckApiResponse =
            masterTruckApiResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        masterTruckApiResponse = masterTruckApiResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  ApiResponse<List<VehicleModel>> masterCarApiResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> masterCarApi() async {
    if (vehicleTextCtr.text.isNotEmpty) {
      masterCarSearchApi(vehicleTextCtr.text);
    } else {
      masterCarApiResponse =
          masterCarApiResponse.copyWith(errors: null, loading: true);
      final result =
          await vehicleService.masterCarServiceApi(vehicleStatusType);
      return result.fold(
        (l) {
          masterCarApiResponse =
              masterCarApiResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          masterCarApiResponse = masterCarApiResponse.copyWith(
              data: r, errors: null, loading: false);
        },
      );
    }
  }

  @action
  Future<void> masterCarSearchApi(String value) async {
    masterCarApiResponse =
        masterCarApiResponse.copyWith(errors: null, loading: true);

    final result = await vehicleService.masterCarSearchServiceApi(
        vehicleStatusType, value);
    return result.fold(
      (l) {
        masterCarApiResponse =
            masterCarApiResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        masterCarApiResponse = masterCarApiResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @observable
  ApiResponse<List<VehicleModel>> semiTrailorApiResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> semiTrailorApi() async {
    if (vehicleTextCtr.text.isNotEmpty) {
      semiTrailorSearchApi(vehicleTextCtr.text);
    } else {
      semiTrailorApiResponse =
          semiTrailorApiResponse.copyWith(errors: null, loading: true);
      final result =
          await vehicleService.semiTrailorServiceApi(vehicleStatusType);
      return result.fold(
        (l) {
          semiTrailorApiResponse =
              semiTrailorApiResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          semiTrailorApiResponse = semiTrailorApiResponse.copyWith(
              data: r, errors: null, loading: false);
        },
      );
    }
  }

  @action
  Future<void> semiTrailorSearchApi(String value) async {
    semiTrailorApiResponse =
        semiTrailorApiResponse.copyWith(errors: null, loading: true);
    final result = await vehicleService.semiTrailorSearchServiceApi(
        vehicleStatusType, value);
    return result.fold(
      (l) {
        semiTrailorApiResponse =
            semiTrailorApiResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        semiTrailorApiResponse = semiTrailorApiResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @observable
  VehicleActionType? sstatus;

  @observable
  String? selectedTruckresponse;

  @action
  void setSelectedTruck(String? newValue) {
    selectedTruckresponse = newValue;
  }
}
