import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:http/http.dart';
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
      {required int fileId,
      required String expiry,
      bool fromMaintenance = false});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      folderSearchVehicle({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      fileFolderSearchVehicle({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      getMaintenanceFolders(
          {required int vehicleId,
          required int parentFolderId,
          VehicleType? vehicleType});
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>> getVehicleList(
      {VehicleType? vehicleType});
  Future<Either<Map<MainFailure, dynamic>, VehicleModel>> editMaintenanceReport(
      {required int? vehicleId,
      VehicleType? vehicleType,
      required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> deleteMaintenanceReport(
      {required int? vehicleId, VehicleType? vehicleType});
  Future<Either<Map<MainFailure, dynamic>, String>> addMaintenanceReport({
    VehicleType? vehicleType,
    required VehicleModel data,
    required List<String> pickedFiles,
  });
  Future<Either<Map<MainFailure, dynamic>, String>> addFuelExpense(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, VehicleModel>> editFuelExpense(
      {required int? vehicleId,
      VehicleType? vehicleType,
      required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> deleteFuelExpense(
      {required int? vehicleId, VehicleType? vehicleType});
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
      {required int fileId,
      required String expiry,
      bool fromMaintenance = false}) async {
    var response = fromMaintenance == true
        ? await getIt<HttpService>().multipartRequest(
            data: {"date": expiry},
            method: 'PUT',
            apiUrl: "${ApiEndPoints().vehFileExpiry}$fileId/")
        : await getIt<HttpService>().multipartRequest(
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

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      getMaintenanceFolders(
          {required int vehicleId,
          required int parentFolderId,
          VehicleType? vehicleType}) async {
    String apiUrl;
    switch (vehicleType) {
      case VehicleType.truck:
        apiUrl =
            "${ApiEndPoints().getFolderMaintenance}truck/$vehicleId/$parentFolderId/";
        break;
      case VehicleType.car:
        apiUrl =
            "${ApiEndPoints().getFolderMaintenance}car/$vehicleId/$parentFolderId/";
        break;
      case VehicleType.semiTrailer:
        apiUrl =
            "${ApiEndPoints().getFolderMaintenance}forklift/$vehicleId/$parentFolderId/";
        break;
      default:
        apiUrl =
            "${ApiEndPoints().getFolderMaintenance}truck/$vehicleId/$parentFolderId/";
        break;
    }

    var response = await getIt<HttpService>()
        .request(authenticated: true, method: HttpMethod.get, apiUrl: apiUrl);

    return response.fold(
      (l) => Left(l),
      (res) async {
        FolderListModel maintenanceFolderList =
            FolderListModel.fromJson(jsonDecode(res.body));
        return Right(maintenanceFolderList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<VehicleModel>>> getVehicleList(
      {VehicleType? vehicleType}) async {
    String apiUrl;
    switch (vehicleType) {
      case VehicleType.truck:
        apiUrl = "${ApiEndPoints().getVehicleListTruck}list/";
        break;
      case VehicleType.car:
        apiUrl = "${ApiEndPoints().getVehicleListCar}list/";
        break;
      case VehicleType.semiTrailer:
        apiUrl = "${ApiEndPoints().getVehicleListSemitrailor}list/";
        break;
      default:
        apiUrl = "${ApiEndPoints().getVehicleListTruck}list/";
        break;
    }

    var response = await getIt<HttpService>()
        .multipartRequest(method: 'GET', apiUrl: apiUrl);

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<VehicleModel> vehicleList =
            data.map((e) => VehicleModel.fromJson(e)).toList();
        return Right(vehicleList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, VehicleModel>> editMaintenanceReport(
      {required int? vehicleId,
      VehicleType? vehicleType,
      required Map<String, String> data}) async {
    String apiUrl;
    switch (vehicleType) {
      case VehicleType.truck:
        apiUrl = "${ApiEndPoints().editMaintenanceReport}truck/";
        break;
      case VehicleType.car:
        apiUrl = "${ApiEndPoints().editMaintenanceReport}car/";
        break;
      case VehicleType.semiTrailer:
        apiUrl = "${ApiEndPoints().editMaintenanceReport}fork-lift/";
        break;
      default:
        apiUrl = "${ApiEndPoints().editMaintenanceReport}truck/";
        break;
    }
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PATCH',
        apiUrl: "${apiUrl}maintenance/report/edit/$vehicleId/");
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        VehicleModel editMaintenanceReport = VehicleModel.fromJson(data);
        return Right(editMaintenanceReport);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteMaintenanceReport(
      {required int? vehicleId, VehicleType? vehicleType}) async {
    String apiUrl;
    switch (vehicleType) {
      case VehicleType.truck:
        apiUrl = "${ApiEndPoints().deleteMaintenanceReport}truck/";
        break;
      case VehicleType.car:
        apiUrl = "${ApiEndPoints().deleteMaintenanceReport}car/";
        break;
      case VehicleType.semiTrailer:
        apiUrl = "${ApiEndPoints().deleteMaintenanceReport}fork-lift/";
        break;
      default:
        apiUrl = "${ApiEndPoints().deleteMaintenanceReport}truck/";
        break;
    }

    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: "${apiUrl}maintenance/report/delete/$vehicleId/");

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> addMaintenanceReport({
    VehicleType? vehicleType,
    required VehicleModel data,
    required List<String> pickedFiles,
  }) async {
    String apiUrl;
    switch (vehicleType) {
      case VehicleType.truck:
        apiUrl = "${ApiEndPoints().addMaintenanceReport}truck/";
        break;
      case VehicleType.car:
        apiUrl = "${ApiEndPoints().addMaintenanceReport}car/";
        break;
      case VehicleType.semiTrailer:
        apiUrl = "${ApiEndPoints().addMaintenanceReport}fork-lift/";
        break;
      default:
        apiUrl = "${ApiEndPoints().addMaintenanceReport}truck/";
        break;
    }
    MultipartRequest request = MultipartRequest(
      "POST",
      Uri.parse("$baseUrl${apiUrl}maintenance/report/create/"),
    );

    for (String filePath in pickedFiles) {
      request.files.add(
        await MultipartFile.fromPath("file", filePath),
      );
    }
    request.fields["vehicle"] = "${data.vehicle ?? 0}";
    request.fields["description"] = data.description ?? "";
    request.fields["invoice_date"] = data.invoiceDate ?? "";
    request.fields["ometer"] = data.ometer ?? "";
    request.fields["service_date"] = data.serviceDate ?? "";
    request.fields["invoice_number"] = data.invoiceNumber ?? "";
    request.fields["service_provided"] = data.serviceProvided ?? "";
    request.fields["hours"] = data.hours ?? "";
    request.fields["l_cost"] = data.lCost ?? "";
    request.fields["gst"] = data.gst ?? "";
    request.fields["s_part"] = data.sPart ?? "";
    request.fields["total_cost"] = data.totalCost ?? "";
    request.fields["tab_type"] = data.tabType ?? "";
    request.fields["vehicle_type"] = vehicleType == VehicleType.truck
        ? "truck"
        : vehicleType == VehicleType.car
            ? "car"
            : "fork-lift";
    var response =
        await getIt<HttpService>().multipartRequests(request: request);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> addFuelExpense(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: "POST", apiUrl: ApiEndPoints().addFuelExpense);

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, VehicleModel>> editFuelExpense(
      {required int? vehicleId,
      VehicleType? vehicleType,
      required Map<String, String> data}) async {
    String apiUrl;
    switch (vehicleType) {
      case VehicleType.truck:
        apiUrl = "${ApiEndPoints().editFuelExpense}truck/";
        break;
      case VehicleType.car:
        apiUrl = "${ApiEndPoints().editFuelExpense}car/";
        break;
      case VehicleType.semiTrailer:
        apiUrl = "${ApiEndPoints().editFuelExpense}fork-lift/";
        break;
      default:
        apiUrl = "${ApiEndPoints().editFuelExpense}truck/";
        break;
    }
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PATCH',
        apiUrl: "${apiUrl}editFuelExpense/$vehicleId/");
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        VehicleModel editFuelExpense = VehicleModel.fromJson(data);
        return Right(editFuelExpense);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteFuelExpense(
      {required int? vehicleId, VehicleType? vehicleType}) async {
    String apiUrl;
    switch (vehicleType) {
      case VehicleType.truck:
        apiUrl = "${ApiEndPoints().deleteFuelExpense}truck/";
        break;
      case VehicleType.car:
        apiUrl = "${ApiEndPoints().deleteFuelExpense}car/";
        break;
      case VehicleType.semiTrailer:
        apiUrl = "${ApiEndPoints().deleteFuelExpense}fork-lift/";
        break;
      default:
        apiUrl = "${ApiEndPoints().deleteFuelExpense}truck/";
        break;
    }

    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: "${apiUrl}deleteFuelExpense/$vehicleId/");

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }
}
