import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/semi_trailor_service.dart/i_all_semi_trailor_pageservice.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'semi_trailor_page_viewmodel.g.dart';

final vmtrailor = getIt<SemiTrailorPageViewModel>();

@injectable
class SemiTrailorPageViewModel extends AllSemiTrailorPageViewModelBase
    with _$SemiTrailorPageViewModel {
  SemiTrailorPageViewModel(IAllSemiTrailorPageService SemiTrailorPageService)
      : super(SemiTrailorPageService);
}

abstract class AllSemiTrailorPageViewModelBase with Store {
  final IAllSemiTrailorPageService SemiTrailorPageService;

  AllSemiTrailorPageViewModelBase(this.SemiTrailorPageService);

  @observable
  ApiResponse<List<CmnvehiclepageModel>> semitrailorPageResponse =
      ApiResponse<List<CmnvehiclepageModel>>();

  @action
  Future<void> trailorfunction() async {
    semitrailorPageResponse =
        semitrailorPageResponse.copyWith(error: null, loading: true);

    final result = await SemiTrailorPageService.trailorfunction();
    return result.fold(
      (l) {
        semitrailorPageResponse = semitrailorPageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        semitrailorPageResponse = semitrailorPageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
