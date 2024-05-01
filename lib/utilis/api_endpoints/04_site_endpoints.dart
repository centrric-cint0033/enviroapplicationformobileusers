mixin class SiteEndpoint {
  final String permanentSites = '/api/v1/clients/all/alpha_asc/waste/';

  final String deletedSites =
      '/api/v1/clients/deleted-client/list/alpha_asc/waste/';

  final String temporarySites =
      '/api/v1/clients/temporary-client/list/alpha_asc/waste/';

  final String siteDetail = '/api/v1/clients/single/';

  final String siteFolders = '/api/v1/drive/site/folder/';

  final String searchSite = '/api/v1/clients/searchClient/all/waste/';

  final String searchSiteFolder = '/api/v1/drive/site/search/folder/';

  final String wasteTypeInSite = '/api/v1/clients/childs/available/';
}
