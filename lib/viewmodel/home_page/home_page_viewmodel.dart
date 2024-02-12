import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/home/res_model/homerespmodel.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';

import 'package:enviro_mobile_application/view/service/home/i_homeservice.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'home_page_viewmodel.g.dart';

final vmselection = getIt<HomeViewModel>();

@injectable
class HomeViewModel extends HomeViewModelBase with _$HomeViewModel {
  HomeViewModel(IHomeService homeService) : super(homeService);
}

abstract class HomeViewModelBase with Store {
  final IHomeService homeService;
  HomeViewModelBase(this.homeService);

  @observable
  bool passwordVisibility = false;

  @observable
  int currentIndex = 0;
  @action
  void setCurrentIndex(int index) {
    currentIndex = index;
  }

  @observable
  ApiResponse permissionsResponse = ApiResponse<HomeRespModel>();

  @action
  Future<void> permissions() async {
    permissionsResponse =
        permissionsResponse.copyWith(error: null, loading: true);

    final res = await homeService.permissions();
    return res.fold(
      (l) {
        permissionsResponse = permissionsResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        permissionsResponse = permissionsResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
