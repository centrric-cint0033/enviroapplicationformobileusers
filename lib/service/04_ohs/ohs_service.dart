import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&snews_fldr_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

abstract class IohsService {
  Future<Either<MainFailure, List<OhsRespModel>>> ohsnewsfunction();
  Future<Either<MainFailure, List<OhsRespModel>>> ohsnewsfunction1();
  Future<Either<MainFailure, List<OhsRespModel>>> ohsnotificationfunction();
  Future<Either<MainFailure, OhsNewsfldrRespModel>>
      ohsnewsfolderservicefunction(int id);

  Future<Either<MainFailure, String>> ohsnewsfoldercreationfunction(
      String folderName, int id);

  Future<Either<MainFailure, String>> ohsnewsfldrenameservicefunction(
      folderName, id);

  Future<Either<MainFailure, String>> ohsnewsfolderrenamefunction(
      folderName, id);
  Future<Either<MainFailure, String>> ohsnewsfolderdeletefunction(
      folders, int id);
}

@LazySingleton(as: IohsService)
class OhsService implements IohsService {
  @override
  Future<Either<MainFailure, List<OhsRespModel>>> ohsnewsfunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointohsnews);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
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
  Future<Either<MainFailure, List<OhsRespModel>>> ohsnewsfunction1() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointohsnews);

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
  Future<Either<MainFailure, List<OhsRespModel>>>
      ohsnotificationfunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointnotificationlist);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<OhsRespModel> ohsnotificationlist =
            List<OhsRespModel>.from(data.map((e) => OhsRespModel.fromJson(e)));

        return Right(ohsnotificationlist);
      },
    );
  }

  @override
  Future<Either<MainFailure, OhsNewsfldrRespModel>>
      ohsnewsfolderservicefunction(
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
        OhsNewsfldrRespModel ohsnewsfldrlist =
            OhsNewsfldrRespModel.fromJson(jsonDecode(res.body));

        return Right(ohsnewsfldrlist);
      },
    );
  }

  @override
  Future<Either<MainFailure, String>> ohsnewsfldrenameservicefunction(
      folderName, id) async {
    String apiUrl;

    apiUrl = ApiEndPoints.endpointfoldercreation;

    MultipartRequest request =
        MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));

    request.fields['name'] = folderName;
    request.fields['parent_folder'] = '1';

    var response =
        await getIt<HttpService>().multipartRequest(request: request);

    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);

        return Right('success');
      },
    );
  }

  @override
  Future<Either<MainFailure, String>> ohsnewsfoldercreationfunction(
      folderName, id) async {
    String apiUrl;

    apiUrl = ApiEndPoints.endpointfoldercreation;

    MultipartRequest request =
        MultipartRequest("POST", Uri.parse("$baseUrl$apiUrl"));

    request.fields['name'] = folderName;
    request.fields['parent_folder'] = '1';

    var response =
        await getIt<HttpService>().multipartRequest(request: request);

    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);

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
    print(folderName);

    var response =
        await getIt<HttpService>().multipartRequest(request: request);

    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);
        print('Response body: $data');
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
        var data = jsonDecode(res.body);

        return const Right('success');
      },
    );
  }
}
