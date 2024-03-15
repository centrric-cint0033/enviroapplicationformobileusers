import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/model/quoterego/res_model/quote_rego_res_model.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllOhsService {
  Future<Either<MainFailure, List<OhsRespModel>>> ohsnewsfunction();
}
