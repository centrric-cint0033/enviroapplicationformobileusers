// calender_page_viewmodel.dart

import 'package:enviro_mobile_application/view/loginpage/service/i_calenderservice.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'calender_page_viewmodel.g.dart';

@injectable
class CalendarPageViewModel extends CalendarPageViewModelBase
    with _$CalendarPageViewModel {
  CalendarPageViewModel(ICalenderService calenderService)
      : super(calenderService);
}

abstract class CalendarPageViewModelBase with Store {
  final ICalenderService calenderService;

  @observable
  bool passwordVisibility = false;

  CalendarPageViewModelBase(this.calenderService);
}
