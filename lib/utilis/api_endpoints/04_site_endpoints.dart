mixin class SiteEndpoint {
  final String permanentSites = '/api/v1/clients/all/alpha_asc/waste/';

  final String deletedSites =
      '/api/v1/clients/deleted-client/list/alpha_asc/waste/';

  final String temporarySites =
      '/api/v1/clients/temporary-client/list/alpha_asc/waste/';

  final String siteDetail = '/api/v1/clients/single/';

  final String siteFolders = '/api/v1/drive/site/folder/';

  final String addSiteFolders = '/api/v1/drive/create/site/private/folder/';

  final String editSiteFolders = '/api/v1/drive/folder/rename/';

  final String deleteSiteFolders = '/api/v1/drive/folder/delete/';

  final String searchSiteFolders = '/api/v1/drive/site/search/folder/';

  final String searchSiteFileFolders = '/api/v1/drive/site/search/file/';

  final String addSiteFiles = '/api/v1/drive/site/add/files/';

  final String editSiteFiles = '/api/v1/drive/file/rename/';

  final String deleteSiteFiles = '/api/v1/drive/file/delete/';

  final String searchPermanentSite = '/api/v1/clients/searchClient/all/waste/';

  final String searchTemperarySite =
      '/api/v1/clients/temporary-client/search/waste/';

  final String searchDeletedSite =
      '/api/v1/clients/deleted-client/search/waste/';

  final String searchSiteFolder = '/api/v1/drive/site/search/folder/';

  final String wasteTypeInSite = '/api/v1/clients/childs/available/';

  final String numberOfClients = '/api/v1/clients/no-of-clients/waste/';
}
