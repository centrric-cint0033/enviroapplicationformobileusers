import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/06_profile/profile_model/profile_res_model.dart';
import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';

import 'package:injectable/injectable.dart';

abstract class IJobCardService {
  Future<Either<MainFailure, JobCardRespModel>> jobcarservicefunction();
}

@LazySingleton(as: IJobCardService)
class JobCardService implements IJobCardService {
  @override
  Future<Either<MainFailure, JobCardRespModel>> jobcarservicefunction() async {
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
        JobCardRespModel jobcardlist =
            JobCardRespModel.fromJson(jsonDecode(res.body));
        return Right(jobcardlist);
      },
    );
  }
}
