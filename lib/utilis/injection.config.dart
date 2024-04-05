// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i25;
import 'package:enviro_mobile_application/service/01_auth/authservice.dart'
    as _i8;
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart'
    as _i13;
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart'
    as _i16;
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart'
    as _i19;
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart'
    as _i17;
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart'
    as _i20;
import 'package:enviro_mobile_application/service/10_site/i_site_service.dart'
    as _i14;
import 'package:enviro_mobile_application/service/10_site/site_service.dart'
    as _i15;
import 'package:enviro_mobile_application/service/11_previous_sale/i_previous_sale_service.dart'
    as _i11;
import 'package:enviro_mobile_application/service/11_previous_sale/previous_sale_service.dart'
    as _i12;
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
    as _i28;
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart'
    as _i24;
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart'
    as _i27;
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart'
    as _i21;
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart'
    as _i18;
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart'
    as _i23;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i26;
import 'package:enviro_mobile_application/view_model/11_previous_sale/previous_sale_view_model.dart'
    as _i22;
import 'package:enviro_mobile_application/view_model/calenderpage/calender_page_viewmodel.dart'
    as _i3;
import 'package:enviro_mobile_application/view_model/home_page/home_page_viewmodel.dart'
    as _i29;
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
    gh.lazySingleton<_i8.IAuthService>(() => _i8.AuthRepository());
    gh.lazySingleton<_i9.IHomeService>(() => _i10.HomeRepository());
    gh.lazySingleton<_i11.IPreviousSaleService>(
        () => _i12.PreviousSaleService());
    gh.lazySingleton<_i13.ISalesService>(() => _i13.SalesService());
    gh.lazySingleton<_i14.ISiteService>(() => _i15.SiteService());
    gh.lazySingleton<_i16.IVehicleService>(() => _i16.VehicleService());
    gh.lazySingleton<_i17.IintranetService>(() => _i17.IntranetService());
    gh.factory<_i18.IntranetViewModel>(
        () => _i18.IntranetViewModel(gh<_i17.IintranetService>()));
    gh.lazySingleton<_i19.IohsService>(() => _i19.OhsService());
    gh.lazySingleton<_i20.IprofileService>(() => _i20.ProfileService());
    gh.factory<_i21.OHSViewModel>(
        () => _i21.OHSViewModel(gh<_i19.IohsService>()));
    gh.factory<_i22.PreviousSaleViewModel>(
        () => _i22.PreviousSaleViewModel(gh<_i11.IPreviousSaleService>()));
    gh.factory<_i23.ProfileViewModel>(
        () => _i23.ProfileViewModel(gh<_i20.IprofileService>()));
    gh.factory<_i24.SalesViewModel>(
        () => _i24.SalesViewModel(gh<_i13.ISalesService>()));
    gh.lazySingleton<_i25.SecureStorage>(() => _i25.SecureStorage());
    gh.factory<_i26.SiteViewModel>(
        () => _i26.SiteViewModel(gh<_i14.ISiteService>()));
    gh.factory<_i27.VehicleViewModel>(
        () => _i27.VehicleViewModel(gh<_i16.IVehicleService>()));
    gh.factory<_i28.AuthViewModel>(
        () => _i28.AuthViewModel(gh<_i8.IAuthService>()));
    gh.factory<_i29.HomeViewModel>(
        () => _i29.HomeViewModel(gh<_i9.IHomeService>()));
    return this;
  }
}
