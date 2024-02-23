import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/semi_trailor_service.dart/i_all_semi_trailor_pageservice.dart';

import 'package:injectable/injectable.dart';

enum MasterTruckActionType {
  Preinspectioncheck,
  MaintenanceCheck,
  vehiclelist,
  fuelexpence
}

@LazySingleton(as: IAllSemiTrailorPageService)
class SemiTrailorPageService implements IAllSemiTrailorPageService {
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
}
