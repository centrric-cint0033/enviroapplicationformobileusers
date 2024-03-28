import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';
import 'package:enviro_mobile_application/model/10_site/folder_res_model/folder_res_model.dart';

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
  Future<Either<MainFailure, SiteResModel>> getSiteDetails({
    required int id,
  });
  Future<Either<MainFailure, FolderResModel>> getSiteFolders({
    required int id,
  });

  Future<Either<MainFailure, List<SiteResModel>>> searchSites({
    required String key,
  });
}
