import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/master_truckservice/i_all_master_trucksevice.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'truck_page_viewmodel.g.dart';

final vmtruck = getIt<TruckPageViewModel>();

@injectable
class TruckPageViewModel extends AllTruckPageViewModelBase
    with _$TruckPageViewModel {
  TruckPageViewModel(IAllMasterTruckPageService masterTruckPageService)
      : super(masterTruckPageService);
}

abstract class AllTruckPageViewModelBase with Store {
  final IAllMasterTruckPageService masterTruckPageService;

  AllTruckPageViewModelBase(this.masterTruckPageService);

  @observable
  ApiResponse<List<TruckpageModel>> truckPageResponse =
      ApiResponse<List<TruckpageModel>>();

  @action
  Future<void> truckPageFunction() async {
    truckPageResponse = truckPageResponse.copyWith(error: null, loading: true);

    final result = await masterTruckPageService.mastertruckfunction();
    return result.fold(
      (l) {
        truckPageResponse = truckPageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        truckPageResponse = truckPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
