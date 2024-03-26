import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/oh&snews_folder/oh&snews_fldr_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/folder_creation/i_all_folder_creation_service.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllFolderCreationService)
class FolderCreationService implements IAllFolderCreationService {
  @override
  Future<Either<MainFailure, String>> ohsnewsfoldercreationfunction(
      folderName, id) async {
    print(folderName);
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
}
