// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i25;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i5;
import 'package:enviro_mobile_application/view/service/auth/authservice.dart'
    as _i19;
import 'package:enviro_mobile_application/view/service/auth/i_authservice.dart'
    as _i18;
import 'package:enviro_mobile_application/view/service/calender/i_calender.dart'
    as _i4;
import 'package:enviro_mobile_application/view/service/home/home_service.dart'
    as _i21;
import 'package:enviro_mobile_application/view/service/home/i_homeservice.dart'
    as _i20;
import 'package:enviro_mobile_application/view/service/master_car_page/i_all_master_carservice.dart'
    as _i8;
import 'package:enviro_mobile_application/view/service/master_car_page/master_car_service.dart'
    as _i9;
import 'package:enviro_mobile_application/view/service/master_truckservice/i_all_master_trucksevice.dart'
    as _i6;
import 'package:enviro_mobile_application/view/service/master_truckservice/master_truckservice.dart'
    as _i7;
import 'package:enviro_mobile_application/view/service/quote_reg_page/i_all_quote_reg_service.dart'
    as _i10;
import 'package:enviro_mobile_application/view/service/quote_reg_page/quote_reg_service.dart'
    as _i11;
import 'package:enviro_mobile_application/view/service/sales_page/i_all_sales_service.dart'
    as _i12;
import 'package:enviro_mobile_application/view/service/sales_page/saleslist_service.dart'
    as _i13;
import 'package:enviro_mobile_application/view/service/semi_trailor_service.dart/i_all_semi_trailor_pageservice.dart'
    as _i14;
import 'package:enviro_mobile_application/view/service/semi_trailor_service.dart/semi_trailor_service.dart'
    as _i15;
import 'package:enviro_mobile_application/view/service/vehicle/all_vehicle_list_service.dart'
    as _i17;
import 'package:enviro_mobile_application/view/service/vehicle/i_all_vehicle_service.dart'
    as _i16;
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart'
    as _i3;
import 'package:enviro_mobile_application/viewmodel/car_page/car_page_viewmodel.dart'
    as _i29;
import 'package:enviro_mobile_application/viewmodel/home_page/home_page_viewmodel.dart'
    as _i30;
import 'package:enviro_mobile_application/viewmodel/login_page/login_page_viewmodel.dart'
    as _i22;
import 'package:enviro_mobile_application/viewmodel/quote_reg_page/quote_reg_page_viewmodel.dart'
    as _i23;
import 'package:enviro_mobile_application/viewmodel/sales_performance/sales_performance_viewmodel.dart'
    as _i24;
import 'package:enviro_mobile_application/viewmodel/semi_trailor_page/semi_trailor_page_viewmodel.dart'
    as _i26;
import 'package:enviro_mobile_application/viewmodel/truck_page/truck_page_viewmodel.dart'
    as _i27;
import 'package:enviro_mobile_application/viewmodel/vehiclepage/vehicle_page_viewmodel.dart'
    as _i28;
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
    gh.lazySingleton<_i8.IAllMastercarService>(() => _i9.MastercarService());
    gh.lazySingleton<_i10.IAllQuoteRegService>(
        () => _i11.QuoteRegPageService());
    gh.lazySingleton<_i12.IAllSalesService>(() => _i13.SalesListPageService());
    gh.lazySingleton<_i14.IAllSemiTrailorPageService>(
        () => _i15.SemiTrailorPageService());
    gh.lazySingleton<_i16.IAllVehicleListService>(
        () => _i17.AllVehicleListRepository());
    gh.lazySingleton<_i18.IAuthService>(() => _i19.AuthRepository());
    gh.lazySingleton<_i20.IHomeService>(() => _i21.HomeRepository());
    gh.factory<_i22.LoginViewModel>(
        () => _i22.LoginViewModel(gh<_i18.IAuthService>()));
    gh.factory<_i23.QuoteRegPageViewModel>(
        () => _i23.QuoteRegPageViewModel(gh<_i10.IAllQuoteRegService>()));
    gh.factory<_i24.SalesPerformanceViewModel>(
        () => _i24.SalesPerformanceViewModel(gh<_i12.IAllSalesService>()));
    gh.lazySingleton<_i25.SecureStorage>(() => _i25.SecureStorage());
    gh.factory<_i26.SemiTrailorPageViewModel>(() =>
        _i26.SemiTrailorPageViewModel(gh<_i14.IAllSemiTrailorPageService>()));
    gh.factory<_i27.TruckPageViewModel>(
        () => _i27.TruckPageViewModel(gh<_i6.IAllMasterTruckPageService>()));
    gh.factory<_i28.AllVehiclelistviewModel>(
        () => _i28.AllVehiclelistviewModel(gh<_i16.IAllVehicleListService>()));
    gh.factory<_i29.CarPageViewModel>(
        () => _i29.CarPageViewModel(gh<_i8.IAllMastercarService>()));
    gh.factory<_i30.HomeViewModel>(
        () => _i30.HomeViewModel(gh<_i20.IHomeService>()));
    return this;
  }
}
