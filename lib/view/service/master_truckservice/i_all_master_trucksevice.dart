import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import 'package:enviro_mobile_application/model/vehicle/res_model/all_vehicle_list/allvehiclelist_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllMasterTruckPageService {
  Future<Either<MainFailure, List<TruckpageModel>>> mastertruckfunction();
}
