import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/03_vehicles/master_car_page.dart';
import 'package:enviro_mobile_application/view/03_vehicles/master_truck_page.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

enum VehicleActionType {
  preInspectionCheck,
  maintenanceCheck,
  vehicleList,
  fuelExpence,
}

abstract class IVehicleService {
  Future<Either<MainFailure, List<VehicleModel>>> preinspectionfunction(drop);

  Future<Either<MainFailure, List<VehicleModel>>> masterfuelsearchfunction(
      searchdrop);

  Future<Either<MainFailure, List<VehicleModel>>> pretrailorfunction(
      semitruckdrop);

  Future<Either<MainFailure, List<VehicleModel>>> masterfuelsemitruckfunction(
      searchdrop);

  Future<Either<MainFailure, List<VehicleModel>>> mastertruckfunction(
      truckdrop);
  Future<Either<MainFailure, List<VehicleModel>>> masterfueltruckfunction(
      searchtrucksemidrop, value);
}

@LazySingleton(as: IVehicleService)
class VehicleService implements IVehicleService {
  // @override
  // Future<Either<MainFailure, List<CmnvehiclepageModel>>>
  //     mastercarfunction() async {
  //   var response = await getIt<HttpService>().request(
  //     authenticated: true,
  //     method: HttpMethod.get,
  //     apiUrl: ApiEndPoints.endpointcarpage,
  //   );
  //   return response.fold(
  //     (l) {
  //       (l.values.first);
  //       return Left(l.keys.first);
  //     },
  //     (res) async {
  //       var data = jsonDecode(res.body) as List;

  //       List<CmnvehiclepageModel> vehicles =
  //           data.map((e) => CmnvehiclepageModel.fromJson(e)).toList();
  //       return Right(vehicles);
  //     },
  //   );
  // }

  @override
  Future<Either<MainFailure, List<VehicleModel>>> preinspectionfunction(
      drop) async {
    String apiUrl;
    switch (drop) {
      case MasterCarpage:
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints.endpointcarpage;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints.endpointpreinspectioncarcheckpage;
        break;
      case MasterTruckPage:
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancecarcheckpage;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints.endpointfuelcarcheckpage;

        break;

      default:
        apiUrl = ApiEndPoints.endpointcarpage;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl,
    );

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<VehicleModel>>> masterfuelsearchfunction(
      searchdrop) async {
    String apiUrl;
    print('awww$searchdrop');
    switch (searchdrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints.endpointvehiclecarlistsearch;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints.endpointpreinspectioncarsearch;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancecarsearchcheckpage;
        MultipartRequest request =
            MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));
        request.fields['key'] = 'e';
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints.endpointmasterfuelcarsearch;
        break;
      default:
        apiUrl = ApiEndPoints.endpointmasterfuelcarsearch;
        break;
    }

    MultipartRequest request =
        MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));

    request.fields['registration'] = 'e';

    var response =
        await getIt<HttpService>().multipartRequest(request: request);

    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<VehicleModel> fuelcarsearch =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(fuelcarsearch);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<VehicleModel>>> pretrailorfunction(
      semitruckdrop) async {
    String apiUrl;
    switch (semitruckdrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints.endpointsemitrailorpage;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints.endpointpreinspectionsemitruckcheckpage;
        break;

      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancesemitruckcheckpage;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints.endpointfuelsemitruckcheckpage;
        break;

      default:
        apiUrl = ApiEndPoints.endpointsemitrailorpage;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl,
    );

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<VehicleModel>>> masterfuelsemitruckfunction(
      searchsemidrop) async {
    String apiUrl;
    print('awww$searchsemidrop');
    switch (searchsemidrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints.endpointvehiclesemitrucklistsearch;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints.endpointpreinspectionsemitrucksearch;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancesemitruckcheckpage;
        MultipartRequest request =
            MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));
        request.fields['key'] = 'e';
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints.endpointmasterfuelcarsearch;
        break;
      default:
        apiUrl = ApiEndPoints.endpointmasterfuelcarsearch;
        break;
    }

    MultipartRequest request =
        MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));

    request.fields['registration'] = 'e';

    var response =
        await getIt<HttpService>().multipartRequest(request: request);
    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<VehicleModel> fuelcarsearch =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(fuelcarsearch);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<VehicleModel>>> mastertruckfunction(
      truckdrop) async {
    String apiUrl;
    switch (truckdrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints.endpointtruckpage;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints.endpointpreinspectiontruckcheckpage;
        break;

      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancetruckcheckpage;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints.endpointfueltruckcheckpage;
        break;

      default:
        apiUrl = ApiEndPoints.endpointtruckpage;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl,
    );

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<VehicleModel>>> masterfueltruckfunction(
      trucksearchdrop, value) async {
    String apiUrl;
    print('awww$trucksearchdrop');
    switch (trucksearchdrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints.endpointtruckpage;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints.endpointpreinspectiontrucksearch;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancetrucksearchcheckpage;
        MultipartRequest request =
            MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));
        request.fields['key'] = 'e';
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints.endpointtruckfuelsearch;
        break;
      default:
        apiUrl = ApiEndPoints.endpointtruckfuelsearch;
        break;
    }

    MultipartRequest request =
        MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));

    request.fields['registration'] = 'e';

    var response =
        await getIt<HttpService>().multipartRequest(request: request);

    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<VehicleModel> fuelcarsearch =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        print('OFF$fuelcarsearch');
        return Right(fuelcarsearch);
      },
    );
  }
}
