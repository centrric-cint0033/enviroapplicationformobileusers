import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';

import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../utilis/main_failure.dart';

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
  Future<void> masterTruckApi({int? page}) async {
    if (vehicleTextCtr.text.isNotEmpty) {
      masterTruckSearchServiceApi(vehicleTextCtr.text);
    } else {
      masterTruckApiResponse = masterTruckApiResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );
      final result = await vehicleService
          .masterTruckServiceApi(vehicleStatusType, page: page);
      return _commonMasterTruckResultHandler(result: result, page: page);
    }
  }

  @action
  Future<void> masterTruckSearchServiceApi(String value, {int? page}) async {
    masterTruckApiResponse = masterTruckApiResponse.copyWith(
      errors: null,
      loading: page == null,
      paginationLoading: page != null,
    );

    final result = await vehicleService.masterTruckSearchServiceApi(
      vehicleStatusType,
      value,
    );

    return _commonMasterTruckResultHandler(result: result, page: page);
  }

  void _commonMasterTruckResultHandler({
    int? page,
    required Either<Map<MainFailure, dynamic>, List<VehicleModel>> result,
  }) {
    result.fold(
      (l) {
        masterTruckApiResponse = masterTruckApiResponse.copyWith(
          errors: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (r) {
        List<VehicleModel> list = masterTruckApiResponse.data?.toList() ?? [];
        if (page == null) {
          list = r;
        } else {
          list.addAll(r);
        }

        masterTruckApiResponse = masterTruckApiResponse.copyWith(
          data: list,
          errors: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: r.length == 10,
        );
      },
    );
  }

  ScrollController masterTruckController = ScrollController();

  void masterTruckPagination() {
    masterTruckController.addListener(() {
      if (masterTruckController.position.pixels ==
              masterTruckController.position.maxScrollExtent &&
          !masterTruckController.position.outOfRange &&
          masterTruckApiResponse.pagination &&
          !masterTruckApiResponse.paginationLoading) {
        int pageNo = masterTruckApiResponse.pageNo + 1;
        if (vehicleTextCtr.text.isNotEmpty) {
          masterTruckSearchServiceApi(vehicleTextCtr.text, page: pageNo);
          return;
        }
        masterTruckApi(page: pageNo);
      }
    });
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
  Future<void> masterCarApi({int? page}) async {
    if (vehicleTextCtr.text.isNotEmpty) {
      masterCarSearchApi(vehicleTextCtr.text);
    } else {
      masterCarApiResponse = masterCarApiResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );
      final result = await vehicleService.masterCarServiceApi(
        vehicleStatusType,
        page: page,
      );
      return _commonMasterCarResultHandler(result: result, page: page);
    }
  }

  @action
  Future<void> masterCarSearchApi(String value, {int? page}) async {
    masterCarApiResponse = masterCarApiResponse.copyWith(
      errors: null,
      loading: page == null,
      paginationLoading: page != null,
    );

    final result = await vehicleService.masterCarSearchServiceApi(
      vehicleStatusType,
      value,
      page: page,
    );
    return _commonMasterCarResultHandler(result: result, page: page);
  }

  void _commonMasterCarResultHandler({
    int? page,
    required Either<Map<MainFailure, dynamic>, List<VehicleModel>> result,
  }) {
    result.fold(
      (l) {
        masterCarApiResponse = masterCarApiResponse.copyWith(
          errors: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (r) {
        List<VehicleModel> list = masterCarApiResponse.data?.toList() ?? [];
        if (page == null) {
          list = r;
        } else {
          list.addAll(r);
        }

        masterCarApiResponse = masterCarApiResponse.copyWith(
          data: list,
          errors: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: r.length == 10,
        );
      },
    );
  }

  ScrollController masterCarController = ScrollController();

  void masterCarPagination() {
    masterCarController.addListener(() {
      if (masterCarController.position.pixels ==
              masterCarController.position.maxScrollExtent &&
          !masterCarController.position.outOfRange &&
          masterCarApiResponse.pagination &&
          !masterCarApiResponse.paginationLoading) {
        int pageNo = masterCarApiResponse.pageNo + 1;
        if (vehicleTextCtr.text.isNotEmpty) {
          masterCarSearchApi(vehicleTextCtr.text, page: pageNo);
          return;
        }
        masterCarApi(page: pageNo);
      }
    });
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

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
