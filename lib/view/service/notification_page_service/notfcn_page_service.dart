import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/service/notification_page_service/i_all_notfcn_page_service.dart';
import 'package:enviro_mobile_application/view/service/oh&s_news_page/i_all_oh&s_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAllNotificationService)
class NotificationListService implements IAllNotificationService {
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
}
