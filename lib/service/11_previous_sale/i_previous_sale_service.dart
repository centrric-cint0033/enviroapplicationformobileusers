import 'package:dartz/dartz.dart';

import '../../utilis/main_failure.dart';
import '../../model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';

abstract class IPreviousSaleService {
  Future<Either<MainFailure, List<PreviousSaleResModel>>> getPreviousSale({
    int? page,
    required int siteId,
  });
}
