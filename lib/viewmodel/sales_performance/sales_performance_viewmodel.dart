import 'package:enviro_mobile_application/model/quoterego/res_model/quote_rego_res_model.dart';
import 'package:enviro_mobile_application/model/sales/res_model/salesresp_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/quote_reg_page/i_all_quote_reg_service.dart';
import 'package:enviro_mobile_application/view/service/sales_page/i_all_sales_service.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'sales_performance_viewmodel.g.dart';

final vmsalesperformance = getIt<SalesPerformanceViewModel>();

@injectable
class SalesPerformanceViewModel extends SalesPerformanceViewModelBase
    with _$SalesPerformanceViewModel {
  SalesPerformanceViewModel(IAllSalesService salespageService)
      : super(salespageService);
}

abstract class SalesPerformanceViewModelBase with Store {
  final IAllSalesService salespageService;

  SalesPerformanceViewModelBase(this.salespageService);

  @observable
  ApiResponse<List<SalesListResModel>> salespageResponse =
      ApiResponse<List<SalesListResModel>>();

  @action
  Future<void> saleslistviewmodelfunction() async {
    print('aaaaa$salespageResponse');
    salespageResponse = salespageResponse.copyWith(error: null, loading: true);

    final result = await salespageService.saleslistfunction();
    return result.fold(
      (l) {
        salespageResponse = salespageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        salespageResponse = salespageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
