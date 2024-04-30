mixin class SalesEndpoint {
  //SALES APIS

  final String saleslist = '/api/v1/sales/performance/waste/2024/2';

  final String quoteregvehiclelist = '/api/v1/sales/quote/waste/2/?limit=20';

  final String joblist = '/api/v1/sales/jobs/waste';

  final String salesJobSearch = '/api/v1/jobs/search/site/waste';

  final String saleQuoteSearch =
      '/api/v1/sales/quote/search/site/waste/?limit=20&page=1';
}
