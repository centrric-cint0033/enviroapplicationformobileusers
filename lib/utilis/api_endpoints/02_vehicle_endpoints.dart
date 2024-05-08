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
}
