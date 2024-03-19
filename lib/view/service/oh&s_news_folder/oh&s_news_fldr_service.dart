import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/oh&snews_folder/oh&snews_fldr_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/oh&s_news_folder/i_all_oh&s_news_fldr.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllOhsNewsFolderService)
class OhsNewsFolderService implements IAllOhsNewsFolderService {
  @override
  Future<Either<MainFailure, OhsNewsfldrRespModel>>
      ohsnewsfolderservicefunction(int id) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointnewsfolder);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        // var data = jsonDecode(res.body) as List;

        OhsNewsfldrRespModel ohsnewsfldrlist =
            OhsNewsfldrRespModel.fromJson(jsonDecode(res.body));

        return Right(ohsnewsfldrlist);
      },
    );
  }
}
