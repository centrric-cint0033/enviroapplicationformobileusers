import 'dart:convert';
import 'dart:developer';

import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/service/10_site/i_site_service.dart';
import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';

import '../../utilis/injection.dart';
import '../../utilis/httpservice.dart';
import '../../utilis/api_endpoints/api_endpoints.dart';
import '../../model/02_sales/waste_type_model/waste_type_model.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';

@LazySingleton(as: ISiteService)
class SiteService implements ISiteService {
  @override
  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>>
      getPermanantSites({
    int? page,
  }) async {
    String url = "${ApiEndPoints().permanentSites}?page=${page ?? 1}&limit=10";
    var response = await getIt<HttpService>().request(
      apiUrl: url,
      authenticated: true,
      method: HttpMethod.get,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SiteResModel> sites =
            data.map((e) => SiteResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>>
      getDeletedSites({
    int? page,
  }) async {
    String url = "${ApiEndPoints().deletedSites}?page=${page ?? 1}&limit=10";
    var response = await getIt<HttpService>().request(
      apiUrl: url,
      authenticated: true,
      method: HttpMethod.get,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SiteResModel> sites =
            data.map((e) => SiteResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>>
      getTemporarySites({
    int? page,
  }) async {
    String url = "${ApiEndPoints().temporarySites}?page=${page ?? 1}&limit=10";
    var response = await getIt<HttpService>().request(
      apiUrl: url,
      authenticated: true,
      method: HttpMethod.get,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SiteResModel> sites =
            data.map((e) => SiteResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, SiteResModel>> getSiteDetails({
    required int id,
  }) async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: "${ApiEndPoints().siteDetail}$id/",
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        return Right(SiteResModel.fromJson(data));
      },
    );
  }

  // @override
  // Future<Either<Map<MainFailure, dynamic>, FolderResModel>> getSiteFolders({
  //   required int id,
  // }) async {
  //   var response = await getIt<HttpService>().request(
  //     authenticated: true,
  //     method: HttpMethod.get,
  //     apiUrl: "${ApiEndPoints().siteFolders}$id/1/",
  //   );

  //   return response.fold(
  //     (l) => Left(l),
  //     (res) async {
  //       var data = jsonDecode(res.body);
  //       return Right(FolderResModel.fromJson(data));
  //     },
  //   );
  // }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>>
      searchSitesServiceApi({
    required String key,
  }) async {
    customPrint(content: key);
    var response = await getIt<HttpService>().multipartRequest(
      apiUrl: ApiEndPoints().searchSite,
      data: {"key": key},
      method: "POST",
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SiteResModel> sites =
            data.map((e) => SiteResModel.fromJson(e)).toList();
        return Right(sites);
      },
    );
  }

  // @override
  // Future<Either<Map<MainFailure, dynamic>, List<Folder>>> searchSiteFolder({
  //   required String key,
  // }) async {
  //   customPrint(content: key);
  //   var response = await getIt<HttpService>().multipartRequest(
  //     method: "POST",
  //     apiUrl: ApiEndPoints().searchSiteFolder,
  //     data: {
  //       "key": key,
  //       "site": 1294,
  //       "folder_id": 1,
  //       "search_type": "site-individual-private",
  //     },
  //   );
  //   return response.fold(
  //     (l) => Left(l),
  //     (res) async {
  //       var data = jsonDecode(res.body) as List;
  //       List<Folder> folders = data.map((e) => Folder.fromJson(e)).toList();
  //       return Right(folders);
  //     },
  //   );
  // }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<WasteTypeModel>>>
      getWasteTypeInSites({required int id}) async {
    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: "${ApiEndPoints().wasteTypeInSite}$id/",
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<WasteTypeModel> wasteTypes =
            data.map((e) => WasteTypeModel.fromJson(e)).toList();
        return Right(wasteTypes);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getSiteFolderss(
      {required num id, required num parentFolderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints().siteFolders}$id/$parentFolderId');

    return response.fold(
      (l) => Left(l),
      (res) async {
        FolderListModel siteFolderList =
            FolderListModel.fromJson(jsonDecode(res.body));
        log(siteFolderList.toString());
        return Right(siteFolderList);
      },
    );
  }
}
