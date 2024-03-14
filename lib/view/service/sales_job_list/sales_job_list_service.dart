import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/quoterego/res_model/quote_rego_res_model.dart';
import 'package:enviro_mobile_application/model/saleslist/resmodel/saleslist_resmodel.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/sales_job_list/i_all_sales_job_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllSalesJobPageService)
class SalesJobPageService implements IAllSalesJobPageService {
  @override
  Future<Either<MainFailure, List<SalesJobListstRegResModel>>>
      vehiclejoblistfunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointjoblist);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<SalesJobListstRegResModel> quoteregvehicle =
            data.map((e) => SalesJobListstRegResModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }
}
