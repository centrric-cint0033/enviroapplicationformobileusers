import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllMastercarService {
  Future<Either<MainFailure, List<CmnvehiclepageModel>>> mastercarfunction();

  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      preinspectionfunction();
}
