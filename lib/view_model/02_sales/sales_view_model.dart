import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/quoterego/res_model/quote_rego_res_model.dart';
import 'package:enviro_mobile_application/model/sales/res_model/salesresp_model.dart';
import 'package:enviro_mobile_application/model/saleslist/resmodel/saleslist_resmodel.dart';
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'sales_view_model.g.dart';

final vmSales = getIt<SalesViewModel>();

@injectable
@lazySingleton
class SalesViewModel extends SalesViewModelBase with _$SalesViewModel {
  SalesViewModel(super.salesService);
}

abstract class SalesViewModelBase with Store {
  final ISalesService salesService;

  SalesViewModelBase(this.salesService);

  @observable
  ApiResponse<List<SalesJobListstRegResModel>> joblistResponse =
      ApiResponse<List<SalesJobListstRegResModel>>();

  @action
  Future<void> vehiclelistviewmodelfunction() async {
    joblistResponse = joblistResponse.copyWith(error: null, loading: true);

    final result = await salesService.vehiclejoblistfunction();
    return result.fold(
      (l) {
        joblistResponse = joblistResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        joblistResponse = joblistResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<SalesListResModel>> salespageResponse =
      ApiResponse<List<SalesListResModel>>();

  @action
  Future<void> saleslistviewmodelfunction() async {
    print('aaaaa$salespageResponse');
    salespageResponse = salespageResponse.copyWith(error: null, loading: true);

    final result = await salesService.saleslistfunction();
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

  @observable
  ApiResponse<List<QuoteRegResModel>> quoteRegResponse =
      ApiResponse<List<QuoteRegResModel>>();

  @action
  Future<void> quoteregviewmodelfunction() async {
    quoteRegResponse = quoteRegResponse.copyWith(error: null, loading: true);

    final result = await salesService.quoteregfunction();
    return result.fold(
      (l) {
        quoteRegResponse = quoteRegResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        quoteRegResponse = quoteRegResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
