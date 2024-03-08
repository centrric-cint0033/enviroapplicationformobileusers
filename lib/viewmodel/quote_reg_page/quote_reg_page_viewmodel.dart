import 'package:enviro_mobile_application/model/quoterego/res_model/quote_rego_res_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/quote_reg_page/i_all_quote_reg_service.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'quote_reg_page_viewmodel.g.dart';

final vmquotereg = getIt<QuoteRegPageViewModel>();

@injectable
class QuoteRegPageViewModel extends QuoteRegPageViewModelBase
    with _$QuoteRegPageViewModel {
  QuoteRegPageViewModel(IAllQuoteRegService quoteRegService)
      : super(quoteRegService);
}

abstract class QuoteRegPageViewModelBase with Store {
  final IAllQuoteRegService quoteRegService;

  QuoteRegPageViewModelBase(this.quoteRegService);

  @observable
  ApiResponse<List<QuoteRegResModel>> quoteRegResponse =
      ApiResponse<List<QuoteRegResModel>>();

  @action
  Future<void> quoteregviewmodelfunction() async {
    quoteRegResponse = quoteRegResponse.copyWith(error: null, loading: true);

    final result = await quoteRegService.quoteregfunction();
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
