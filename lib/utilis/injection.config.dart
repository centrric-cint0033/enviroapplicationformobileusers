// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i11;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i5;
import 'package:enviro_mobile_application/view/service/auth/authservice.dart'
    as _i7;
import 'package:enviro_mobile_application/view/service/auth/i_authservice.dart'
    as _i6;
import 'package:enviro_mobile_application/view/service/calender/i_calender.dart'
    as _i4;
import 'package:enviro_mobile_application/view/service/home/home_service.dart'
    as _i9;
import 'package:enviro_mobile_application/view/service/home/i_homeservice.dart'
    as _i8;
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart'
    as _i3;
import 'package:enviro_mobile_application/viewmodel/home_page_viewmodel.dart'
    as _i12;
import 'package:enviro_mobile_application/viewmodel/login_page_viewmodel.dart'
    as _i10;
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
    gh.factory<_i3.CalendarPageViewModel>(
        () => _i3.CalendarPageViewModel(gh<_i4.ICalenderService>()));
    gh.lazySingleton<_i5.HttpService>(() => _i5.HttpService());
    gh.lazySingleton<_i6.IAuthService>(() => _i7.AuthRepository());
    gh.lazySingleton<_i8.IHomeService>(() => _i9.HomeRepository());
    gh.factory<_i10.LoginViewModel>(
        () => _i10.LoginViewModel(gh<_i6.IAuthService>()));
    gh.lazySingleton<_i11.SecureStorage>(() => _i11.SecureStorage());
    gh.factory<_i12.HomeViewModel>(
        () => _i12.HomeViewModel(gh<_i8.IHomeService>()));
    return this;
  }
}
