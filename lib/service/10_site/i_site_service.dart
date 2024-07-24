import 'package:dartz/dartz.dart';

import '../../utilis/main_failure.dart';
import '../../model/10_site/site_res_model/site_res_model.dart';
import '../../model/02_sales/waste_type_model/waste_type_model.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';

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

  Future<Either<Map<MainFailure, dynamic>, List<SiteResModel>>>
      searchSitesServiceApi({
    required String key,
  });

  Future<Either<Map<MainFailure, dynamic>, List<WasteTypeModel>>>
      getWasteTypeInSites({
    required int id,
  });
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getSiteFolderss(
      {required num id, required num parentFolderId});

  Future<Either<Map<MainFailure, dynamic>, dynamic>> addSiteFolders(
      {required Map<String, String> data});

  Future<Either<Map<MainFailure, dynamic>, String>> editSiteFolders(
      {required Map<String, String> data, required int folderId});

  Future<Either<Map<MainFailure, dynamic>, String>> deleteSiteFolders(
      {required int folderId});

  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      siteFolderSearchApi({required Map<String, String> data});

  Future<Either<Map<MainFailure, dynamic>, dynamic>> addSiteFiles(
      {required Map<String, String> data});

  Future<Either<Map<MainFailure, dynamic>, String>> editSiteFiles(
      {required Map<String, String> data, required int fileId});

  Future<Either<Map<MainFailure, dynamic>, String>> deleteSiteFiles(
      {required int fileId, required int folderId});

  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required int fileId, required String expiry});

  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      fileFolderSearchApi({required Map<String, String> data});
}
