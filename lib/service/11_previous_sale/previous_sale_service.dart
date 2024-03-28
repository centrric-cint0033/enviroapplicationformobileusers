import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';

import '../../utilis/injection.dart';
import 'i_previous_sale_service.dart';
import '../../utilis/httpservice.dart';
import '../../utilis/api_endpoints/api_endpoints.dart';
import '../../model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';

@LazySingleton(as: IPreviousSaleService)
class PreviousSaleService implements IPreviousSaleService {
  @override
  Future<Either<MainFailure, List<PreviousSaleResModel>>> getPreviousSale({
    int? page,
    required int siteId,
  }) async {
    String url =
        "${ApiEndPoints.endpointPreviousSale}$siteId/all/?page=${page ?? 1}&limit=10";
    var response = await getIt<HttpService>().request(
      apiUrl: url,
      authenticated: true,
      method: HttpMethod.get,
    );

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<PreviousSaleResModel> sites =
            data.map((e) => PreviousSaleResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }
}
