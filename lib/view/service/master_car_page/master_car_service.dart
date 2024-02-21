import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/master_car_page/master_car_page.dart';
import 'package:enviro_mobile_application/view/service/master_car_page/i_all_master_carservice.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

enum ActionType {
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
      case ActionType.Preinspectioncheck:
        apiUrl = ApiEndPoints.endpointpreinspectioncheckpage;
        break;
      case ActionType.MaintenanceCheck:
        apiUrl = ApiEndPoints.endpointsemitrailorpage;
        break;
      case ActionType.fuelexpence:
        apiUrl = ApiEndPoints.endpointtruckpage;
        break;
      case ActionType.vehiclelist:
        apiUrl = ApiEndPoints.endpointsemitrailorpage;
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
}
