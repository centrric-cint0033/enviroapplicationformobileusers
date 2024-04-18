class ApiEndPoints {
  // Authentication APIs

  // AUTH APIS

  static const endPointLogin = '/api/token/';

  //PERMISSIONS APIS

  static const endPointpermissions = '/api/v1/permissions/all/';

  //SALES APIS

  static const endpointsaleslist = '/api/v1/sales/performance/waste/2024/2';

  static const endpointquoteregvehiclelist =
      '/api/v1/sales/quote/waste/2/?limit=20';

  static const endpointjoblist = '/api/v1/sales/jobs/waste/1/?limit=10';

  static const endpointSalesJobSearch =
      '/api/v1/jobs/search/site/waste/?limit=20&page=1';

  static const endpointSaleQuoteSearch =
      '/api/v1/sales/quote/search/site/waste/?limit=20&page=1';

  // VEHICLE APIS

  // Master Truck Apis

  static const vehTruck = '/api/v1/vehicles/waste/truck/all/1/';

  static const vehTruckPreInspection =
      '/api/v1/vehicles/waste/truck/pre-inspection/1/';

  static const vehTruckPreMaintenance =
      '/api/v1/vehicles/waste/truck/maintenance/reports/1/';

  static const vehTruckFuelExpense =
      '/api/v1/vehicles/waste/truck/getFuelExpenses/1/';

  // search

  static const vehTruckSearch = '/api/v1/vehicles/waste/truck/search/';

  static const vehTruckPreInspectionSearch =
      '/api/v1/vehicles/waste/truck/pre-inspection/filter/vehicle/';

  static const vehTruckPreMaintenanceSearch =
      '/api/v1/vehicles/waste/truck/maintenance/reports/search/';

  static const vehTruckFuelExpenseSearch =
      '/api/v1/vehicles/waste/truck/fuelExpense/search/vehicle/';

  // Master Car Apis

  static const vehCar = '/api/v1/vehicles/waste/car/all/1/';

  static const vehCarPreInspection =
      '/api/v1/vehicles/waste/car/pre-inspection/1/';

  static const vehCarPreMaintenance =
      '/api/v1/vehicles/waste/car/maintenance/reports/1/';

  static const vehCarFuelExpense =
      '/api/v1/vehicles/waste/car/getFuelExpenses/1/';

  // Search

  static const vehCarSearch = '/api/v1/vehicles/waste/car/search/';

  static const vehCarPreInspectionSearch =
      '/api/v1/vehicles/waste/car/pre-inspection/filter/vehicle/';

  static const vehCarPreMaintenanceSearch =
      '/api/v1/vehicles/waste/car/maintenance/reports/search/';

  static const vehCarFuelExpenseSearch =
      '/api/v1/vehicles/waste/car/fuelExpense/search/vehicle/';

  // Semi Trailers Apis

  static const vehTrailorsSearch = '/api/v1/vehicles/waste/truck/1/';

  static const endpointsemitrailorpage =
      '/api/v1/vehicles/waste/forklift/all/1/';

  static const endPointallvehiclelisting = '/api/v1/vehicles/waste/truck/list/';

  static const endpointpreinspectionsemitruckcheckpage =
      '/api/v1/vehicles/waste/fork-lift/pre-inspection/1/';
  static const endpointmaintancesemitruckcheckpage =
      '/api/v1/vehicles/waste/fork-lift/maintenance/reports/1/';
  static const endpointfuelsemitruckcheckpage =
      '/api/v1/vehicles/waste/fork-lift/getFuelExpenses/1/';

  static const endpointsemitruckfuelsearch =
      '/api/v1/vehicles/waste/fork-lift/fuelExpense/search/vehicle/';

  static const endpointvehiclesemitrucklistsearch =
      '/api/v1/vehicles/waste/fork-lift/search/';

  static const endpointpreinspectionsemitrucksearch =
      '/api/v1/vehicles/waste/fork-lift/pre-inspection/filter/vehicle/';
  static const endpointfuelexpensessemitrucksearch =
      '/api/v1/vehicles/waste/fork-lift/fuelExpense/search/vehicle/';

  static const endpointohsnews = '/api/v1/oh_and_s/news/view/1/?limit=8';
  static const endpointnewsfolder = '/api/v1/oh_and_s/folder/segment/list';
  static const endpointfoldercreation = '/api/v1/drive/folder/create/';
  static const endpointnotificationlist =
      '/api/v1/oh_and_s/notification/view/1/?limit=8';
  static const endpointnewsfldrrename = '/api/v1/drive/folder/rename/3260/';
  static const endpointPermanentSites = '/api/v1/clients/all/alpha_asc/waste/';
  static const endpointTemporarySites =
      '/api/v1/clients/temporary-client/list/alpha_asc/waste/';
  static const endpointDeletedSites =
      '/api/v1/clients/deleted-client/list/alpha_asc/waste/';
  static const endpointSiteDetail = '/api/v1/clients/single/';
  static const endpointPreviousSale = '/api/v1/jobs/previous/sale/';
  static const endpointSiteFolders = '/api/v1/drive/site/folder/';
  static const endpointSearchSite = '/api/v1/clients/searchClient/all/waste/';
  static const endpointSearchSiteFolder = '/api/v1/drive/site/search/folder/';
  static const endpointnewsfldrdlte = '/api/v1/drive/folder/delete';
  static const endpointintranetfldrlstng =
      '/api/v1/intranet_archive/folder/segment';
  static const endpointprofilelstng = '/api/v1/accounts/profile/view/';
  static const endpointprofileedit = '/api/v1/team/employee/edit';

  // TEAM APIS
  static const endpointcurrentemployeelist =
      '/api/v1/team/status/current/?limit=10&page=1';
  static const endpointterminatedemployeelist =
      '/api/v1/team/status/terminated/?limit=10&page=1';
  static const endpointteamprofileemployeedetailList = '/api/v1/team/employee';
  static const endpointgetteamfolder = '/api/v1/drive/team/folder';
  static const endpointaddteamfolder = '/api/v1/drive/create/team/folder/';
  static const endpointteamfolderdelete = '/api/v1/drive/folder/delete';
  static const endpointteamfolderedit = '/api/v1/drive/folder/rename';
  static const endpointteamdesignations = '/api/v1/team/designations/';

  // SITES APIS

  static const endpointWasteTypeInSite = '/api/v1/clients/childs/available/';
}
