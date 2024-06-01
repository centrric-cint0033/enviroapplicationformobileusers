// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i5;
import 'package:enviro_mobile_application/service/01_auth/authservice.dart'
    as _i13;
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart'
    as _i25;
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart'
    as _i15;
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart'
    as _i14;
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart'
    as _i9;
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart'
    as _i10;
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart'
    as _i26;
import 'package:enviro_mobile_application/service/10_site/i_site_service.dart'
    as _i7;
import 'package:enviro_mobile_application/service/10_site/site_service.dart'
    as _i8;
import 'package:enviro_mobile_application/service/10_team/team_service.dart'
    as _i6;
import 'package:enviro_mobile_application/service/11_previous_sale/i_previous_sale_service.dart'
    as _i17;
import 'package:enviro_mobile_application/service/11_previous_sale/previous_sale_service.dart'
    as _i18;
import 'package:enviro_mobile_application/service/home/home_service.dart'
    as _i12;
import 'package:enviro_mobile_application/service/home/i_homeservice.dart'
    as _i11;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i3;
import 'package:enviro_mobile_application/utilis/image_picker_service/image_file_picker.dart'
    as _i4;
import 'package:enviro_mobile_application/view_model/01_auth/auth_view_model.dart'
    as _i19;
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart'
    as _i30;
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart'
    as _i27;
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart'
    as _i23;
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart'
    as _i24;
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart'
    as _i21;
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart'
    as _i22;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i20;
import 'package:enviro_mobile_application/view_model/11_previous_sale/previous_sale_view_model.dart'
    as _i28;
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart'
    as _i29;
import 'package:enviro_mobile_application/view_model/home_page/home_page_viewmodel.dart'
    as _i16;
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
    gh.lazySingleton<_i4.ImagePickerService>(() => _i4.ImagePickerService());
    gh.lazySingleton<_i5.SecureStorage>(() => _i5.SecureStorage());
    gh.lazySingleton<_i6.IteamService>(() => _i6.TeamService());
    gh.lazySingleton<_i7.ISiteService>(() => _i8.SiteService());
    gh.lazySingleton<_i9.IintranetService>(() => _i9.IntranetService());
    gh.lazySingleton<_i10.IprofileService>(() => _i10.ProfileService());
    gh.lazySingleton<_i11.IHomeService>(() => _i12.HomeRepository());
    gh.lazySingleton<_i13.IAuthService>(() => _i13.AuthRepository());
    gh.lazySingleton<_i14.IohsService>(() => _i14.OhsService());
    gh.lazySingleton<_i15.IVehicleService>(() => _i15.VehicleService());
    gh.factory<_i16.HomeViewModel>(
        () => _i16.HomeViewModel(gh<_i11.IHomeService>()));
    gh.lazySingleton<_i17.IPreviousSaleService>(
        () => _i18.PreviousSaleService());
    gh.factory<_i19.AuthViewModel>(
        () => _i19.AuthViewModel(gh<_i13.IAuthService>()));
    gh.factory<_i20.SiteViewModel>(
        () => _i20.SiteViewModel(gh<_i7.ISiteService>()));
    gh.factory<_i21.TeamViewModel>(
        () => _i21.TeamViewModel(gh<_i6.IteamService>()));
    gh.factory<_i22.ProfileViewModel>(
        () => _i22.ProfileViewModel(gh<_i10.IprofileService>()));
    gh.factory<_i23.OHSViewModel>(
        () => _i23.OHSViewModel(gh<_i14.IohsService>()));
    gh.factory<_i24.IntranetViewModel>(
        () => _i24.IntranetViewModel(gh<_i9.IintranetService>()));
    gh.lazySingleton<_i25.ISalesService>(
        () => _i25.SalesService(gh<_i3.HttpService>()));
    gh.lazySingleton<_i26.IJobCardService>(
        () => _i26.SalesService(gh<_i3.HttpService>()));
    gh.factory<_i27.VehicleViewModel>(
        () => _i27.VehicleViewModel(gh<_i15.IVehicleService>()));
    gh.factory<_i28.PreviousSaleViewModel>(
        () => _i28.PreviousSaleViewModel(gh<_i17.IPreviousSaleService>()));
    gh.factory<_i29.JobCardViewModel>(
        () => _i29.JobCardViewModel(gh<_i26.IJobCardService>()));
    gh.lazySingleton<_i30.SalesViewModel>(
        () => _i30.SalesViewModel(gh<_i25.ISalesService>()));
    return this;
  }
}
