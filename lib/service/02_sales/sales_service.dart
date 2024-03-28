import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class ISalesService {
  Future<Either<MainFailure, List<SalesModel>>> saleslistfunction();

  Future<Either<MainFailure, List<SalesModel>>> vehiclejoblistfunction();

  Future<Either<MainFailure, List<SalesModel>>> quoteregfunction();
}

@LazySingleton(as: ISalesService)
class SalesService implements ISalesService {
  @override
  Future<Either<MainFailure, List<SalesModel>>> saleslistfunction() async {
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

        List<SalesModel> saleslistvehicle = List<SalesModel>.from(
            data['app_data'].map((e) => SalesModel.fromJson(e)));

        return Right(saleslistvehicle);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<SalesModel>>> vehiclejoblistfunction() async {
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

        List<SalesModel> quoteregvehicle =
            data.map((e) => SalesModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<SalesModel>>> quoteregfunction() async {
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

        List<SalesModel> quoteregvehicle =
            data.map((e) => SalesModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }
}
