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
}
