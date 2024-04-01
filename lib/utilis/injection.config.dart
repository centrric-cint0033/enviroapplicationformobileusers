// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
<<<<<<< HEAD
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i18;
=======
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i21;
>>>>>>> azeem_dev
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart'
    as _i11;
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart'
    as _i12;
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart'
    as _i15;
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart'
<<<<<<< HEAD
    as _i13;
import 'package:enviro_mobile_application/service/auth/authservice.dart' as _i8;
=======
    as _i14;
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart'
    as _i17;
import 'package:enviro_mobile_application/service/auth/authservice.dart' as _i9;
import 'package:enviro_mobile_application/service/auth/i_authservice.dart'
    as _i8;
>>>>>>> azeem_dev
import 'package:enviro_mobile_application/service/calender/i_calender.dart'
    as _i4;
import 'package:enviro_mobile_application/service/home/home_service.dart'
    as _i10;
import 'package:enviro_mobile_application/service/home/i_homeservice.dart'
    as _i9;
import 'package:enviro_mobile_application/service/vehicle/all_vehicle_list_service.dart'
    as _i7;
import 'package:enviro_mobile_application/service/vehicle/i_all_vehicle_service.dart'
    as _i6;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i5;
import 'package:enviro_mobile_application/view_model/01_auth/auth_view_model.dart'
<<<<<<< HEAD
    as _i20;
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart'
    as _i17;
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart'
    as _i19;
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart'
    as _i16;
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart'
    as _i14;
import 'package:enviro_mobile_application/view_model/calenderpage/calender_page_viewmodel.dart'
    as _i3;
import 'package:enviro_mobile_application/view_model/home_page/home_page_viewmodel.dart'
    as _i21;
=======
    as _i23;
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart'
    as _i20;
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart'
    as _i22;
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart'
    as _i18;
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart'
    as _i15;
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart'
    as _i19;
import 'package:enviro_mobile_application/view_model/calenderpage/calender_page_viewmodel.dart'
    as _i3;
import 'package:enviro_mobile_application/view_model/home_page/home_page_viewmodel.dart'
    as _i24;
>>>>>>> azeem_dev
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
    gh.lazySingleton<_i6.IAllVehicleListService>(
        () => _i7.AllVehicleListRepository());
<<<<<<< HEAD
    gh.lazySingleton<_i8.IAuthService>(() => _i8.AuthRepository());
    gh.lazySingleton<_i9.IHomeService>(() => _i10.HomeRepository());
    gh.lazySingleton<_i11.ISalesService>(() => _i11.SalesService());
    gh.lazySingleton<_i12.IVehicleService>(() => _i12.VehicleService());
    gh.lazySingleton<_i13.IintranetService>(() => _i13.IntranetService());
    gh.factory<_i14.IntranetViewModel>(
        () => _i14.IntranetViewModel(gh<_i13.IintranetService>()));
    gh.lazySingleton<_i15.IohsService>(() => _i15.OhsService());
    gh.factory<_i16.OHSViewModel>(
        () => _i16.OHSViewModel(gh<_i15.IohsService>()));
    gh.factory<_i17.SalesViewModel>(
        () => _i17.SalesViewModel(gh<_i11.ISalesService>()));
    gh.lazySingleton<_i18.SecureStorage>(() => _i18.SecureStorage());
    gh.factory<_i19.VehicleViewModel>(
        () => _i19.VehicleViewModel(gh<_i12.IVehicleService>()));
    gh.factory<_i20.AuthViewModel>(
        () => _i20.AuthViewModel(gh<_i8.IAuthService>()));
    gh.factory<_i21.HomeViewModel>(
        () => _i21.HomeViewModel(gh<_i9.IHomeService>()));
=======
    gh.lazySingleton<_i8.IAuthService>(() => _i9.AuthRepository());
    gh.lazySingleton<_i10.IHomeService>(() => _i11.HomeRepository());
    gh.lazySingleton<_i12.ISalesService>(() => _i12.SalesService());
    gh.lazySingleton<_i13.IVehicleService>(() => _i13.VehicleService());
    gh.lazySingleton<_i14.IintranetService>(() => _i14.IntranetService());
    gh.factory<_i15.IntranetViewModel>(
        () => _i15.IntranetViewModel(gh<_i14.IintranetService>()));
    gh.lazySingleton<_i16.IohsService>(() => _i16.OhsService());
    gh.lazySingleton<_i17.IprofileService>(() => _i17.ProfileService());
    gh.factory<_i18.OHSViewModel>(
        () => _i18.OHSViewModel(gh<_i16.IohsService>()));
    gh.factory<_i19.ProfileViewModel>(
        () => _i19.ProfileViewModel(gh<_i17.IprofileService>()));
    gh.factory<_i20.SalesViewModel>(
        () => _i20.SalesViewModel(gh<_i12.ISalesService>()));
    gh.lazySingleton<_i21.SecureStorage>(() => _i21.SecureStorage());
    gh.factory<_i22.VehicleViewModel>(
        () => _i22.VehicleViewModel(gh<_i13.IVehicleService>()));
    gh.factory<_i23.AuthViewModel>(
        () => _i23.AuthViewModel(gh<_i8.IAuthService>()));
    gh.factory<_i24.HomeViewModel>(
        () => _i24.HomeViewModel(gh<_i10.IHomeService>()));
>>>>>>> azeem_dev
    return this;
  }
}
