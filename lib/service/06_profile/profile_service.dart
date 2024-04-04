import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/06_profile/profile_model/profile_res_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';

import 'package:injectable/injectable.dart';

abstract class IprofileService {
  Future<Either<MainFailure, ProfileRespModel>> profileservicefunction();
  Future<Either<Map<MainFailure, dynamic>, List<ProfileRespModel>>>
      profileEditApi({required Map<String, String> data});
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

  @override
  Future<Either<Map<MainFailure, dynamic>, List<ProfileRespModel>>>
      profileEditApi({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'PATCH', apiUrl: ApiEndPoints.endpointprofileedit);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<ProfileRespModel> profileedit =
            data.map((e) => ProfileRespModel.fromJson(e)).toList();
        return Right(profileedit);
      },
    );
  }
}
