import 'dart:convert';

import 'package:dartz/dartz.dart';
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

  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      masterfuelsearchfunction() async {
    Map<String, String> requestBody = <String, String>{'registration': 'E'};
    Map<String, String> headers = <String, String>{
      'Authorization':
          'Basic ${base64Encode(utf8.encode(' "access": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzA5MjA1MDY1LCJqdGkiOiI4ZWZhYWI2Y2ZiZjM0Yzg1YWJmMTY5MjBmYTk5ZTBkOCIsInVzZXJfaWQiOjI2Mn0.OiZJQ9tmVccbA6bOv7dmDCkjYVwN4oy4nVu8Cfc48Vo'))}'
    };
    var uri = Uri.parse(ApiEndPoints.endpointmasterfuelsearch);
    var request = http.MultipartRequest('POST', uri)
      ..headers.addAll(headers)
      ..fields.addAll(requestBody);
    var response = await request.send();
    final respStr = await response.stream.bytesToString();
    print('poem$respStr');
    return jsonDecode(respStr);
  }
}
