import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/05_intranet/intranet_res_model.dart';
import 'package:enviro_mobile_application/model/06_profile/profile_model/profile_res_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IprofileService {
  Future<Either<MainFailure, ProfileRespModel>> profileservicefunction();
}

@LazySingleton(as: IprofileService)
class ProfileService implements IprofileService {
  @override
  Future<Either<MainFailure, ProfileRespModel>> profileservicefunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointprofilelstng);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        ProfileRespModel intranetfldrlist =
            ProfileRespModel.fromJson(jsonDecode(res.body));

        return Right(intranetfldrlist);
      },
    );
  }

  // @override
  // Future<Either<MainFailure, ProfileRespModel>> profileservicefunction() async {
  //   var response = await getIt<HttpService>().request(
  //       authenticated: true,
  //       method: HttpMethod.get,
  //       apiUrl: ApiEndPoints.endpointprofilelstng);

  //   return response.fold(
  //     (l) {
  //       (l.values.first);
  //       return Left(l.keys.first);
  //     },
  //     (res) async {
  //       ProfileRespModel intranetfldrlist =
  //           ProfileRespModel.fromJson(jsonDecode(res.body));

  //       return Right(intranetfldrlist);
  //     },
  //   );
  // }
}
