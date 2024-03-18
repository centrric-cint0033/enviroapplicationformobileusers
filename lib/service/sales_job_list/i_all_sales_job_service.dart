import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/saleslist/resmodel/saleslist_resmodel.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllSalesJobPageService {
  Future<Either<MainFailure, List<SalesJobListstRegResModel>>>
      vehiclejoblistfunction();
}
