import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

enum VehicleActionType {
  preInspectionCheck,
  maintenanceCheck,
  vehicleList,
  fuelExpence,
}

abstract class IVehicleService {
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterTruckServiceApi(truckdrop, {int? page});

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterTruckSearchServiceApi(searchtrucksemidrop, value, {int? page});

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterCarServiceApi(VehicleActionType? status, {int? page});

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterCarSearchServiceApi(
    VehicleActionType? status,
    String value, {
    int? page,
  });

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      semiTrailorServiceApi(VehicleActionType? status);

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      semiTrailorSearchServiceApi(VehicleActionType? status, String value);
}

@LazySingleton(as: IVehicleService)
class VehicleService implements IVehicleService {
  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterTruckServiceApi(truckdrop, {int? page}) async {
    String apiUrl;

    String pagination = '?page=${page ?? 1}&limit=10';

    switch (truckdrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints().vehTruck;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints().vehTruckPreInspection;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints().vehTruckPreMaintenance;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints().vehTruckFuelExpense;
        break;
      default:
        apiUrl = ApiEndPoints().vehTruck;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterTruckSearchServiceApi(trucksearchdrop, value, {int? page}) async {
    String apiUrl;
    String pagination = '?page=${page ?? 1}&limit=10';
    Map<String, String>? _data = {"key": value};
    switch (trucksearchdrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints().vehTruckSearch;
        _data = {"key": value};
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints().vehTruckPreInspectionSearch;
        _data = {"registration": value};
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints().vehTruckPreMaintenanceSearch;
        _data = {"key": value};
        break;
      case VehicleActionType.fuelExpence:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehTruckFuelExpenseSearch;
        break;
      default:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehTruckSearch;
        break;
    }

    var response = await getIt<HttpService>().multipartRequest(
      data: _data,
      method: 'POST',
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> fuelcarsearch =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(fuelcarsearch);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterCarServiceApi(VehicleActionType? status, {int? page}) async {
    String apiUrl;
    String pagination = '?page=${page ?? 1}&limit=10';

    switch (status) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints().vehCar;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints().vehCarPreInspection;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints().vehCarPreMaintenance;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints().vehCarFuelExpense;
        break;
      default:
        apiUrl = ApiEndPoints().vehCar;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterCarSearchServiceApi(
    VehicleActionType? status,
    String value, {
    int? page,
  }) async {
    String apiUrl;
    String pagination = '?page=${page ?? 1}&limit=10';

    Map<String, String>? _data = {"key": value};
    switch (status) {
      case VehicleActionType.vehicleList:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehCarSearch;
        break;
      case VehicleActionType.preInspectionCheck:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehCarPreInspectionSearch;
        break;
      case VehicleActionType.maintenanceCheck:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehCarPreMaintenanceSearch;
        break;
      case VehicleActionType.fuelExpence:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehCarFuelExpenseSearch;
        break;
      default:
        apiUrl = ApiEndPoints().vehCarSearch;
        break;
    }

    var response = await getIt<HttpService>().multipartRequest(
      data: _data,
      method: 'POST',
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<VehicleModel> fuelcarsearch =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(fuelcarsearch);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      semiTrailorServiceApi(VehicleActionType? status) async {
    String apiUrl;
    switch (status) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints().vehSemiTrailer;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints().vehSemiTrailerPreInspection;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints().vehSemiTailerMaintenance;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints().vehSemiTailerFuelExpenses;
        break;
      default:
        apiUrl = ApiEndPoints().vehSemiTrailer;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      semiTrailorSearchServiceApi(
          VehicleActionType? status, String value) async {
    Map<String, String>? _data = {"key": value};

    String apiUrl;
    switch (status) {
      case VehicleActionType.vehicleList:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehSemiTrailerSearch;
        break;
      case VehicleActionType.preInspectionCheck:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehSemiTrailerPreInspectionSearch;
        break;
      case VehicleActionType.maintenanceCheck:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehSemiTrailerMaintenanceSearch;
        break;
      case VehicleActionType.fuelExpence:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehSemiTrailerFuelExpenseSearch;
        break;
      default:
        apiUrl = ApiEndPoints().vehSemiTrailerSearch;
        break;
    }

    var response = await getIt<HttpService>()
        .multipartRequest(apiUrl: apiUrl, method: 'POST', data: _data);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }
}
