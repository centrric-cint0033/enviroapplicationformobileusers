import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';

import 'package:enviro_mobile_application/utilis/injection.dart';
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

  @observable
  CarActionType? carStatus;

  @observable
  String? selectedcarstatus;

  @action
  void setSelectedCar(String? newValue) {
    selectedcarstatus = newValue;
  }

  @observable
  ApiResponse<List<VehicleModel>> carPageResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> mastercarfunction({CarActionType? drop}) async {
    carPageResponse = carPageResponse.copyWith(error: null, loading: true);
    carStatus = drop;
    final result = await vehicleService.preinspectionfunction(drop);
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
  Future<void> fuelsearchfunction({ActionType? searchdrop}) async {
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

  // @action
  // Future<void> preinspectionfunction() async {
  //   carPageResponse = carPageResponse.copyWith(error: null, loading: true);

  //   final result = await MastercarService.preinspectionfunction();
  //   print("gxcvqsh");
  //   return result.fold(
  //     (l) {
  //       carPageResponse = carPageResponse.copyWith(
  //         error: l,
  //         loading: false,
  //       );
  //     },
  //     (r) {
  //       carPageResponse = carPageResponse.copyWith(
  //         data: r,
  //         error: null,
  //         loading: false,
  //       );
  //     },
  //   );
  // }

  @observable
  MasterTruckActionType? status;

  @observable
  String? selectedVehicle;

  @action
  void setSelectedVehicle(String? newValue) {
    selectedVehicle = newValue;
  }

  @observable
  ApiResponse<List<VehicleModel>> semitrailorPageResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> trailorfunction({MasterTruckActionType? semitruckdrop}) async {
    semitrailorPageResponse =
        semitrailorPageResponse.copyWith(error: null, loading: true);
    status = semitruckdrop;
    final result = await vehicleService.pretrailorfunction(semitruckdrop);
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
  Future<void> semifueltrucksearchfunction({ActionType? searchsemidrop}) async {
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
  ActionType? sstatus;

  @observable
  String? selectedTruckresponse;

  @action
  void setSelectedTruck(String? newValue) {
    selectedTruckresponse = newValue;
  }

  @observable
  ApiResponse<List<VehicleModel>> truckPageResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> truckPageFunction({ActionType? truckdrop}) async {
    truckPageResponse = truckPageResponse.copyWith(error: null, loading: true);
    sstatus = truckdrop;
    final result = await vehicleService.mastertruckfunction(truckdrop);
    return result.fold(
      (l) {
        truckPageResponse = truckPageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        truckPageResponse = truckPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<VehicleModel>> truckPagefuelResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> fueltrucksearchfunction(
      {value, ActionType? searchtrucksemidrop}) async {
    print(value);
    truckPagefuelResponse =
        truckPagefuelResponse.copyWith(error: null, loading: true);

    final result = await vehicleService.masterfueltruckfunction(
        searchtrucksemidrop, value);
    return result.fold(
      (l) {
        truckPagefuelResponse = truckPagefuelResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        truckPagefuelResponse = truckPagefuelResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
