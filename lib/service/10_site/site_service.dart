import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/service/10_site/i_site_service.dart';
import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';

import '../../utilis/injection.dart';
import '../../utilis/httpservice.dart';
import '../../utilis/api_endpoints/api_endpoints.dart';

@LazySingleton(as: ISiteService)
class SiteService implements ISiteService {
  @override
  Future<Either<MainFailure, List<SiteResModel>>> getSites({int? page}) async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: ApiEndPoints.endpointSites,
    );

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<SiteResModel> sites =
            data.map((e) => SiteResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }
}
