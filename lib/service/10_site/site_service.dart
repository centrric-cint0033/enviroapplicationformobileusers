import 'dart:convert';

import 'package:http/http.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/service/10_site/i_site_service.dart';
import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';

import '../../utilis/injection.dart';
import '../../utilis/httpservice.dart';
import '../../utilis/api_endpoints/api_endpoints.dart';
import '../../model/10_site/folder_res_model/folder_res_model.dart';

@LazySingleton(as: ISiteService)
class SiteService implements ISiteService {
  @override
  Future<Either<MainFailure, List<SiteResModel>>> getPermanantSites({
    int? page,
  }) async {
    String url =
        "${ApiEndPoints.endpointPermanentSites}?page=${page ?? 1}&limit=10";
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

        List<SiteResModel> sites =
            data.map((e) => SiteResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<SiteResModel>>> getDeletedSites({
    int? page,
  }) async {
    String url =
        "${ApiEndPoints.endpointDeletedSites}?page=${page ?? 1}&limit=10";
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

        List<SiteResModel> sites =
            data.map((e) => SiteResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<SiteResModel>>> getTemporarySites({
    int? page,
  }) async {
    String url =
        "${ApiEndPoints.endpointTemporarySites}?page=${page ?? 1}&limit=10";
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

        List<SiteResModel> sites =
            data.map((e) => SiteResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }

  @override
  Future<Either<MainFailure, SiteResModel>> getSiteDetails({
    required int id,
  }) async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: "${ApiEndPoints.endpointSiteDetail}$id/",
    );

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);

        return Right(SiteResModel.fromJson(data));
      },
    );
  }

  @override
  Future<Either<MainFailure, FolderResModel>> getSiteFolders({
    required int id,
  }) async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: "${ApiEndPoints.endpointSiteFolders}$id/1/",
    );

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);

        return Right(FolderResModel.fromJson(data));
      },
    );
  }

  @override
  Future<Either<MainFailure, List<SiteResModel>>> searchSites({
    required String key,
  }) async {
    MultipartRequest request = MultipartRequest(
        "POST", Uri.parse("$baseUrl${ApiEndPoints.endpointSearchSite}"));
    request.fields['key'] = key;
    var response =
        await getIt<HttpService>().multipartRequest(request: request);

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
