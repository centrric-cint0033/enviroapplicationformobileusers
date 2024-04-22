import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IJobCardService {
  Future<Either<MainFailure, JobCardRespModel>> jobcardservicefunction();
  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardservicefunction();
}

@LazySingleton(as: IJobCardService)
class SalesService implements IJobCardService {
  final HttpService httpService;
  SalesService(this.httpService);
  @override
  Future<Either<MainFailure, JobCardRespModel>> jobcardservicefunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointjobcard);

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

  @override
  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardservicefunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointshedulecard);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SheduleCardRespModel> shedulecardlist =
            List<SheduleCardRespModel>.from(
                data.map((e) => SheduleCardRespModel.fromJson(e)));
        return Right(shedulecardlist);
      },
    );
  }
}
