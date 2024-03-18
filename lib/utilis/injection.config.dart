// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i19;
import 'package:enviro_mobile_application/service/auth/authservice.dart' as _i5;
import 'package:enviro_mobile_application/service/home/home_service.dart'
    as _i8;
import 'package:enviro_mobile_application/service/master_car_page/master_car_service.dart'
    as _i13;
import 'package:enviro_mobile_application/service/master_truckservice/master_truckservice.dart'
    as _i12;
import 'package:enviro_mobile_application/service/quote_reg_page/quote_reg_service.dart'
    as _i14;
import 'package:enviro_mobile_application/service/sales_job_list/sales_job_list_service.dart'
    as _i16;
import 'package:enviro_mobile_application/service/sales_page/saleslist_service.dart'
    as _i17;
import 'package:enviro_mobile_application/service/semi_trailor_service.dart/semi_trailor_service.dart'
    as _i20;
import 'package:enviro_mobile_application/service/vehicle/all_vehicle_list_service.dart'
    as _i3;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i10;
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart'
    as _i6;
import 'package:enviro_mobile_application/viewmodel/car_page/car_page_viewmodel.dart'
    as _i7;
import 'package:enviro_mobile_application/viewmodel/home_page/home_page_viewmodel.dart'
    as _i9;
import 'package:enviro_mobile_application/viewmodel/login_page/login_page_viewmodel.dart'
    as _i11;
import 'package:enviro_mobile_application/viewmodel/quote_reg_page/quote_reg_page_viewmodel.dart'
    as _i15;
import 'package:enviro_mobile_application/viewmodel/sales_performance/sales_performance_viewmodel.dart'
    as _i18;
import 'package:enviro_mobile_application/viewmodel/semi_trailor_page/semi_trailor_page_viewmodel.dart'
    as _i21;
import 'package:enviro_mobile_application/viewmodel/truck_page/truck_page_viewmodel.dart'
    as _i22;
import 'package:enviro_mobile_application/viewmodel/vehicle_job_list/vehicle_job_list_viewmodel.dart'
    as _i23;
import 'package:enviro_mobile_application/viewmodel/vehiclepage/vehicle_page_viewmodel.dart'
    as _i4;
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
    gh.lazySingleton<_i3.AllVehicleListRepository>(
        () => _i3.AllVehicleListRepository());
    gh.factory<_i4.AllVehiclelistviewModel>(
        () => _i4.AllVehiclelistviewModel(gh<InvalidType>()));
    gh.lazySingleton<_i5.AuthRepository>(() => _i5.AuthRepository());
    gh.factory<_i6.CalendarPageViewModel>(
        () => _i6.CalendarPageViewModel(gh<InvalidType>()));
    gh.factory<_i7.CarPageViewModel>(
        () => _i7.CarPageViewModel(gh<InvalidType>()));
    gh.lazySingleton<_i8.HomeRepository>(() => _i8.HomeRepository());
    gh.factory<_i9.HomeViewModel>(() => _i9.HomeViewModel(gh<InvalidType>()));
    gh.lazySingleton<_i10.HttpService>(() => _i10.HttpService());
    gh.factory<_i11.LoginViewModel>(
        () => _i11.LoginViewModel(gh<InvalidType>()));
    gh.lazySingleton<_i12.MasterTruckPageService>(
        () => _i12.MasterTruckPageService());
    gh.lazySingleton<_i13.MastercarService>(() => _i13.MastercarService());
    gh.lazySingleton<_i14.QuoteRegPageService>(
        () => _i14.QuoteRegPageService());
    gh.factory<_i15.QuoteRegPageViewModel>(
        () => _i15.QuoteRegPageViewModel(gh<InvalidType>()));
    gh.lazySingleton<_i16.SalesJobPageService>(
        () => _i16.SalesJobPageService());
    gh.lazySingleton<_i17.SalesListPageService>(
        () => _i17.SalesListPageService());
    gh.factory<_i18.SalesPerformanceViewModel>(
        () => _i18.SalesPerformanceViewModel(gh<InvalidType>()));
    gh.lazySingleton<_i19.SecureStorage>(() => _i19.SecureStorage());
    gh.lazySingleton<_i20.SemiTrailorPageService>(
        () => _i20.SemiTrailorPageService());
    gh.factory<_i21.SemiTrailorPageViewModel>(
        () => _i21.SemiTrailorPageViewModel(gh<InvalidType>()));
    gh.factory<_i22.TruckPageViewModel>(
        () => _i22.TruckPageViewModel(gh<InvalidType>()));
    gh.factory<_i23.VehicleJobListViewModel>(
        () => _i23.VehicleJobListViewModel(gh<InvalidType>()));
    return this;
  }
}
