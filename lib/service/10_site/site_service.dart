import 'dart:convert';
import 'package:enviro_mobile_application/model/10_site/number_of_clients_res_model/number_of_clients_res_model.dart';
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
        return Right(siteFolderList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addSiteFolders(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().addSiteFolders);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right("Successfully added");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editSiteFolders(
      {required Map<String, String> data, required int folderId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().editSiteFolders}$folderId/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteSiteFolders(
      {required int folderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().deleteSiteFolders}$folderId/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      siteFolderSearchApi({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().searchSiteFolders);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        List<FolderModel> searchedFolderList =
            List<FolderModel>.from(data.map((e) => FolderModel.fromJson(e)));
        List<FolderModel> searchedFolderListt = List<FolderModel>.from(
            data.map((e) => FolderModel(folders: searchedFolderList)));

        FolderListModel searchedFolderListtt =
            FolderListModel(folders: searchedFolderListt);
        return Right(searchedFolderListtt);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addSiteFiles(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().addSiteFiles);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return Right("Success");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editSiteFiles(
      {required Map<String, String> data, required int fileId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().editSiteFiles}$fileId/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteSiteFiles(
      {required int fileId, required int folderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().deleteSiteFiles}$fileId/$folderId/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required int fileId, required String expiry}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: {"date": expiry},
        method: 'PUT',
        apiUrl: "${ApiEndPoints().filesExpiry}$fileId/");
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        FolderListModel expiry = FolderListModel.fromJson(data);
        return Right(expiry);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      fileFolderSearchApi({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'POST',
        apiUrl: ApiEndPoints().searchSiteFileFolders);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        FolderListModel searchedfileFolderList = FolderListModel.fromJson(data);
        return Right(searchedfileFolderList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, NumberOfClientsResModel>>
      getNumberOfClients() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().numberOfClients);

    return response.fold(
      (l) => Left(l),
      (res) async {
        NumberOfClientsResModel numberOfClients =
            NumberOfClientsResModel.fromJson(jsonDecode(res.body));
        return Right(numberOfClients);
      },
    );
  }
}
