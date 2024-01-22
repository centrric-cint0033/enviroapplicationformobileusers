import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/loginpage/service/i_calenderservice.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'calender_page_viewmodel.g.dart';

final vmcalender = getIt<CalendarPageViewModel>();
@injectable
class CalendarPageViewModel = CalendarPageViewModelBase
    with _$CalendarPageViewModel;

abstract class CalendarPageViewModelBase with Store {
  final ICalenderService calenderService;

  @observable
  DateTime today = DateTime.now();

  @observable
  DateTime focusedDay = DateTime.now();

  CalendarPageViewModelBase(this.calenderService);
}
