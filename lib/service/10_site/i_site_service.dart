import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/model/10_site/number_of_clients_res_model/number_of_clients_res_model.dart';
import 'package:enviro_mobile_application/model/10_site/quote_comment_res_model/quote_comment_res_model/quote_comment_res_model.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';

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
      searchSitesServiceApi({required String key, required SiteType type});

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

  Future<Either<Map<MainFailure, dynamic>, NumberOfClientsResModel>>
      getNumberOfClients();
  Future<Either<Map<MainFailure, dynamic>, JobCardModels>> jobCardApi({
    required int id,
  });
  Future<Either<Map<MainFailure, dynamic>, List<QuoteCommentResModel>>>
      getQuoteComments({
    required int id,
  });
  Future<Either<Map<MainFailure, dynamic>, QuoteCommentResModel>>
      addQuoteComments({
    required String comment,
    required int quoteId,
  });
  Future<Either<Map<MainFailure, dynamic>, dynamic>> deleteQuoteComments({
    required int id,
  });
  Future<Either<Map<MainFailure, dynamic>, QuoteCommentResModel>>
      editQuoteComments({
    required int id,
    required String comment,
    required int quoteId,
  });
}
