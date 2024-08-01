import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IohsService {
  Future<Either<Map<MainFailure, dynamic>, List<OhsRespModel>>>
      ohsNewsServiceApi();
  Future<Either<MainFailure, List<OhsRespModel>>> ohsNewsServiceApi1();
  Future<Either<Map<MainFailure, dynamic>, List<OhsRespModel>>>
      ohsNotificationServiceApi({int? page, bool? fromArchive});
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>>
      ohsAddNotificationServiceApi({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>> ohsAddNewsServiceApi(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>>
      ohsAddCommentNotificationApi(
          {required int notificationId, required String comment});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteNotificationApi(
      {required int notificationId});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteNewsApi(
      {required int newsId});
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>> ohsEditNewsServiceApi(
      {required Map<String, String> data, required int newsId});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsStatusNotificationApi(
      {required int notificationId});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsStatusNewsApi(
      {required int newsId});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getFolders(
      {required num parentFolderId});
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addFolders(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> editFoldersOhs(
      {required Map<String, String> data, required int folderId});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> folderSearchApi(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      ohsFileFolderSearchApi({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, dynamic>> ohsAddFiles(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteFolders(
      {required int folderId});
  Future<Either<Map<MainFailure, dynamic>, String>> editFilesOhs(
      {required Map<String, String> data, required int fileId});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteFiles(
      {required int fileId, required int parentFolderId});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required num fileId, required String expiry});
  Future<Either<Map<MainFailure, dynamic>, List<OhsRespModel>>>
      ohsArchiveNotificationServiceApi({int? page});
}

@LazySingleton(as: IohsService)
class OhsService implements IohsService {
  @override
  Future<Either<Map<MainFailure, dynamic>, List<OhsRespModel>>>
      ohsNewsServiceApi() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().ohsNewsList);

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<OhsRespModel> ohsnewslist = [];
        try {
          ohsnewslist = List<OhsRespModel>.from(
              data.map((e) => OhsRespModel.fromJson(e)));
        } catch (e) {
          customPrint(content: e.toString(), name: "Exception::::");
        }
        return Right(ohsnewslist);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<OhsRespModel>>> ohsNewsServiceApi1() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().ohsNewsList);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<OhsRespModel> ohsnewslist =
            List<OhsRespModel>.from(data.map((e) => OhsRespModel.fromJson(e)));

        return Right(ohsnewslist);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<OhsRespModel>>>
      ohsNotificationServiceApi({int? page, bool? fromArchive}) async {
    String pagination = fromArchive == true
        ? 'view/${page ?? 1}/?limit=8&archive=read'
        : 'view/${page ?? 1}/?limit=8';
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().ohsNotificationList + pagination);

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<OhsRespModel> ohsnotificationlist =
            List<OhsRespModel>.from(data.map((e) => OhsRespModel.fromJson(e)));
        return Right(ohsnotificationlist);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>>
      ohsAddNotificationServiceApi({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        apiUrl: ApiEndPoints().ohsAddNotification, method: 'POST', data: data);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        OhsRespModel ohsAddNotification = OhsRespModel.fromJson(data);

        return Right(ohsAddNotification);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>>
      ohsAddCommentNotificationApi(
          {required int notificationId, required String comment}) async {
    var response = await getIt<HttpService>().multipartRequest(
        apiUrl:
            '${ApiEndPoints.endpointCommentAddNotification}$notificationId/',
        method: 'POST',
        data: {"comment": comment});

    return response.fold(
      (l) => Left(l),
      (res) async => const Right('success'),
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteNotificationApi(
      {required int notificationId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints.endpointDeleteNotification}$notificationId/');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l);
      },
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> ohsStatusNotificationApi(
      {required int notificationId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints.endpointStatusNotification}$notificationId/');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l);
      },
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>> ohsAddNewsServiceApi(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        apiUrl: ApiEndPoints().ohsAddNews, method: 'POST', data: data);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        OhsRespModel ohsAddNews = OhsRespModel.fromJson(data);
        return Right(ohsAddNews);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteNewsApi(
      {required int newsId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints.endpointDeleteNews}$newsId/');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l);
      },
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> ohsStatusNewsApi(
      {required int newsId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints.endpointStatusNews}$newsId/');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l);
      },
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>> ohsEditNewsServiceApi(
      {required Map<String, String> data, required int newsId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        apiUrl: "${ApiEndPoints().ohsEditNews}$newsId/",
        method: 'PATCH',
        data: data);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        OhsRespModel ohsEditNews = OhsRespModel.fromJson(data);

        return Right(ohsEditNews);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getFolders(
      {required num parentFolderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints().getFolders}$parentFolderId');

    return response.fold(
      (l) => Left(l),
      (res) async {
        FolderListModel folderList =
            FolderListModel.fromJson(jsonDecode(res.body));

        return Right(folderList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addFolders(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().addFolders);

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right("Successfully added");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> folderSearchApi(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().searchFolders);

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
      ohsFileFolderSearchApi({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().searchFileFolders);

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
  Future<Either<Map<MainFailure, dynamic>, dynamic>> ohsAddFiles(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().addFile);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right("Success");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editFoldersOhs(
      {required Map<String, String> data, required int folderId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().editFolders}$folderId/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteFolders(
      {required int folderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().deleteFolders}$folderId/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editFilesOhs(
      {required Map<String, String> data, required int fileId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().editFile}$fileId/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteFiles(
      {required int fileId, required int parentFolderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().deleteFile}$fileId/$parentFolderId/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required num fileId, required String expiry}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: {"date": expiry},
        method: 'PUT',
        apiUrl: "${ApiEndPoints().teamFilesExpiry}$fileId/");
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
  Future<Either<Map<MainFailure, dynamic>, List<OhsRespModel>>>
      ohsArchiveNotificationServiceApi({int? page}) async {
    String pagination = 'view/${page ?? 1}/?limit=8&archive=read';
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().ohsArchiveNotification + pagination);

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<OhsRespModel> ohsArchiveNotificationlist =
            List<OhsRespModel>.from(data.map((e) => OhsRespModel.fromJson(e)));
        return Right(ohsArchiveNotificationlist);
      },
    );
  }
}
