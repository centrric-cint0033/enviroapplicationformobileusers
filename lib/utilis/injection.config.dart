// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i10;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i3;
import 'package:enviro_mobile_application/view/loginpage/service/Authservice.dart'
    as _i5;
import 'package:enviro_mobile_application/view/loginpage/service/home_service.dart'
    as _i8;
import 'package:enviro_mobile_application/view/loginpage/service/i_authservice.dart'
    as _i4;
import 'package:enviro_mobile_application/view/loginpage/service/i_calenderservice.dart'
    as _i6;
import 'package:enviro_mobile_application/view/loginpage/service/i_homeservice.dart'
    as _i7;
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart'
    as _i11;
import 'package:enviro_mobile_application/viewmodel/home_page_viewmodel.dart'
    as _i12;
import 'package:enviro_mobile_application/viewmodel/login_page_viewmodel.dart'
    as _i9;
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
    gh.lazySingleton<_i3.HttpService>(() => _i3.HttpService());
    gh.lazySingleton<_i4.IAuthService>(() => _i5.AuthRepository());
    gh.lazySingleton<_i6.ICalenderService>(() => _i6.calendarService());
    gh.lazySingleton<_i7.IHomeService>(() => _i8.HomeRepository());
    gh.factory<_i9.LoginViewModel>(
        () => _i9.LoginViewModel(gh<_i4.IAuthService>()));
    gh.lazySingleton<_i10.SecureStorage>(() => _i10.SecureStorage());
    gh.factory<_i11.CalendarPageViewModel>(
        () => _i11.CalendarPageViewModel(gh<_i6.ICalenderService>()));
    gh.factory<_i12.HomeViewModel>(
        () => _i12.HomeViewModel(gh<_i7.IHomeService>()));
    return this;
  }
}
