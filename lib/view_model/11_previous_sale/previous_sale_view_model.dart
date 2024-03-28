import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';

import '../../utilis/injection.dart';
import '../../service/11_previous_sale/i_previous_sale_service.dart';
import '../../model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';

part 'previous_sale_view_model.g.dart';

final vmPreviousSale = getIt<PreviousSaleViewModel>();

@injectable
class PreviousSaleViewModel extends PreviousSaleViewModelBase
    with _$PreviousSaleViewModel {
  PreviousSaleViewModel(super.previousSaleService);
}

abstract class PreviousSaleViewModelBase with Store {
  final IPreviousSaleService previousSaleService;
  PreviousSaleViewModelBase(this.previousSaleService);

  ScrollController previousSaleController = ScrollController();
  late int siteID;

  @observable
  ApiResponse<List<PreviousSaleResModel>> previousSaleResponse =
      ApiResponse<List<PreviousSaleResModel>>();

  @action
  Future<void> getPreviousSales({
    int? page,
    int? siteId,
  }) async {
    siteID = siteId ?? siteID;
    previousSaleResponse = previousSaleResponse.copyWith(
      error: null,
      loading: page == null,
      paginationLoading: page != null,
    );

    final response = await previousSaleService.getPreviousSale(
      page: page,
      siteId: siteID,
    );

    response.fold(
      (l) {
        previousSaleResponse = previousSaleResponse.copyWith(
          error: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (res) {
        List<PreviousSaleResModel> previousSales =
            previousSaleResponse.data?.toList() ?? [];
        if (page == null) {
          previousSales = res;
        } else {
          previousSales.addAll(res);
        }

        previousSaleResponse = previousSaleResponse.copyWith(
          error: null,
          loading: false,
          pageNo: page ?? 1,
          data: previousSales,
          paginationLoading: false,
          pagination: res.length == 10,
        );
      },
    );
  }

  ///  Previous sale pagination
  void previousSalesPagination() {
    previousSaleController.addListener(() {
      if (previousSaleController.position.pixels ==
              previousSaleController.position.maxScrollExtent &&
          !previousSaleController.position.outOfRange &&
          previousSaleResponse.pagination &&
          !previousSaleResponse.paginationLoading) {
        int pageNo = previousSaleResponse.pageNo + 1;
        getPreviousSales(page: pageNo);
      }
    });
  }
}
