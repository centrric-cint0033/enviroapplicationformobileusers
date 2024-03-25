import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/quoterego/res_model/quote_rego_res_model.dart';
import 'package:enviro_mobile_application/model/sales/res_model/salesresp_model.dart';
import 'package:enviro_mobile_application/model/saleslist/resmodel/saleslist_resmodel.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class ISalesService {
  Future<Either<MainFailure, List<SalesListResModel>>> saleslistfunction();

  Future<Either<MainFailure, List<SalesJobListstRegResModel>>>
      vehiclejoblistfunction();

  Future<Either<MainFailure, List<QuoteRegResModel>>> quoteregfunction();
}

@LazySingleton(as: ISalesService)
class SalesService implements ISalesService {
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

  @override
  Future<Either<MainFailure, List<QuoteRegResModel>>> quoteregfunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointquoteregvehiclelist);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<QuoteRegResModel> quoteregvehicle =
            data.map((e) => QuoteRegResModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }
}
