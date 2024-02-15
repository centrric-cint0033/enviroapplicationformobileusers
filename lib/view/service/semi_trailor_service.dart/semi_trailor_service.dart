import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/semi_trailor_service.dart/i_all_semi_trailor_pageservice.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllSemiTrailorPageService)
class SemiTrailorPageService implements IAllSemiTrailorPageService {
  @override
  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      trailorfunction() async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: ApiEndPoints.endpointsemitrailorpage,
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
