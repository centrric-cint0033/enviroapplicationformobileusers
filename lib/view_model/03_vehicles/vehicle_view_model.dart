import 'dart:async';

import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
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

  TextEditingController vehSemiTrailorCtr = TextEditingController();
  TextEditingController vehMasterCarrCtr = TextEditingController();
  TextEditingController vehMasterTruckCtr = TextEditingController();

  Timer? debouce;

  void onTextChanged(Function() function) {
    // Clear the previous debounce timer
    if (debouce?.isActive ?? false) debouce?.cancel();

    // Set up a new debounce timer
    debouce = Timer(const Duration(milliseconds: 500), () => function());
  }

  @observable
  ApiResponse<List<VehicleModel>> carPageResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> mastercarfunction(
      {VehicleActionType? statusType, String? statusString}) async {
    vehicleStatusType = statusType;
    selectedVehicle = statusString;

    carPageResponse = carPageResponse.copyWith(error: null, loading: true);
    final result =
        await vehicleService.preinspectionfunction(vehicleStatusType);
    return result.fold(
      (l) {
        carPageResponse = carPageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        carPageResponse = carPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<VehicleModel>> carPagefuelResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> fuelsearchfunction({VehicleActionType? searchdrop}) async {
    carPageResponse = carPageResponse.copyWith(error: null, loading: true);

    final result = await vehicleService.masterfuelsearchfunction(searchdrop);
    return result.fold(
      (l) {
        carPagefuelResponse = carPagefuelResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        carPageResponse = carPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  String? selectedVehicle;

  @observable
  VehicleActionType? vehicleStatusType;

  @observable
  ApiResponse<List<VehicleModel>> semitrailorPageResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> trailorfunction(
      {VehicleActionType? statusType, String? statusString}) async {
    vehicleStatusType = statusType;
    selectedVehicle = statusString;

    semitrailorPageResponse =
        semitrailorPageResponse.copyWith(error: null, loading: true);
    final result = await vehicleService.pretrailorfunction(statusType);
    return result.fold(
      (l) {
        semitrailorPageResponse = semitrailorPageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        semitrailorPageResponse = semitrailorPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<VehicleModel>> semitruckPagefuelResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> semifueltrucksearchfunction(
      {VehicleActionType? searchsemidrop}) async {
    semitrailorPageResponse =
        semitrailorPageResponse.copyWith(error: null, loading: true);

    final result =
        await vehicleService.masterfuelsemitruckfunction(searchsemidrop);
    return result.fold(
      (l) {
        semitruckPagefuelResponse = semitruckPagefuelResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        semitrailorPageResponse = semitrailorPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
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

  @observable
  ApiResponse<List<VehicleModel>> masterTruckApiResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> masterTruckApi(
      {VehicleActionType? statusType, String? statusString}) async {
    vehicleStatusType = statusType;
    selectedVehicle = statusString;

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

  @action
  Future<void> masterTruckSearchApi({value}) async {
    masterTruckApiResponse =
        masterTruckApiResponse.copyWith(errors: null, loading: true);

    final result =
        await vehicleService.masterTruckSearchApi(vehicleStatusType, value);
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
