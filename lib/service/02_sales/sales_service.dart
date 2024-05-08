import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class ISalesService {
  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      saleslistServiceApi({
    required String year,
    required String month,
  });

  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      saleJoblistApiService({int? page});

  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      quoteRegisterServiceApi({int? page});

  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      salesJobListSearchServiceApi({
    required Map<String, String> data,
    int? page,
  });

  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      salesQuoteListSearchServiceApi({
    int? page,
    required Map<String, String> data,
  });
  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      salesQuoteDetailApi({
    int? page,
    required String id,
    required String year,
    required String month,
  });
  Future<Either<Map<MainFailure, dynamic>, SalesModel>> salesJobDetailApi({
    required String id,
  });
  Future<Either<Map<MainFailure, dynamic>, SalesModel>> quoteRegDetailApi({
    required String id,
  });
}

@LazySingleton(as: ISalesService)
class SalesService implements ISalesService {
  final HttpService httpService;
  SalesService(this.httpService);

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      saleslistServiceApi({required String year, required String month}) async {
    String? apiUrl = "${ApiEndPoints().saleslist}/$year/$month";
    var response = await httpService.request(
      apiUrl: apiUrl,
      authenticated: true,
      method: HttpMethod.get,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        List<SalesModel> saleslistvehicle = List<SalesModel>.from(
            data['app_data'].map((e) => SalesModel.fromJson(e)));
        return Right(saleslistvehicle);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      salesJobListSearchServiceApi({
    required Map<String, String> data,
    int? page,
  }) async {
    String apiUrl =
        "${ApiEndPoints().salesJobSearch}/?page=${page ?? 1}&limit=10";
    var response = await httpService.multipartRequest(
      data: data,
      method: 'POST',
      apiUrl: apiUrl,
    );
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SalesModel> quoteregvehicle =
            data.map((e) => SalesModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      saleJoblistApiService({int? page}) async {
    String apiUrl = "${ApiEndPoints().joblist}/${page ?? 1}/?limit=10";
    var response = await httpService.request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SalesModel> quoteregvehicle =
            data.map((e) => SalesModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      quoteRegisterServiceApi({int? page}) async {
    String apiUrl =
        "${ApiEndPoints().quoteregvehiclelist}/?page=${page ?? 1}&limit=10";
    var response = await httpService.request(
      apiUrl: apiUrl,
      authenticated: true,
      method: HttpMethod.get,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SalesModel> quoteregvehicle =
            data.map((e) => SalesModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      salesQuoteListSearchServiceApi({
    int? page,
    required Map<String, String> data,
  }) async {
    String apiUrl =
        "${ApiEndPoints().saleQuoteSearch}/?page=${page ?? 1}&limit=10";
    var response = await httpService.multipartRequest(
      data: data,
      method: 'POST',
      apiUrl: apiUrl,
    );
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SalesModel> quoteregvehicle =
            data.map((e) => SalesModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SalesModel>>>
      salesQuoteDetailApi({
    int? page,
    required String id,
    required String year,
    required String month,
  }) async {
    String apiUrl =
        "${ApiEndPoints().salesQuoteDetails}/$id/${page ?? 1}/?limit=10&month=$month&year=$year";
    var response = await httpService.request(
      apiUrl: apiUrl,
      authenticated: true,
      method: HttpMethod.get,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SalesModel> quoteregvehicle =
            data.map((e) => SalesModel.fromJson(e)).toList();
        return Right(quoteregvehicle);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, SalesModel>> salesJobDetailApi({
    required String id,
  }) async {
    var response = await httpService.request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: "${ApiEndPoints().salesJobDetails}/$id",
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body)["data"]["quote"];

        /// Return the specific data due to type mismatch in the common model
        return Right(
          SalesModel.fromJson({
            "quote_file": data["quote_file"],
            "received_file": data["received_file"],
            "attached_files": data["attached_files"],
            "template_response": data["template_response"],
          }),
        );
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, SalesModel>> quoteRegDetailApi({
    required String id,
  }) async {
    var response = await httpService.request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: "${ApiEndPoints().salesQuoteRegDetails}/$id",
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body)["data"]["quote"];

        /// Return the specific data due to type mismatch in the common model
        return Right(
          SalesModel.fromJson({
            "quote_file": data["quote_file"],
            "received_file": data["received_file"],
            "attached_files": data["attached_files"],
            "template_response": data["template_response"],
          }),
        );
      },
    );
  }
}
