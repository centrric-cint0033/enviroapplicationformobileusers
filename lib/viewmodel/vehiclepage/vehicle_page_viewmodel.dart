import 'package:enviro_mobile_application/api_response/api_response.dart';

import 'package:enviro_mobile_application/model/vehicle/res_model/all_vehicle_list/allvehiclelist_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';

import 'package:enviro_mobile_application/view/service/vehicle/i_all_vehicle_service.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'vehicle_page_viewmodel.g.dart';

final vmvehicle = getIt<AllVehiclelistviewModel>();

@injectable
class AllVehiclelistviewModel extends AllVehiclelistviewModelBase
    with _$AllVehiclelistviewModel {
  AllVehiclelistviewModel(IAllVehicleListService allVehicleListService)
      : super(allVehicleListService);
}

abstract class AllVehiclelistviewModelBase with Store {
  final IAllVehicleListService allVehicleListService;

  AllVehiclelistviewModelBase(this.allVehicleListService);

  @observable
  ApiResponse allvehiclelistResponse = ApiResponse<AllVehicleListModel>();

  @action
  Future<void> allvehiclelisting() async {
    allvehiclelistResponse =
        allvehiclelistResponse.copyWith(error: null, loading: true);

    final res = await allVehicleListService.allvehiclelisting();
    return res.fold(
      (l) {
        allvehiclelistResponse = allvehiclelistResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        allvehiclelistResponse = allvehiclelistResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
