import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/03_vehicles/master_car_page.dart';
import 'package:enviro_mobile_application/view/03_vehicles/master_truck_page.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

enum CarActionType {
  Preinspectioncheck,
  MaintenanceCheck,
  vehiclelist,
  fuelexpence
}

enum ActionType {
  Preinspectioncheck,
  MaintenanceCheck,
  vehiclelist,
  fuelexpence
}

enum MasterTruckActionType {
  Preinspectioncheck,
  MaintenanceCheck,
  vehiclelist,
  fuelexpence
}

abstract class IVehicleService {
  Future<Either<MainFailure, List<CmnvehiclepageModel>>> preinspectionfunction(
      drop);

  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      masterfuelsearchfunction(searchdrop);

  Future<Either<MainFailure, List<CmnvehiclepageModel>>> pretrailorfunction(
      semitruckdrop);

  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      masterfuelsemitruckfunction(searchdrop);

  Future<Either<MainFailure, List<CmnvehiclepageModel>>> mastertruckfunction(
      truckdrop);
  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      masterfueltruckfunction(searchtrucksemidrop, value);
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
  Future<Either<MainFailure, List<CmnvehiclepageModel>>> preinspectionfunction(
      drop) async {
    String apiUrl;
    switch (drop) {
      case MasterCarpage:
      case CarActionType.vehiclelist:
        apiUrl = ApiEndPoints.endpointcarpage;
        break;
      case CarActionType.Preinspectioncheck:
        apiUrl = ApiEndPoints.endpointpreinspectioncarcheckpage;
        break;
      case MasterTruckPage:
      case CarActionType.MaintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancecarcheckpage;
        break;
      case CarActionType.fuelexpence:
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
        List<CmnvehiclepageModel> vehicles =
            data.map((e) => CmnvehiclepageModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      masterfuelsearchfunction(searchdrop) async {
    String apiUrl;
    print('awww$searchdrop');
    switch (searchdrop) {
      case CarActionType.vehiclelist:
        apiUrl = ApiEndPoints.endpointvehiclecarlistsearch;
        break;
      case CarActionType.Preinspectioncheck:
        apiUrl = ApiEndPoints.endpointpreinspectioncarsearch;
        break;
      case CarActionType.MaintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancecarsearchcheckpage;
        MultipartRequest request =
            MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));
        request.fields['key'] = 'e';
        break;
      case CarActionType.fuelexpence:
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

        List<CmnvehiclepageModel> fuelcarsearch =
            data.map((e) => CmnvehiclepageModel.fromJson(e)).toList();
        return Right(fuelcarsearch);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<CmnvehiclepageModel>>> pretrailorfunction(
      semitruckdrop) async {
    String apiUrl;
    switch (semitruckdrop) {
      case MasterTruckActionType.vehiclelist:
        apiUrl = ApiEndPoints.endpointsemitrailorpage;
        break;
      case MasterTruckActionType.Preinspectioncheck:
        apiUrl = ApiEndPoints.endpointpreinspectionsemitruckcheckpage;
        break;

      case MasterTruckActionType.MaintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancesemitruckcheckpage;
        break;
      case MasterTruckActionType.fuelexpence:
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

        List<CmnvehiclepageModel> vehicles =
            data.map((e) => CmnvehiclepageModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      masterfuelsemitruckfunction(searchsemidrop) async {
    String apiUrl;
    print('awww$searchsemidrop');
    switch (searchsemidrop) {
      case CarActionType.vehiclelist:
        apiUrl = ApiEndPoints.endpointvehiclesemitrucklistsearch;
        break;
      case CarActionType.Preinspectioncheck:
        apiUrl = ApiEndPoints.endpointpreinspectionsemitrucksearch;
        break;
      case CarActionType.MaintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancesemitruckcheckpage;
        MultipartRequest request =
            MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));
        request.fields['key'] = 'e';
        break;
      case CarActionType.fuelexpence:
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

        List<CmnvehiclepageModel> fuelcarsearch =
            data.map((e) => CmnvehiclepageModel.fromJson(e)).toList();
        return Right(fuelcarsearch);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<CmnvehiclepageModel>>> mastertruckfunction(
      truckdrop) async {
    String apiUrl;
    switch (truckdrop) {
      case ActionType.vehiclelist:
        apiUrl = ApiEndPoints.endpointtruckpage;
        break;
      case ActionType.Preinspectioncheck:
        apiUrl = ApiEndPoints.endpointpreinspectiontruckcheckpage;
        break;

      case ActionType.MaintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancetruckcheckpage;
        break;
      case ActionType.fuelexpence:
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
        List<CmnvehiclepageModel> vehicles =
            data.map((e) => CmnvehiclepageModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      masterfueltruckfunction(trucksearchdrop, value) async {
    String apiUrl;
    print('awww$trucksearchdrop');
    switch (trucksearchdrop) {
      case CarActionType.vehiclelist:
        apiUrl = ApiEndPoints.endpointtruckpage;
        break;
      case CarActionType.Preinspectioncheck:
        apiUrl = ApiEndPoints.endpointpreinspectiontrucksearch;
        break;
      case CarActionType.MaintenanceCheck:
        apiUrl = ApiEndPoints.endpointmaintancetrucksearchcheckpage;
        MultipartRequest request =
            MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));
        request.fields['key'] = 'e';
        break;
      case CarActionType.fuelexpence:
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

        List<CmnvehiclepageModel> fuelcarsearch =
            data.map((e) => CmnvehiclepageModel.fromJson(e)).toList();
        print('OFF$fuelcarsearch');
        return Right(fuelcarsearch);
      },
    );
  }
}
