import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/vehicle/res_model/all_vehicle_list/allvehiclelist_model.dart';
import 'package:enviro_mobile_application/service/vehicle/i_all_vehicle_service.dart';

import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllVehicleListService)
class AllVehicleListRepository implements IAllVehicleListService {
  @override
  Future<Either<MainFailure, List<AllVehicleListModel>>>
      allvehiclelisting() async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: ApiEndPoints.endPointallvehiclelisting,
    );
    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<AllVehicleListModel> vehicles =
            data.map((e) => AllVehicleListModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }
}
