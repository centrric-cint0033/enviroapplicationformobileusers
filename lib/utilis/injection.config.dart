// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i25;
import 'package:enviro_mobile_application/service/01_auth/authservice.dart'
    as _i6;
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart'
<<<<<<< HEAD
    as _i10;
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart'
    as _i11;
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart'
    as _i14;
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart'
    as _i12;
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart'
    as _i15;
import 'package:enviro_mobile_application/service/07_job_card/job_card_service.dart'
    as _i9;
import 'package:enviro_mobile_application/service/auth/authservice.dart' as _i6;
=======
    as _i11;
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart'
    as _i14;
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart'
    as _i18;
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart'
    as _i15;
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart'
    as _i19;
import 'package:enviro_mobile_application/service/10_site/i_site_service.dart'
    as _i12;
import 'package:enviro_mobile_application/service/10_site/site_service.dart'
    as _i13;
import 'package:enviro_mobile_application/service/10_team/team_service.dart'
    as _i20;
import 'package:enviro_mobile_application/service/11_previous_sale/i_previous_sale_service.dart'
    as _i9;
import 'package:enviro_mobile_application/service/11_previous_sale/previous_sale_service.dart'
    as _i10;
import 'package:enviro_mobile_application/service/calender/i_calender.dart'
    as _i4;
>>>>>>> development
import 'package:enviro_mobile_application/service/home/home_service.dart'
    as _i8;
import 'package:enviro_mobile_application/service/home/i_homeservice.dart'
    as _i7;
<<<<<<< HEAD
import 'package:enviro_mobile_application/service/vehicle/all_vehicle_list_service.dart'
    as _i5;
import 'package:enviro_mobile_application/service/vehicle/i_all_vehicle_service.dart'
    as _i4;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i3;
=======
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i5;
import 'package:enviro_mobile_application/utilis/image_picker_service/image_file_picker.dart'
    as _i16;
>>>>>>> development
import 'package:enviro_mobile_application/view_model/01_auth/auth_view_model.dart'
    as _i29;
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart'
    as _i24;
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart'
    as _i28;
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart'
    as _i21;
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart'
<<<<<<< HEAD
    as _i13;
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart'
    as _i18;
import 'package:enviro_mobile_application/view_model/11_job_card/job_card_view_model.dart'
    as _i16;
=======
    as _i17;
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart'
    as _i27;
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart'
    as _i23;
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart'
    as _i26;
import 'package:enviro_mobile_application/view_model/11_previous_sale/previous_sale_view_model.dart'
    as _i22;
import 'package:enviro_mobile_application/view_model/calenderpage/calender_page_viewmodel.dart'
    as _i3;
>>>>>>> development
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
<<<<<<< HEAD
    gh.lazySingleton<_i3.HttpService>(() => _i3.HttpService());
    gh.lazySingleton<_i4.IAllVehicleListService>(
        () => _i5.AllVehicleListRepository());
    gh.lazySingleton<_i6.IAuthService>(() => _i6.AuthRepository());
    gh.lazySingleton<_i7.IHomeService>(() => _i8.HomeRepository());
    gh.lazySingleton<_i9.IJobCardService>(() => _i9.JobCardService());
    gh.lazySingleton<_i10.ISalesService>(() => _i10.SalesService());
    gh.lazySingleton<_i11.IVehicleService>(() => _i11.VehicleService());
    gh.lazySingleton<_i12.IintranetService>(() => _i12.IntranetService());
    gh.factory<_i13.IntranetViewModel>(
        () => _i13.IntranetViewModel(gh<_i12.IintranetService>()));
    gh.lazySingleton<_i14.IohsService>(() => _i14.OhsService());
    gh.lazySingleton<_i15.IprofileService>(() => _i15.ProfileService());
    gh.factory<_i16.JobCardViewModel>(
        () => _i16.JobCardViewModel(gh<_i9.IJobCardService>()));
    gh.factory<_i17.OHSViewModel>(
        () => _i17.OHSViewModel(gh<_i14.IohsService>()));
    gh.factory<_i18.ProfileViewModel>(
        () => _i18.ProfileViewModel(gh<_i15.IprofileService>()));
    gh.factory<_i19.SalesViewModel>(
        () => _i19.SalesViewModel(gh<_i10.ISalesService>()));
    gh.lazySingleton<_i20.SecureStorage>(() => _i20.SecureStorage());
    gh.factory<_i21.VehicleViewModel>(
        () => _i21.VehicleViewModel(gh<_i11.IVehicleService>()));
    gh.factory<_i22.AuthViewModel>(
        () => _i22.AuthViewModel(gh<_i6.IAuthService>()));
    gh.factory<_i23.HomeViewModel>(
        () => _i23.HomeViewModel(gh<_i7.IHomeService>()));
=======
    gh.factory<_i3.CalendarPageViewModel>(
        () => _i3.CalendarPageViewModel(gh<_i4.ICalenderService>()));
    gh.lazySingleton<_i5.HttpService>(() => _i5.HttpService());
    gh.lazySingleton<_i6.IAuthService>(() => _i6.AuthRepository());
    gh.lazySingleton<_i7.IHomeService>(() => _i8.HomeRepository());
    gh.lazySingleton<_i9.IPreviousSaleService>(
        () => _i10.PreviousSaleService());
    gh.lazySingleton<_i11.ISalesService>(
        () => _i11.SalesService(gh<_i5.HttpService>()));
    gh.lazySingleton<_i12.ISiteService>(() => _i13.SiteService());
    gh.lazySingleton<_i14.IVehicleService>(() => _i14.VehicleService());
    gh.lazySingleton<_i15.IintranetService>(() => _i15.IntranetService());
    gh.lazySingleton<_i16.ImagePickerService>(() => _i16.ImagePickerService());
    gh.factory<_i17.IntranetViewModel>(
        () => _i17.IntranetViewModel(gh<_i15.IintranetService>()));
    gh.lazySingleton<_i18.IohsService>(() => _i18.OhsService());
    gh.lazySingleton<_i19.IprofileService>(() => _i19.ProfileService());
    gh.lazySingleton<_i20.IteamService>(() => _i20.TeamService());
    gh.factory<_i21.OHSViewModel>(
        () => _i21.OHSViewModel(gh<_i18.IohsService>()));
    gh.factory<_i22.PreviousSaleViewModel>(
        () => _i22.PreviousSaleViewModel(gh<_i9.IPreviousSaleService>()));
    gh.factory<_i23.ProfileViewModel>(
        () => _i23.ProfileViewModel(gh<_i19.IprofileService>()));
    gh.lazySingleton<_i24.SalesViewModel>(
        () => _i24.SalesViewModel(gh<_i11.ISalesService>()));
    gh.lazySingleton<_i25.SecureStorage>(() => _i25.SecureStorage());
    gh.factory<_i26.SiteViewModel>(
        () => _i26.SiteViewModel(gh<_i12.ISiteService>()));
    gh.factory<_i27.TeamViewModel>(
        () => _i27.TeamViewModel(gh<_i20.IteamService>()));
    gh.factory<_i28.VehicleViewModel>(
        () => _i28.VehicleViewModel(gh<_i14.IVehicleService>()));
    gh.factory<_i29.AuthViewModel>(
        () => _i29.AuthViewModel(gh<_i6.IAuthService>()));
    gh.factory<_i30.HomeViewModel>(
        () => _i30.HomeViewModel(gh<_i7.IHomeService>()));
>>>>>>> development
    return this;
  }
}
