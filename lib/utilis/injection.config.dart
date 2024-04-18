// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i18;
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart'
    as _i9;
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart'
    as _i10;
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart'
    as _i13;
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart'
    as _i11;
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart'
    as _i14;
import 'package:enviro_mobile_application/service/auth/authservice.dart' as _i6;
import 'package:enviro_mobile_application/service/home/home_service.dart'
    as _i8;
import 'package:enviro_mobile_application/service/home/i_homeservice.dart'
    as _i7;
import 'package:enviro_mobile_application/service/vehicle/all_vehicle_list_service.dart'
    as _i5;
import 'package:enviro_mobile_application/service/vehicle/i_all_vehicle_service.dart'
    as _i4;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i3;
import 'package:enviro_mobile_application/view_model/01_auth/auth_view_model.dart'
    as _i20;
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart'
    as _i17;
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart'
    as _i19;
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart'
    as _i15;
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart'
    as _i12;
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart'
    as _i16;
import 'package:enviro_mobile_application/view_model/home_page/home_page_viewmodel.dart'
    as _i21;
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
    gh.lazySingleton<_i4.IAllVehicleListService>(
        () => _i5.AllVehicleListRepository());
    gh.lazySingleton<_i6.IAuthService>(() => _i6.AuthRepository());
    gh.lazySingleton<_i7.IHomeService>(() => _i8.HomeRepository());
    gh.lazySingleton<_i9.ISalesService>(() => _i9.SalesService());
    gh.lazySingleton<_i10.IVehicleService>(() => _i10.VehicleService());
    gh.lazySingleton<_i11.IintranetService>(() => _i11.IntranetService());
    gh.factory<_i12.IntranetViewModel>(
        () => _i12.IntranetViewModel(gh<_i11.IintranetService>()));
    gh.lazySingleton<_i13.IohsService>(() => _i13.OhsService());
    gh.lazySingleton<_i14.IprofileService>(() => _i14.ProfileService());
    gh.factory<_i15.OHSViewModel>(
        () => _i15.OHSViewModel(gh<_i13.IohsService>()));
    gh.factory<_i16.ProfileViewModel>(
        () => _i16.ProfileViewModel(gh<_i14.IprofileService>()));
    gh.factory<_i17.SalesViewModel>(
        () => _i17.SalesViewModel(gh<_i9.ISalesService>()));
    gh.lazySingleton<_i18.SecureStorage>(() => _i18.SecureStorage());
    gh.factory<_i19.VehicleViewModel>(
        () => _i19.VehicleViewModel(gh<_i10.IVehicleService>()));
    gh.factory<_i20.AuthViewModel>(
        () => _i20.AuthViewModel(gh<_i6.IAuthService>()));
    gh.factory<_i21.HomeViewModel>(
        () => _i21.HomeViewModel(gh<_i7.IHomeService>()));
    return this;
  }
}
