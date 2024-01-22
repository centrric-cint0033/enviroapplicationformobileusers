// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/view/loginpage/service/i_calenderservice.dart'
    as _i3;
import 'package:enviro_mobile_application/view/loginpage/service/i_homeservice.dart'
    as _i4;
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart'
    as _i5;
import 'package:enviro_mobile_application/viewmodel/home_page_viewmodel.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ICalenderService>(() => _i3.calendarService());
    gh.lazySingleton<_i4.IHomeService>(() => _i4.AuthService());
    gh.factory<_i5.CalendarPageViewModel>(
        () => _i5.CalendarPageViewModel(gh<_i3.ICalenderService>()));
    gh.factory<_i6.HomeViewModel>(
        () => _i6.HomeViewModel(gh<_i4.IHomeService>()));
    return this;
  }
}
