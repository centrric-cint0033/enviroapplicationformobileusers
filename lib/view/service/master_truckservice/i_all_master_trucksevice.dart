import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllMasterTruckPageService {
  Future<Either<MainFailure, List<CmnvehiclepageModel>>> mastertruckfunction(
      truckdrop);
  Future<Either<MainFailure, List<CmnvehiclepageModel>>>
      masterfueltruckfunction(searchtrucksemidrop);
}
