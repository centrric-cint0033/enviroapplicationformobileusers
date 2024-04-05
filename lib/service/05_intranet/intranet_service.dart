import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/05_intranet/intranet_res_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IintranetService {
  Future<Either<MainFailure, intranetfldrRespModel>>
      intranetfolderservicefunction(int id);
}

@LazySingleton(as: IintranetService)
class IntranetService implements IintranetService {
  @override
  Future<Either<MainFailure, intranetfldrRespModel>>
      intranetfolderservicefunction(
    int id,
  ) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints.endpointintranetfldrlstng}/$id');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        intranetfldrRespModel intranetfldrlist =
            intranetfldrRespModel.fromJson(jsonDecode(res.body));

        return Right(intranetfldrlist);
      },
    );
  }
}
