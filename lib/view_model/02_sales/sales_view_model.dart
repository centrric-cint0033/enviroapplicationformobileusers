import 'dart:async';

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

@lazySingleton
class SalesViewModel extends SalesViewModelBase with _$SalesViewModel {
  SalesViewModel(super.salesService);
}

abstract class SalesViewModelBase with Store {
  final ISalesService salesService;

  SalesViewModelBase(this.salesService);
  TextEditingController salesJobListSearchCtr = TextEditingController();
  TextEditingController salesQuoteListSearchCtr = TextEditingController();

  Timer? debouce;
  DateTime currentDate = DateTime.now();

  @observable
  String? selectedMonth, selectedYear;

  void onTextChanged(Function() function) {
    // Clear the previous debounce timer
    if (debouce?.isActive ?? false) debouce?.cancel();

    // Set up a new debounce timer
    debouce = Timer(const Duration(milliseconds: 500), () => function());
  }

//      _      ____    ___      ____      _      _       _       ____
//     / \    |  _ \  |_ _|    / ___|    / \    | |     | |     / ___|
//    / _ \   | |_) |  | |    | |       / _ \   | |     | |     \___ \
//   / ___ \  |  __/   | |    | |___   / ___ \  | |___  | |___   ___) |
//  /_/   \_\ |_|     |___|    \____| /_/   \_\ |_____| |_____| |____/

  @observable
  ApiResponse<List<SalesModel>> joblistResponse =
      ApiResponse<List<SalesModel>>();

  @action
  Future<void> saleJobListApi({int? page}) async {
    try {
      joblistResponse = joblistResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );
      customPrint(
          content: joblistResponse.paginationLoading,
          name: "joblistResponse pagination");
      final result = await salesService.saleJoblistApiService(page: page);

      return result.fold(
        (l) {
          joblistResponse = joblistResponse.copyWith(
            errors: l,
            loading: false,
            paginationLoading: false,
          );
        },
        (r) {
          List<SalesModel> jobList = joblistResponse.data?.toList() ?? [];
          if (page == null) {
            jobList = r;
          } else {
            jobList.addAll(r);
          }
          joblistResponse = joblistResponse.copyWith(
            data: jobList,
            errors: null,
            loading: false,
            pageNo: page ?? 1,
            paginationLoading: false,
          );
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error saleJobListApi');
    } finally {
      joblistResponse = joblistResponse.copyWith(
        loading: false,
        // paginationLoading: false,
      );
    }
  }

  ScrollController joblistController = ScrollController();

  void saleJobListPagination() {
    joblistController.addListener(() {
      if (joblistController.position.pixels ==
              joblistController.position.maxScrollExtent &&
          !joblistController.position.outOfRange &&
          joblistResponse.pagination &&
          !joblistResponse.paginationLoading) {
        int pageNo = joblistResponse.pageNo + 1;
        if (vmSales.salesJobListSearchCtr.text.isNotEmpty) {
          salesJobListSearchApi(
            page: pageNo,
            vmSales.salesJobListSearchCtr.text,
          );
          return;
        }
        saleJobListApi(page: pageNo);
      }
    });
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @action
  Future<void> salesJobListSearchApi(String searchData, {int? page}) async {
    try {
      joblistResponse = joblistResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );

      final result = await salesService
          .salesJobListSearchServiceApi(data: {"key": searchData}, page: page);
      return result.fold(
        (l) {
          joblistResponse = joblistResponse.copyWith(
            errors: l,
            loading: false,
            paginationLoading: false,
          );
        },
        (r) {
          List<SalesModel> jobList = joblistResponse.data?.toList() ?? [];
          if (page == null) {
            jobList = r;
          } else {
            jobList.addAll(r);
          }
          joblistResponse = joblistResponse.copyWith(
            data: jobList,
            errors: null,
            loading: false,
            pageNo: page ?? 1,
            pagination: r.length == 10,
            paginationLoading: false,
          );
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error salesJobListSearchApi');
    } finally {
      joblistResponse = joblistResponse.copyWith(
        loading: false,
        paginationLoading: false,
      );
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
  Map<String, String> months = {
    'Jan': "1",
    'Feb': "2",
    'Mar': "3",
    'Apr': "4",
    'May': "5",
    'Jun': "6",
    'Jul': "7",
    'Aug': "8",
    'Sep': "9",
    'Oct': "10",
    'Nov': "11",
    'Dec': "12"
  };

  @action
  Future<void> saleslistApi() async {
    try {
      salespageResponse =
          salespageResponse.copyWith(errors: null, loading: true);
      // Update year and month
      selectedYear ??= currentDate.year.toString();
      if (selectedMonth == null) {
        months.forEach(
          (key, value) {
            if (value == currentDate.month.toString()) selectedMonth = key;
          },
        );
      }

      final result = await salesService.saleslistServiceApi(
        year: selectedYear!,
        month: months[selectedMonth]!,
      );
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
  Future<void> quoteRegisterApi({int? page}) async {
    try {
      quoteRegResponse = quoteRegResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );

      final result = await salesService.quoteRegisterServiceApi(page: page);
      return result.fold(
        (l) {
          quoteRegResponse = quoteRegResponse.copyWith(
            errors: l,
            loading: false,
            paginationLoading: false,
          );
        },
        (r) {
          List<SalesModel> quoteReList = quoteRegResponse.data?.toList() ?? [];
          if (page == null) {
            quoteReList = r;
          } else {
            quoteReList.addAll(r);
          }
          quoteRegResponse = quoteRegResponse.copyWith(
            errors: null,
            loading: false,
            data: quoteReList,
            pageNo: page ?? 1,
            paginationLoading: false,
            pagination: r.length == 10,
          );
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error quoteRegisterApi');
    } finally {
      quoteRegResponse = quoteRegResponse.copyWith(
        loading: false,
        paginationLoading: false,
      );
    }
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @action
  Future<void> salesQuoteListSearchApi(String searchData, {int? page}) async {
    try {
      quoteRegResponse = quoteRegResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );

      final result = await salesService.salesQuoteListSearchServiceApi(
        page: page,
        data: {
          "key": searchData,
        },
      );
      return result.fold(
        (l) {
          quoteRegResponse = quoteRegResponse.copyWith(
            errors: l,
            loading: false,
            paginationLoading: false,
          );
        },
        (r) {
          List<SalesModel> quoteReList = quoteRegResponse.data?.toList() ?? [];
          if (page == null) {
            quoteReList = r;
          } else {
            quoteReList.addAll(r);
          }
          quoteRegResponse = quoteRegResponse.copyWith(
            errors: null,
            loading: false,
            data: quoteReList,
            pageNo: page ?? 1,
            paginationLoading: false,
            pagination: r.length == 10,
          );
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error salesJobListSearchApi');
    } finally {
      quoteRegResponse = quoteRegResponse.copyWith(
        loading: false,
        paginationLoading: false,
      );
    }
  }

  ScrollController quoteRegController = ScrollController();

  void quoteRegListPagination() {
    quoteRegController.addListener(() {
      if (quoteRegController.position.pixels ==
              quoteRegController.position.maxScrollExtent &&
          !quoteRegController.position.outOfRange &&
          quoteRegResponse.pagination &&
          !quoteRegResponse.paginationLoading) {
        int pageNo = quoteRegResponse.pageNo + 1;
        if (vmSales.salesQuoteListSearchCtr.text.isNotEmpty) {
          salesQuoteListSearchApi(
            page: pageNo,
            vmSales.salesQuoteListSearchCtr.text,
          );
          return;
        }
        quoteRegisterApi(page: pageNo);
      }
    });
  }
}
