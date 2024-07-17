import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

abstract class IohsService {
  Future<Either<Map<MainFailure, dynamic>, List<OhsRespModel>>>
      ohsNewsServiceApi();
  Future<Either<MainFailure, List<OhsRespModel>>> ohsNewsServiceApi1();
  Future<Either<Map<MainFailure, dynamic>, List<OhsRespModel>>>
      ohsNotificationServiceApi({int? page});
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>>
      ohsAddNotificationServiceApi({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>> ohsAddNewsServiceApi(
      {required Map<String, String> data});
  Future<Either<MainFailure, FolderListModel>> ohsnewsfolderservicefunction(
      int id);

  Future<Either<MainFailure, String>> ohsnewsfoldercreationfunction(
      String folderName, int id);

  Future<Either<Map<MainFailure, dynamic>, String>> ohsFolderRenameServiceApi(
      folderName, id);

  Future<Either<MainFailure, String>> ohsnewsfolderrenamefunction(
      folderName, id);
  Future<Either<MainFailure, String>> ohsnewsfolderdeletefunction(
      folders, int id);
  Future<Either<Map<MainFailure, dynamic>, String>>
      ohsAddCommentNotificationApi(
          {required int notificationId, required String comment});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteNotificationApi(
      {required int notificationId});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsDeleteNewsApi(
      {required int newsId});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsStatusNotificationApi(
      {required int notificationId});
  Future<Either<Map<MainFailure, dynamic>, String>> ohsStatusNewsApi(
      {required int newsId});
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
      ohsNotificationServiceApi({int? page}) async {
    String pagination = 'view/${page ?? 1}/?limit=8';
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
  Future<Either<MainFailure, FolderListModel>> ohsnewsfolderservicefunction(
    int id,
  ) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints.endpointnewsfolder}/$id');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        FolderListModel ohsnewsfldrlist =
            FolderListModel.fromJson(jsonDecode(res.body));

        return Right(ohsnewsfldrlist);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> ohsFolderRenameServiceApi(
      folderName, id) async {
    var response = await getIt<HttpService>().multipartRequest(
        apiUrl: ApiEndPoints().ohsFolderRename,
        method: 'POST',
        data: {"name": folderName, "parent_folder": "1"});

    return response.fold(
      (l) => Left(l),
      (res) async => const Right('success'),
    );
  }

  @override
  Future<Either<MainFailure, String>> ohsnewsfoldercreationfunction(
      folderName, id) async {
    String apiUrl;

    apiUrl = ApiEndPoints().ohsFolderRename;

    MultipartRequest request =
        MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));

    request.fields['name'] = folderName;
    request.fields['parent_folder'] = '1';

    var response =
        await getIt<HttpService>().multipartRequest(mRequest: request);

    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        return Right('success');
      },
    );
  }

  @override
  Future<Either<MainFailure, String>> ohsnewsfolderrenamefunction(
      folderName, id) async {
    debugPrint("Folder name is:: $folderName");
    String apiUrl = '${ApiEndPoints.endpointnewsfldrrename}/$id/';
    debugPrint("end point name is:: $baseUrl$apiUrl");

    MultipartRequest request =
        MultipartRequest("PUT", Uri.parse("$baseUrl$apiUrl"));

    request.fields['name'] = folderName;

    var response =
        await getIt<HttpService>().multipartRequest(mRequest: request);

    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        return Right('success');
      },
    );
  }

  @override
  Future<Either<MainFailure, String>> ohsnewsfolderdeletefunction(
      folders, int id) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints.endpointnewsfldrdlte}/$id/');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, OhsRespModel>>
      ohsAddNotificationServiceApi({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        apiUrl: ApiEndPoints().ohsAddNotification, method: 'POST', data: data);
    // for (var i = 0; i < ids.length; i++) {
    //   request.fields["members[$i]"] = "${ids[i]}";
    //   log(request.fields["members[$i]"].toString());
    // }
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
    // for (var i = 0; i < ids.length; i++) {
    //   request.fields["members[$i]"] = "${ids[i]}";
    //   log(request.fields["members[$i]"].toString());
    // }
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
}
