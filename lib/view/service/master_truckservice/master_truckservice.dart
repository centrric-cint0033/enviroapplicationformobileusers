import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import 'package:enviro_mobile_application/model/vehicle/res_model/all_vehicle_list/allvehiclelist_model.dart';

import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/master_truckservice/i_all_master_trucksevice.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllMasterTruckPageService)
class MasterTruckPageService implements IAllMasterTruckPageService {
  @override
  Future<Either<MainFailure, List<TruckpageModel>>>
      mastertruckfunction() async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: ApiEndPoints.endpointtruckpage,
    );
    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<TruckpageModel> vehicles =
            data.map((e) => TruckpageModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }
}
