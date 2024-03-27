import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';

import '../../utilis/main_failure.dart';

abstract class ISiteService {
  Future<Either<MainFailure, List<SiteResModel>>> getPermanantSites({
    int? page,
  });
  Future<Either<MainFailure, List<SiteResModel>>> getTemporarySites({
    int? page,
  });
  Future<Either<MainFailure, List<SiteResModel>>> getDeletedSites({
    int? page,
  });
}
