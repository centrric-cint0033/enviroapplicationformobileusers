// ignore: file_names
mixin class VehicleEndpoint {
  // VEHICLE APIS

  // Master Truck Apis

  final String vehTruck = '/api/v1/vehicles/waste/truck/all/1/';

  final String vehTruckPreInspection =
      '/api/v1/vehicles/waste/truck/pre-inspection/1/';

  final String vehTruckPreMaintenance =
      '/api/v1/vehicles/waste/truck/maintenance/reports/1/';

  final String vehTruckFuelExpense =
      '/api/v1/vehicles/waste/truck/getFuelExpenses/1/';

  // search

  final String vehTruckSearch = '/api/v1/vehicles/waste/truck/search/';

  final String vehTruckPreInspectionSearch =
      '/api/v1/vehicles/waste/truck/pre-inspection/filter/vehicle/';

  final String vehTruckPreMaintenanceSearch =
      '/api/v1/vehicles/waste/truck/maintenance/reports/search/';

  final String vehTruckFuelExpenseSearch =
      '/api/v1/vehicles/waste/truck/fuelExpense/search/vehicle/';

  // Master Car Apis

  final String vehCar = '/api/v1/vehicles/waste/car/all/1/';

  final String vehCarPreInspection =
      '/api/v1/vehicles/waste/car/pre-inspection/1/';

  final String vehCarPreMaintenance =
      '/api/v1/vehicles/waste/car/maintenance/reports/1/';

  final String vehCarFuelExpense =
      '/api/v1/vehicles/waste/car/getFuelExpenses/1/';

  // Search

  final String vehCarSearch = '/api/v1/vehicles/waste/car/search/';

  final String vehCarPreInspectionSearch =
      '/api/v1/vehicles/waste/car/pre-inspection/filter/vehicle/';

  final String vehCarPreMaintenanceSearch =
      '/api/v1/vehicles/waste/car/maintenance/reports/search/';

  final String vehCarFuelExpenseSearch =
      '/api/v1/vehicles/waste/car/fuelExpense/search/vehicle/';

  // Semi Trailers Apis

  final String vehSemiTrailer = '/api/v1/vehicles/waste/forklift/all/1/';

  final String vehSemiTrailerPreInspection =
      '/api/v1/vehicles/waste/fork-lift/pre-inspection/1/';

  final String vehSemiTailerMaintenance =
      '/api/v1/vehicles/waste/fork-lift/maintenance/reports/1/?limit=15';

  final String vehSemiTailerFuelExpenses =
      '/api/v1/vehicles/waste/fork-lift/getFuelExpenses/1/';

  // Search

  final String vehSemiTrailerSearch =
      '/api/v1/vehicles/waste/fork-lift/search/';

  final String vehSemiTrailerPreInspectionSearch =
      '/api/v1/vehicles/waste/fork-lift/pre-inspection/filter/vehicle/';

  final String vehSemiTrailerMaintenanceSearch =
      '/api/v1/vehicles/waste/fork-lift/maintenance/reports/search/?page=1&limit=15';

  final String vehSemiTrailerFuelExpenseSearch =
      '/api/v1/vehicles/waste/fork-lift/fuelExpense/search/vehicle/';

  final String vehGetFolderTruck = '/api/v1/drive/view/vehicle/folder/truck/';

  final String vehGetFolderCar = '/api/v1/drive/view/vehicle/folder/car/';

  final String vehGetFolderSemiTraile =
      '/api/v1/drive/view/vehicle/folder/semi-trailer/';

  final String vehAddFolder = '/api/v1/drive/create/vehicle/folder/';

  final String vehDeleteFolder = '/api/v1/drive/folder/delete/';

  final String vehEditFolder = '/api/v1/drive/folder/rename/';

  final String vehAddFile = '/api/v1/drive/file/create/';

  final String vehEditFile = '/api/v1/drive/file/rename/';

  final String vehDeleteFile = '/api/v1/drive/file/delete/';

  final String vehFileExpiry = '/api/v1/drive/file/expiry-date/';

  final String vehSearchFolder = '/api/v1/drive/search/folder/';

  final String vehSearchFileFolder = '/api/v1/drive/search/file/';
}
