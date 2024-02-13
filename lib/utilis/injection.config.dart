// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i15;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i5;
import 'package:enviro_mobile_application/view/service/auth/authservice.dart'
    as _i11;
import 'package:enviro_mobile_application/view/service/auth/i_authservice.dart'
    as _i10;
import 'package:enviro_mobile_application/view/service/calender/i_calender.dart'
    as _i4;
import 'package:enviro_mobile_application/view/service/home/home_service.dart'
    as _i13;
import 'package:enviro_mobile_application/view/service/home/i_homeservice.dart'
    as _i12;
import 'package:enviro_mobile_application/view/service/master_truckservice/i_all_master_trucksevice.dart'
    as _i6;
import 'package:enviro_mobile_application/view/service/master_truckservice/master_truckservice.dart'
    as _i7;
import 'package:enviro_mobile_application/view/service/vehicle/all_vehicle_list_service.dart'
    as _i9;
import 'package:enviro_mobile_application/view/service/vehicle/i_all_vehicle_service.dart'
    as _i8;
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart'
    as _i3;
import 'package:enviro_mobile_application/viewmodel/home_page/home_page_viewmodel.dart'
    as _i18;
import 'package:enviro_mobile_application/viewmodel/login_page/login_page_viewmodel.dart'
    as _i14;
import 'package:enviro_mobile_application/viewmodel/truck_page/truck_page_viewmodel.dart'
    as _i16;
import 'package:enviro_mobile_application/viewmodel/vehiclepage/vehicle_page_viewmodel.dart'
    as _i17;
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
    gh.lazySingleton<_i6.IAllMasterTruckPageService>(
        () => _i7.MasterTruckPageService());
    gh.lazySingleton<_i8.IAllVehicleListService>(
        () => _i9.AllVehicleListRepository());
    gh.lazySingleton<_i10.IAuthService>(() => _i11.AuthRepository());
    gh.lazySingleton<_i12.IHomeService>(() => _i13.HomeRepository());
    gh.factory<_i14.LoginViewModel>(
        () => _i14.LoginViewModel(gh<_i10.IAuthService>()));
    gh.lazySingleton<_i15.SecureStorage>(() => _i15.SecureStorage());
    gh.factory<_i16.TruckPageViewModel>(
        () => _i16.TruckPageViewModel(gh<_i6.IAllMasterTruckPageService>()));
    gh.factory<_i17.AllVehiclelistviewModel>(
        () => _i17.AllVehiclelistviewModel(gh<_i8.IAllVehicleListService>()));
    gh.factory<_i18.HomeViewModel>(
        () => _i18.HomeViewModel(gh<_i12.IHomeService>()));
    return this;
  }
}
