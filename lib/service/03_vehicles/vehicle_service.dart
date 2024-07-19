import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

enum VehicleActionType {
  preInspectionCheck,
  maintenanceCheck,
  vehicleList,
  fuelExpence,
}

enum VehicleType {
  truck,
  car,
  semiTrailer,
}

abstract class IVehicleService {
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterTruckServiceApi(truckdrop, {int? page});

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterTruckSearchServiceApi(searchtrucksemidrop, value, {int? page});

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterCarServiceApi(VehicleActionType? status, {int? page});

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterCarSearchServiceApi(
    VehicleActionType? status,
    String value, {
    int? page,
  });

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      semiTrailorServiceApi(VehicleActionType? status, {int? page});

  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      semiTrailorSearchServiceApi(
    VehicleActionType? status,
    String value, {
    int? page,
  });
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getVehicleFolders(
      {required int vehicleId,
      required num parentFolderId,
      VehicleType? vehicleType});
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addVehicleFolders(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> deleteVehicleFolders(
      {required int folderId});
  Future<Either<Map<MainFailure, dynamic>, String>> editVehicleFolders(
      {required Map<String, String> data, required int folderId});
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addVehicleFiles(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> editVehicleFiles(
      {required Map<String, String> data, required int fileId});
  Future<Either<Map<MainFailure, dynamic>, String>> deleteVehicleFiles(
      {required int fileId, required num folderId});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required int fileId, required String expiry});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      folderSearchVehicle({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      fileFolderSearchVehicle({required Map<String, String> data});
}

@LazySingleton(as: IVehicleService)
class VehicleService implements IVehicleService {
  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterTruckServiceApi(truckdrop, {int? page}) async {
    String apiUrl;

    String pagination = '?page=${page ?? 1}&limit=10';

    switch (truckdrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints().vehTruck;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints().vehTruckPreInspection;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints().vehTruckPreMaintenance;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints().vehTruckFuelExpense;
        break;
      default:
        apiUrl = ApiEndPoints().vehTruck;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterTruckSearchServiceApi(trucksearchdrop, value, {int? page}) async {
    String apiUrl;
    String pagination = '?page=${page ?? 1}&limit=10';
    Map<String, String>? _data = {"key": value};
    switch (trucksearchdrop) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints().vehTruckSearch;
        _data = {"key": value};
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints().vehTruckPreInspectionSearch;
        _data = {"registration": value};
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints().vehTruckPreMaintenanceSearch;
        _data = {"key": value};
        break;
      case VehicleActionType.fuelExpence:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehTruckFuelExpenseSearch;
        break;
      default:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehTruckSearch;
        break;
    }

    var response = await getIt<HttpService>().multipartRequest(
      data: _data,
      method: 'POST',
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> fuelcarsearch =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(fuelcarsearch);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterCarServiceApi(VehicleActionType? status, {int? page}) async {
    String apiUrl;
    String pagination = '?page=${page ?? 1}&limit=10';

    switch (status) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints().vehCar;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints().vehCarPreInspection;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints().vehCarPreMaintenance;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints().vehCarFuelExpense;
        break;
      default:
        apiUrl = ApiEndPoints().vehCar;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      masterCarSearchServiceApi(
    VehicleActionType? status,
    String value, {
    int? page,
  }) async {
    String apiUrl;
    String pagination = '?page=${page ?? 1}&limit=10';

    Map<String, String>? _data = {"key": value};
    switch (status) {
      case VehicleActionType.vehicleList:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehCarSearch;
        break;
      case VehicleActionType.preInspectionCheck:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehCarPreInspectionSearch;
        break;
      case VehicleActionType.maintenanceCheck:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehCarPreMaintenanceSearch;
        break;
      case VehicleActionType.fuelExpence:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehCarFuelExpenseSearch;
        break;
      default:
        apiUrl = ApiEndPoints().vehCarSearch;
        break;
    }

    var response = await getIt<HttpService>().multipartRequest(
      data: _data,
      method: 'POST',
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;

        List<VehicleModel> fuelcarsearch =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(fuelcarsearch);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      semiTrailorServiceApi(VehicleActionType? status, {int? page}) async {
    String apiUrl;
    String pagination = '?page=${page ?? 1}&limit=10';

    switch (status) {
      case VehicleActionType.vehicleList:
        apiUrl = ApiEndPoints().vehSemiTrailer;
        break;
      case VehicleActionType.preInspectionCheck:
        apiUrl = ApiEndPoints().vehSemiTrailerPreInspection;
        break;
      case VehicleActionType.maintenanceCheck:
        apiUrl = ApiEndPoints().vehSemiTailerMaintenance;
        break;
      case VehicleActionType.fuelExpence:
        apiUrl = ApiEndPoints().vehSemiTailerFuelExpenses;
        break;
      default:
        apiUrl = ApiEndPoints().vehSemiTrailer;
    }

    var response = await getIt<HttpService>().request(
      authenticated: true,
      method: HttpMethod.get,
      apiUrl: apiUrl + pagination,
    );

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>>
      semiTrailorSearchServiceApi(
    VehicleActionType? status,
    String value, {
    int? page,
  }) async {
    Map<String, String>? _data = {"key": value};

    String apiUrl;
    String pagination = '?page=${page ?? 1}&limit=10';

    switch (status) {
      case VehicleActionType.vehicleList:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehSemiTrailerSearch;
        break;
      case VehicleActionType.preInspectionCheck:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehSemiTrailerPreInspectionSearch;
        break;
      case VehicleActionType.maintenanceCheck:
        _data = {"key": value};
        apiUrl = ApiEndPoints().vehSemiTrailerMaintenanceSearch;
        break;
      case VehicleActionType.fuelExpence:
        _data = {"registration": value};
        apiUrl = ApiEndPoints().vehSemiTrailerFuelExpenseSearch;
        break;
      default:
        apiUrl = ApiEndPoints().vehSemiTrailerSearch;
        break;
    }

    var response = await getIt<HttpService>().multipartRequest(
      data: _data,
      method: 'POST',
      apiUrl: apiUrl + pagination,
    );
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicles =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicles);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getVehicleFolders(
      {required int vehicleId,
      required num parentFolderId,
      VehicleType? vehicleType}) async {
    String apiUrl;
    switch (vehicleType) {
      case VehicleType.truck:
        apiUrl =
            "${ApiEndPoints().vehGetFolderTruck}$vehicleId/$parentFolderId";
        break;
      case VehicleType.car:
        apiUrl = "${ApiEndPoints().vehGetFolderCar}$vehicleId/$parentFolderId";
        break;
      case VehicleType.semiTrailer:
        apiUrl =
            "${ApiEndPoints().vehGetFolderSemiTraile}$vehicleId/$parentFolderId";
        break;
      default:
        apiUrl =
            "${ApiEndPoints().vehGetFolderTruck}$vehicleId/$parentFolderId";
        break;
    }

    var response = await getIt<HttpService>()
        .request(authenticated: true, method: HttpMethod.get, apiUrl: apiUrl);

    return response.fold(
      (l) => Left(l),
      (res) async {
        FolderListModel vehicleFolderList =
            FolderListModel.fromJson(jsonDecode(res.body));
        return Right(vehicleFolderList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addVehicleFolders(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().vehAddFolder);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right("Successfully added");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteVehicleFolders(
      {required int folderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().vehDeleteFolder}$folderId/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editVehicleFolders(
      {required Map<String, String> data, required int folderId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().vehEditFolder}/$folderId/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addVehicleFiles(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().vehAddFile);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return Right("Success");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editVehicleFiles(
      {required Map<String, String> data, required int fileId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().vehEditFile}$fileId/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteVehicleFiles(
      {required int fileId, required num folderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().vehDeleteFile}$fileId/$folderId/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required int fileId, required String expiry}) async {
    var response = await getIt<HttpService>().multipartRequest(
        method: 'PUT',
        apiUrl: "${ApiEndPoints().vehFileExpiry}$fileId/?date=$expiry");
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        FolderListModel expiry = FolderListModel.fromJson(data);
        return Right(expiry);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      folderSearchVehicle({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().vehSearchFolder);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        List<FolderModel> searchedFolderList =
            List<FolderModel>.from(data.map((e) => FolderModel.fromJson(e)));
        List<FolderModel> searchedFolderListt = List<FolderModel>.from(
            data.map((e) => FolderModel(folders: searchedFolderList)));

        FolderListModel searchedFolderListtt =
            FolderListModel(folders: searchedFolderListt);
        return Right(searchedFolderListtt);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      fileFolderSearchVehicle({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().vehSearchFileFolder);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        FolderListModel searchedfileFolderList = FolderListModel.fromJson(data);
        return Right(searchedfileFolderList);
      },
    );
  }
}
