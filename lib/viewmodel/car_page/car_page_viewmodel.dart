import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/master_car_page/i_all_master_carservice.dart';

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
  ApiResponse<List<CmnvehiclepageModel>> CarPageResponse =
      ApiResponse<List<CmnvehiclepageModel>>();

  @action
  Future<void> mastercarfunction() async {
    CarPageResponse = CarPageResponse.copyWith(error: null, loading: true);

    final result = await MastercarService.mastercarfunction();
    return result.fold(
      (l) {
        CarPageResponse = CarPageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        CarPageResponse = CarPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
