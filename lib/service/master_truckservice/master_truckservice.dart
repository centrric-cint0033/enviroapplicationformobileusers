import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/master_car_page/master_car_service.dart';
import 'package:enviro_mobile_application/view/service/master_truckservice/i_all_master_trucksevice.dart';
import 'package:http/http.dart';
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
