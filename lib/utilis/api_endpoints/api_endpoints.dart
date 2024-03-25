class ApiEndPoints {
  // Authentication APIs
  static const endPointLogin = '/api/token/';
  static const endPointpermissions = '/api/v1/permissions/all/';
  static const endPointallvehiclelisting = '/api/v1/vehicles/waste/truck/list/';
  static const endpointtruckpage = '/api/v1/vehicles/waste/truck/all/1/';
  static const endpointcarpage = '/api/v1/vehicles/waste/car/all/1/';
  static const endpointsemitrailorpage =
      '/api/v1/vehicles/waste/forklift/all/1/';
  static const endpointpreinspectiontruckcheckpage =
      '/api/v1/vehicles/waste/truck/pre-inspection/1/';
  static const endpointmaintancetruckcheckpage =
      '/api/v1/vehicles/waste/truck/maintenance/reports/1/';
  static const endpointfueltruckcheckpage =
      '/api/v1/vehicles/waste/truck/getFuelExpenses/1/';
  static const endpointpreinspectionsemitruckcheckpage =
      '/api/v1/vehicles/waste/fork-lift/pre-inspection/1/';
  static const endpointmaintancesemitruckcheckpage =
      '/api/v1/vehicles/waste/fork-lift/maintenance/reports/1/';
  static const endpointfuelsemitruckcheckpage =
      '/api/v1/vehicles/waste/fork-lift/getFuelExpenses/1/';
  static const endpointmaintancecarcheckpage =
      '/api/v1/vehicles/waste/car/maintenance/reports/1/';
  static const endpointpreinspectioncarcheckpage =
      '/api/v1/vehicles/waste/car/pre-inspection/1/';
  static const endpointfuelcarcheckpage =
      '/api/v1/vehicles/waste/car/getFuelExpenses/1/';
  static const endpointmaintancecarsearchcheckpage =
      '/api/v1/vehicles/waste/car/maintenance/reports/search/';
  static const endpointmaintancetrucksearchcheckpage =
      '/api/v1/vehicles/waste/truck/maintenance/reports/search/';
  static const endpointmasterfuelcarsearch =
      '/api/v1/vehicles/waste/car/fuelExpense/search/vehicle/';

  static const endpointtruckfuelsearch =
      '/api/v1/vehicles/waste/truck/fuelExpense/search/vehicle/';

  static const endpointsemitruckfuelsearch =
      '/api/v1/vehicles/waste/fork-lift/fuelExpense/search/vehicle/';
  static const endpointpreinspectiontrucksearch =
      '/api/v1/vehicles/waste/truck/pre-inspection/filter/vehicle/';
  static const endpointpreinspectioncarsearch =
      '/api/v1/vehicles/waste/car/pre-inspection/filter/vehicle/';
  static const endpointvehiclecarlistsearch =
      '/api/v1/vehicles/waste/car/search/';
  static const endpointvehiclesemitrucklistsearch =
      '/api/v1/vehicles/waste/fork-lift/search/';

  static const endpointpreinspectionsemitrucksearch =
      '/api/v1/vehicles/waste/fork-lift/pre-inspection/filter/vehicle/';
  static const endpointfuelexpensessemitrucksearch =
      '/api/v1/vehicles/waste/fork-lift/fuelExpense/search/vehicle/';
  static const endpointquoteregvehiclelist =
      '/api/v1/sales/quote/waste/2/?limit=20';
  static const endpointjoblist = '/api/v1/sales/jobs/waste/1/?limit=20';
  static const endpointsaleslist = '/api/v1/sales/performance/waste/2024/3/';
  static const endpointohsnews = '/api/v1/oh_and_s/news/view/1/?limit=8';
  static const endpointnewsfolder = '/api/v1/oh_and_s/folder/segment/list';
  static const endpointfoldercreation = '/api/v1/drive/folder/create/';
  static const endpointnotificationlist =
      '/api/v1/oh_and_s/notification/view/1/?limit=8';
  static const endpointnewsfldrrename = '/api/v1/drive/folder/rename/3260/';
}
