import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/model/home/res_model/homerespmodel.dart';

import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';

import 'package:enviro_mobile_application/view/service/home/i_homeservice.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeService)
class HomeRepository implements IHomeService {
  @override
  Future<Either<MainFailure, HomeRespModel>> permissions() async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: ApiEndPoints.endPointpermissions,
    );
    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body)["data"];
        return Right(HomeRespModel.fromJson(data));
      },
    );
  }
}
