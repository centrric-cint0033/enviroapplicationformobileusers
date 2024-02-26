import 'dart:developer';

import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/master_car_page/i_all_master_carservice.dart';
import 'package:enviro_mobile_application/view/service/master_car_page/master_car_service.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'car_page_viewmodel.g.dart';

final vmcar = getIt<CarPageViewModel>();

@injectable
class CarPageViewModel extends AllCarPageViewModelBase with _$CarPageViewModel {
  CarPageViewModel(IAllMastercarService MastercarService)
      : super(MastercarService);
}

abstract class AllCarPageViewModelBase with Store {
  final IAllMastercarService MastercarService;

  AllCarPageViewModelBase(this.MastercarService);

  @observable
  String? selectedcarstatus;

  @action
  void setSelectedCar(String? newValue) {
    selectedcarstatus = newValue;
  }

  @observable
  ApiResponse<List<CmnvehiclepageModel>> carPageResponse =
      ApiResponse<List<CmnvehiclepageModel>>();

  @action
  Future<void> mastercarfunction({CarActionType? drop}) async {
    carPageResponse = carPageResponse.copyWith(error: null, loading: true);

    final result = await MastercarService.preinspectionfunction(drop);
    return result.fold(
      (l) {
        carPageResponse = carPageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        carPageResponse = carPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  // @action
  // Future<void> preinspectionfunction() async {
  //   carPageResponse = carPageResponse.copyWith(error: null, loading: true);

  //   final result = await MastercarService.preinspectionfunction();
  //   print("gxcvqsh");
  //   return result.fold(
  //     (l) {
  //       carPageResponse = carPageResponse.copyWith(
  //         error: l,
  //         loading: false,
  //       );
  //     },
  //     (r) {
  //       carPageResponse = carPageResponse.copyWith(
  //         data: r,
  //         error: null,
  //         loading: false,
  //       );
  //     },
  //   );
  // }
}
