import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllNotificationService {
  Future<Either<MainFailure, List<OhsRespModel>>> ohsnotificationfunction();
}
