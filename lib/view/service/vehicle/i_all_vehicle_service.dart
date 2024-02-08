import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/vehicle/res_model/all_vehicle_list/allvehiclelist_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllVehicleListService {
  Future<Either<MainFailure, AllVehicleListModel>> allvehiclelisting();
}
