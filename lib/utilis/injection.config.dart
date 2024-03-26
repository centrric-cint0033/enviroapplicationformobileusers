// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:enviro_mobile_application/Routepage/securestorage.dart' as _i42;
import 'package:enviro_mobile_application/utilis/httpservice.dart' as _i5;
import 'package:enviro_mobile_application/view/service/auth/authservice.dart'
    as _i31;
import 'package:enviro_mobile_application/view/service/auth/i_authservice.dart'
    as _i30;
import 'package:enviro_mobile_application/view/service/calender/i_calender.dart'
    as _i4;
import 'package:enviro_mobile_application/view/service/folder_creation/folder_creation_service.dart'
    as _i7;
import 'package:enviro_mobile_application/view/service/folder_creation/i_all_folder_creation_service.dart'
    as _i6;
import 'package:enviro_mobile_application/view/service/home/home_service.dart'
    as _i33;
import 'package:enviro_mobile_application/view/service/home/i_homeservice.dart'
    as _i32;
import 'package:enviro_mobile_application/view/service/master_car_page/i_all_master_carservice.dart'
    as _i10;
import 'package:enviro_mobile_application/view/service/master_car_page/master_car_service.dart'
    as _i11;
import 'package:enviro_mobile_application/view/service/master_truckservice/i_all_master_trucksevice.dart'
    as _i8;
import 'package:enviro_mobile_application/view/service/master_truckservice/master_truckservice.dart'
    as _i9;
import 'package:enviro_mobile_application/view/service/notification_page_service/i_all_notfcn_page_service.dart'
    as _i12;
import 'package:enviro_mobile_application/view/service/notification_page_service/notfcn_page_service.dart'
    as _i13;
import 'package:enviro_mobile_application/view/service/oh&s_news_folder/i_all_oh&s_news_fldr.dart'
    as _i14;
import 'package:enviro_mobile_application/view/service/oh&s_news_folder/oh&s_news_fldr_service.dart'
    as _i15;
import 'package:enviro_mobile_application/view/service/oh&s_news_page/i_all_oh&s_service.dart'
    as _i16;
import 'package:enviro_mobile_application/view/service/oh&s_news_page/oh&s_page_news_service.dart'
    as _i17;
import 'package:enviro_mobile_application/view/service/oh&s_page/i_all_oh&s_service.dart'
    as _i18;
import 'package:enviro_mobile_application/view/service/oh&s_page/oh&s_page_service.dart'
    as _i19;
import 'package:enviro_mobile_application/view/service/ohs_folder_rename/folder_rename_service.dart'
    as _i35;
import 'package:enviro_mobile_application/view/service/ohs_folder_rename/i_folde_rename_service.dart'
    as _i34;
import 'package:enviro_mobile_application/view/service/quote_reg_page/i_all_quote_reg_service.dart'
    as _i20;
import 'package:enviro_mobile_application/view/service/quote_reg_page/quote_reg_service.dart'
    as _i21;
import 'package:enviro_mobile_application/view/service/sales_job_list/i_all_sales_job_service.dart'
    as _i22;
import 'package:enviro_mobile_application/view/service/sales_job_list/sales_job_list_service.dart'
    as _i23;
import 'package:enviro_mobile_application/view/service/sales_page/i_all_sales_service.dart'
    as _i24;
import 'package:enviro_mobile_application/view/service/sales_page/saleslist_service.dart'
    as _i25;
import 'package:enviro_mobile_application/view/service/semi_trailor_service.dart/i_all_semi_trailor_pageservice.dart'
    as _i26;
import 'package:enviro_mobile_application/view/service/semi_trailor_service.dart/semi_trailor_service.dart'
    as _i27;
import 'package:enviro_mobile_application/view/service/vehicle/all_vehicle_list_service.dart'
    as _i29;
import 'package:enviro_mobile_application/view/service/vehicle/i_all_vehicle_service.dart'
    as _i28;
import 'package:enviro_mobile_application/viewmodel/calenderpage/calender_page_viewmodel.dart'
    as _i3;
import 'package:enviro_mobile_application/viewmodel/car_page/car_page_viewmodel.dart'
    as _i47;
import 'package:enviro_mobile_application/viewmodel/folder_creation/folder_creation_viewmodel.dart'
    as _i48;
import 'package:enviro_mobile_application/viewmodel/folderrename/folder_rename_viewmodel.dart'
    as _i49;
import 'package:enviro_mobile_application/viewmodel/home_page/home_page_viewmodel.dart'
    as _i50;
import 'package:enviro_mobile_application/viewmodel/login_page/login_page_viewmodel.dart'
    as _i36;
import 'package:enviro_mobile_application/viewmodel/oh&s_news_folder/oh&s_news_fldr_view_model.dart'
    as _i37;
import 'package:enviro_mobile_application/viewmodel/oh&s_notification/oh&s_notification_view_model.dart'
    as _i39;
