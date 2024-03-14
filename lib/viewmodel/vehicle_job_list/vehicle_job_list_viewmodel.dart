import 'package:enviro_mobile_application/model/saleslist/resmodel/saleslist_resmodel.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/sales_job_list/i_all_sales_job_service.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'vehicle_job_list_viewmodel.g.dart';

final vmjoblists = getIt<VehicleJobListViewModel>();

@injectable
class VehicleJobListViewModel extends VehiclejoblistViewModelBase
    with _$VehicleJobListViewModel {
  VehicleJobListViewModel(IAllSalesJobPageService vehiclelistService)
      : super(vehiclelistService);
}

abstract class VehiclejoblistViewModelBase with Store {
  final IAllSalesJobPageService vehiclelistService;

  VehiclejoblistViewModelBase(this.vehiclelistService);

  @observable
  ApiResponse<List<SalesJobListstRegResModel>> joblistResponse =
      ApiResponse<List<SalesJobListstRegResModel>>();

  @action
  Future<void> vehiclelistviewmodelfunction() async {
    joblistResponse = joblistResponse.copyWith(error: null, loading: true);

    final result = await vehiclelistService.vehiclejoblistfunction();
    return result.fold(
      (l) {
        joblistResponse = joblistResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        joblistResponse = joblistResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
