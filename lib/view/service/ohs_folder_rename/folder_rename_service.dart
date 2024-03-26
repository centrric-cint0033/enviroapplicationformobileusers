import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/ohs_folder_rename/i_folde_rename_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Ifolderrename)
class FolderRenameService implements Ifolderrename {
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
}
