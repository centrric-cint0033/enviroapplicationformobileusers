import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/quoterego/res_model/quote_rego_res_model.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllQuoteRegService {
  Future<Either<MainFailure, List<QuoteRegResModel>>> quoteregfunction();
}
