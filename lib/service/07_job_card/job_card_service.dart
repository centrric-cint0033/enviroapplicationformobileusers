import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';

import 'package:injectable/injectable.dart';

abstract class IJobCardService {
  Future<Either<MainFailure, JobCardRespModel>> getJobCardInfo({
    required String quoteId,
  });
}

@LazySingleton(as: IJobCardService)
class JobCardService implements IJobCardService {
  @override
  Future<Either<MainFailure, JobCardRespModel>> getJobCardInfo({
    required String quoteId,
  }) async {
    String apiUrl = "${ApiEndPoints.endpointJobcard}/$quoteId";
    var response = await getIt<HttpService>().request(
      apiUrl: apiUrl,
      authenticated: true,
      method: HttpMethod.get,
    );

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
