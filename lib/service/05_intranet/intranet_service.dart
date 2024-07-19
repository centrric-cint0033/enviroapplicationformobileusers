import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IintranetService {
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      intranetFolderServiceApi(int id);
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getIntranetFolders(
      {required num parentFolderId});
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addIntranetFolders(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> editIntranetFolders(
      {required Map<String, String> data, required int folderId});
  Future<Either<Map<MainFailure, dynamic>, String>> deleteIntranetFolders(
      {required int folderId});
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addIntranetFiles(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> editIntranetFiles(
      {required Map<String, String> data, required int fileId});
  Future<Either<Map<MainFailure, dynamic>, String>> deleteIntranetFiles(
      {required int fileId, required num folderId});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required int fileId, required String expiry});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      folderSearchIntranet({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      fileFolderSearchIntranet({required Map<String, String> data});
}

@LazySingleton(as: IintranetService)
class IntranetService implements IintranetService {
  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      intranetFolderServiceApi(int id) async {
    var response = await getIt<HttpService>().request(
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints().intranetFolderList}/$id');

    return response.fold(
      (l) => Left(l),
      (res) async {
        FolderListModel intranetfldrlist =
            FolderListModel.fromJson(jsonDecode(res.body));
        return Right(intranetfldrlist);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getIntranetFolders(
      {required num parentFolderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: "${ApiEndPoints().intranetFolder}$parentFolderId");

    return response.fold(
      (l) => Left(l),
      (res) async {
        FolderListModel intranetFolderList =
            FolderListModel.fromJson(jsonDecode(res.body));
        return Right(intranetFolderList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addIntranetFolders(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().intranetAddFolder);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right("Successfully added");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editIntranetFolders(
      {required Map<String, String> data, required int folderId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().intranetEditFolder}$folderId/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteIntranetFolders(
      {required int folderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().intranetDeleteFolder}$folderId/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addIntranetFiles(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().intranetAddFile);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return Right("Success");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editIntranetFiles(
      {required Map<String, String> data, required int fileId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().intranetEditFile}$fileId/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteIntranetFiles(
      {required int fileId, required num folderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().intranetDeleteFile}$fileId/$folderId/');

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
      method: 'PUT',
      apiUrl: "${ApiEndPoints().intranetFileExpiry}$fileId",
      data: {"date": expiry},
    );
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
      folderSearchIntranet({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'POST',
        apiUrl: ApiEndPoints().intranetSearchFolder);
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
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      fileFolderSearchIntranet({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'POST',
        apiUrl: ApiEndPoints().intranetSearchFileFolder);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        FolderListModel searchedfileFolderList = FolderListModel.fromJson(data);
        return Right(searchedfileFolderList);
      },
    );
  }
}
