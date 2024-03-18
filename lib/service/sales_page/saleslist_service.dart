import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/quoterego/res_model/quote_rego_res_model.dart';
import 'package:enviro_mobile_application/model/sales/res_model/salesresp_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/quote_reg_page/i_all_quote_reg_service.dart';
import 'package:enviro_mobile_application/view/service/sales_page/i_all_sales_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllSalesService)
class SalesListPageService implements IAllSalesService {
  @override
  Future<Either<MainFailure, List<SalesListResModel>>>
      saleslistfunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointsaleslist);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);

        List<SalesListResModel> saleslistvehicle = List<SalesListResModel>.from(
            data['app_data'].map((e) => SalesListResModel.fromJson(e)));

        return Right(saleslistvehicle);
      },
    );
  }
}
