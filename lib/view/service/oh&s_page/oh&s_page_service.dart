import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/oh&s_page/i_all_oh&s_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllOhsService)
class OhsPageService implements IAllOhsService {
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
}