import 'package:enviro_mobile_application/viewmodel/oh&s_page/oh&s_viewmodel.dart'
    as _i38;
import 'package:enviro_mobile_application/viewmodel/quote_reg_page/quote_reg_page_viewmodel.dart'
    as _i40;
import 'package:enviro_mobile_application/viewmodel/sales_performance/sales_performance_viewmodel.dart'
    as _i41;
import 'package:enviro_mobile_application/viewmodel/semi_trailor_page/semi_trailor_page_viewmodel.dart'
    as _i43;
import 'package:enviro_mobile_application/viewmodel/truck_page/truck_page_viewmodel.dart'
    as _i44;
import 'package:enviro_mobile_application/viewmodel/vehicle_job_list/vehicle_job_list_viewmodel.dart'
    as _i45;
import 'package:enviro_mobile_application/viewmodel/vehiclepage/vehicle_page_viewmodel.dart'
    as _i46;
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
    gh.lazySingleton<_i6.IAllFolderCreationService>(
        () => _i7.FolderCreationService());
    gh.lazySingleton<_i8.IAllMasterTruckPageService>(
        () => _i9.MasterTruckPageService());
    gh.lazySingleton<_i10.IAllMastercarService>(() => _i11.MastercarService());
    gh.lazySingleton<_i12.IAllNotificationService>(
        () => _i13.NotificationListService());
    gh.lazySingleton<_i14.IAllOhsNewsFolderService>(
        () => _i15.OhsNewsFolderService());
    gh.lazySingleton<_i16.IAllOhsService>(() => _i17.OhsPageService());
    gh.lazySingleton<_i18.IAllOhsService>(() => _i19.OhsPageService());
    gh.lazySingleton<_i20.IAllQuoteRegService>(
        () => _i21.QuoteRegPageService());
    gh.lazySingleton<_i22.IAllSalesJobPageService>(
        () => _i23.SalesJobPageService());
    gh.lazySingleton<_i24.IAllSalesService>(() => _i25.SalesListPageService());
    gh.lazySingleton<_i26.IAllSemiTrailorPageService>(
        () => _i27.SemiTrailorPageService());
    gh.lazySingleton<_i28.IAllVehicleListService>(
        () => _i29.AllVehicleListRepository());
    gh.lazySingleton<_i30.IAuthService>(() => _i31.AuthRepository());
    gh.lazySingleton<_i32.IHomeService>(() => _i33.HomeRepository());
    gh.lazySingleton<_i34.Ifolderrename>(() => _i35.FolderRenameService());
    gh.factory<_i36.LoginViewModel>(
        () => _i36.LoginViewModel(gh<_i30.IAuthService>()));
    gh.factory<_i37.OhsNewsFolderViewModel>(
        () => _i37.OhsNewsFolderViewModel(gh<_i14.IAllOhsNewsFolderService>()));
    gh.factory<_i38.OhsNewsViewModel>(
        () => _i38.OhsNewsViewModel(gh<_i16.IAllOhsService>()));
    gh.factory<_i39.OhsNotificationViewModel>(() =>
        _i39.OhsNotificationViewModel(gh<_i12.IAllNotificationService>()));
    gh.factory<_i40.QuoteRegPageViewModel>(
        () => _i40.QuoteRegPageViewModel(gh<_i20.IAllQuoteRegService>()));
    gh.factory<_i41.SalesPerformanceViewModel>(
        () => _i41.SalesPerformanceViewModel(gh<_i24.IAllSalesService>()));
    gh.lazySingleton<_i42.SecureStorage>(() => _i42.SecureStorage());
    gh.factory<_i43.SemiTrailorPageViewModel>(() =>
        _i43.SemiTrailorPageViewModel(gh<_i26.IAllSemiTrailorPageService>()));
    gh.factory<_i44.TruckPageViewModel>(
        () => _i44.TruckPageViewModel(gh<_i8.IAllMasterTruckPageService>()));
    gh.factory<_i45.VehicleJobListViewModel>(
        () => _i45.VehicleJobListViewModel(gh<_i22.IAllSalesJobPageService>()));
    gh.factory<_i46.AllVehiclelistviewModel>(
        () => _i46.AllVehiclelistviewModel(gh<_i28.IAllVehicleListService>()));
    gh.factory<_i47.CarPageViewModel>(
        () => _i47.CarPageViewModel(gh<_i10.IAllMastercarService>()));
    gh.factory<_i48.FolderCreationViewModel>(() =>
        _i48.FolderCreationViewModel(gh<_i6.IAllFolderCreationService>()));
    gh.factory<_i49.FoldersRenameViewModel>(
        () => _i49.FoldersRenameViewModel(gh<_i34.Ifolderrename>()));
    gh.factory<_i50.HomeViewModel>(
        () => _i50.HomeViewModel(gh<_i32.IHomeService>()));
    return this;
  }
}
