import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/master_truckservice/i_all_master_trucksevice.dart';
import 'package:injectable/injectable.dart';

enum ActionType {
  Preinspectioncheck,
  MaintenanceCheck,
  vehiclelist,
  fuelexpence
}

@LazySingleton(as: IAllMasterTruckPageService)
class MasterTruckPageService implements IAllMasterTruckPageService {
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
