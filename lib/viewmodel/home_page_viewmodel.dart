import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/loginpage/service/i_homeservice.dart';

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
}
