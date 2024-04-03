import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:flutter/material.dart';
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
  TextEditingController salesJobListSearchCtr = TextEditingController();

//      _      ____    ___      ____      _      _       _       ____
//     / \    |  _ \  |_ _|    / ___|    / \    | |     | |     / ___|
//    / _ \   | |_) |  | |    | |       / _ \   | |     | |     \___ \
//   / ___ \  |  __/   | |    | |___   / ___ \  | |___  | |___   ___) |
//  /_/   \_\ |_|     |___|    \____| /_/   \_\ |_____| |_____| |____/

  @observable
  ApiResponse<List<SalesModel>> joblistResponse =
      ApiResponse<List<SalesModel>>();

  @action
  Future<void> saleJobListApi() async {
    try {
      joblistResponse = joblistResponse.copyWith(errors: null, loading: true);
      final result = await salesService.saleJoblistApiService();
      return result.fold(
        (l) {
          joblistResponse = joblistResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          joblistResponse =
              joblistResponse.copyWith(data: r, errors: null, loading: false);
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error saleJobListApi');
    } finally {
      joblistResponse = joblistResponse.copyWith(loading: false);
    }
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  ApiResponse<List<SalesModel>> salespageResponse =
      ApiResponse<List<SalesModel>>();

  @action
  Future<void> saleslistApi() async {
    try {
      salespageResponse =
          salespageResponse.copyWith(errors: null, loading: true);
      final result = await salesService.saleslistServiceApi();
      return result.fold(
        (l) {
          salespageResponse =
              salespageResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          salespageResponse =
              salespageResponse.copyWith(data: r, errors: null, loading: false);
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error saleslistApi');
    } finally {
      salespageResponse = salespageResponse.copyWith(loading: false);
    }
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  ApiResponse<List<SalesModel>> quoteRegResponse =
      ApiResponse<List<SalesModel>>();

  @action
  Future<void> quoteRegisterApi() async {
    try {
      quoteRegResponse = quoteRegResponse.copyWith(errors: null, loading: true);

      final result = await salesService.quoteRegisterServiceApi();
      return result.fold(
        (l) {
          quoteRegResponse =
              quoteRegResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          quoteRegResponse =
              quoteRegResponse.copyWith(data: r, errors: null, loading: false);
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error quoteRegisterApi');
    } finally {
      quoteRegResponse = quoteRegResponse.copyWith(loading: false);
    }
  }
}
