import 'package:dartz/dartz.dart';

import '../../utilis/main_failure.dart';
import '../../model/10_site/site_res_model/site_res_model.dart';
import '../../model/10_site/folder_res_model/folder_res_model.dart';
import '../../model/02_sales/waste_type_model/waste_type_model.dart';

abstract class ISiteService {
  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>>
      getPermanantSites({
    int? page,
  });
  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>>
      getTemporarySites({
    int? page,
  });
  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>>
      getDeletedSites({
    int? page,
  });
  Future<Either<Map<MainFailure, dynamic>, SiteResModel>> getSiteDetails({
    required int id,
  });
  Future<Either<Map<MainFailure, dynamic>, FolderResModel>> getSiteFolders({
    required int id,
  });

  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>> searchSites({
    required String key,
  });
  Future<Either<Map<MainFailure, dynamic>, List<Folder>>> searchSiteFolder({
    required String key,
  });

  Future<Either<Map<MainFailure, dynamic>, List<WasteTypeModel>>>
      getWasteTypeInSites({
    required int id,
  });
}
