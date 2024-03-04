import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/master_car_page/master_car_page.dart';
import 'package:enviro_mobile_application/view/master_truck_page/master_truck_page.dart';
import 'package:enviro_mobile_application/view/service/master_car_page/i_all_master_carservice.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

enum CarActionType {
  Preinspectioncheck,
  MaintenanceCheck,
  vehiclelist,
  fuelexpence
}

@LazySingleton(as: IAllMastercarService)
class MastercarService implements IAllMastercarService {
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
    switch (searchdrop) {
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
        apiUrl = ApiEndPoints.endpointmasterfuelcarsearch; // Update endpoint
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
}
