// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i25;
import 'package:enviro_mobile_application/service/01_auth/authservice.dart'
    as _i4;
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart'
    as _i9;
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart'
    as _i13;
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart'
    as _i17;
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart'
    as _i14;
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart'
    as _i18;
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart'
    as _i10;
import 'package:enviro_mobile_application/service/10_previous_sale/i_previous_sale_service.dart'
    as _i7;
import 'package:enviro_mobile_application/service/10_previous_sale/previous_sale_service.dart'
    as _i8;
import 'package:enviro_mobile_application/service/10_site/i_site_service.dart'
    as _i11;
import 'package:enviro_mobile_application/service/10_site/site_service.dart'
    as _i12;
import 'package:enviro_mobile_application/service/11_team/team_service.dart'
    as _i19;
import 'package:enviro_mobile_application/service/home/home_service.dart'
    as _i6;
import 'package:enviro_mobile_application/service/home/i_homeservice.dart'
    as _i5;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i3;
import 'package:enviro_mobile_application/utilis/image_picker_service/image_file_picker.dart'
    as _i15;
import 'package:enviro_mobile_application/view_model/01_auth/auth_view_model.dart'
    as _i29;
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart'
    as _i23;
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart'
    as _i28;
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart'
    as _i20;
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart'
    as _i16;
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart'
    as _i27;
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart'
    as _i22;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i26;
import 'package:enviro_mobile_application/view_model/11_previous_sale/previous_sale_view_model.dart'
    as _i21;
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart'
    as _i24;
import 'package:enviro_mobile_application/view_model/home_page/home_page_viewmodel.dart'
    as _i30;
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
    gh.lazySingleton<_i4.IAuthService>(() => _i4.AuthRepository());
    gh.lazySingleton<_i5.IHomeService>(() => _i6.HomeRepository());
    gh.lazySingleton<_i7.IPreviousSaleService>(() => _i8.PreviousSaleService());
    gh.lazySingleton<_i9.ISalesService>(
        () => _i9.SalesService(gh<_i3.HttpService>()));
    gh.lazySingleton<_i10.IScheduleService>(
        () => _i10.SalesService(gh<_i3.HttpService>()));
    gh.lazySingleton<_i11.ISiteService>(() => _i12.SiteService());
    gh.lazySingleton<_i13.IVehicleService>(() => _i13.VehicleService());
    gh.lazySingleton<_i14.IintranetService>(() => _i14.IntranetService());
    gh.lazySingleton<_i15.ImagePickerService>(() => _i15.ImagePickerService());
    gh.factory<_i16.IntranetViewModel>(
        () => _i16.IntranetViewModel(gh<_i14.IintranetService>()));
    gh.lazySingleton<_i17.IohsService>(() => _i17.OhsService());
    gh.lazySingleton<_i18.IprofileService>(() => _i18.ProfileService());
    gh.lazySingleton<_i19.IteamService>(() => _i19.TeamService());
    gh.factory<_i20.OHSViewModel>(
        () => _i20.OHSViewModel(gh<_i17.IohsService>()));
    gh.factory<_i21.PreviousSaleViewModel>(
        () => _i21.PreviousSaleViewModel(gh<_i7.IPreviousSaleService>()));
    gh.factory<_i22.ProfileViewModel>(
        () => _i22.ProfileViewModel(gh<_i18.IprofileService>()));
    gh.lazySingleton<_i23.SalesViewModel>(
        () => _i23.SalesViewModel(gh<_i9.ISalesService>()));
    gh.factory<_i24.ScheduleViewModel>(
        () => _i24.ScheduleViewModel(gh<_i10.IScheduleService>()));
    gh.lazySingleton<_i25.SecureStorage>(() => _i25.SecureStorage());
    gh.factory<_i26.SiteViewModel>(
        () => _i26.SiteViewModel(gh<_i11.ISiteService>()));
    gh.factory<_i27.TeamViewModel>(
        () => _i27.TeamViewModel(gh<_i19.IteamService>()));
    gh.factory<_i28.VehicleViewModel>(
        () => _i28.VehicleViewModel(gh<_i13.IVehicleService>()));
    gh.factory<_i29.AuthViewModel>(
        () => _i29.AuthViewModel(gh<_i4.IAuthService>()));
    gh.factory<_i30.HomeViewModel>(
        () => _i30.HomeViewModel(gh<_i5.IHomeService>()));
    return this;
  }
}
