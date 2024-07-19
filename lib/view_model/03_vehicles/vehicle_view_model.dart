import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import '../../utilis/main_failure.dart';

part 'vehicle_view_model.g.dart';

final vmVehicle = getIt<VehicleViewModel>();

@injectable
@lazySingleton
class VehicleViewModel extends VehicleViewModelBase with _$VehicleViewModel {
  VehicleViewModel(super.vehicleService);
}

abstract class VehicleViewModelBase with Store {
  final IVehicleService vehicleService;

  VehicleViewModelBase(this.vehicleService);

  TextEditingController vehicleTextCtr = TextEditingController();
  TextEditingController fileFolderSearchCntrlr = TextEditingController();
  TextEditingController folderSearchCntrlr = TextEditingController();

  int vehicleTabIndex = 0;

  @observable
  Timer? debouce;

  @observable
  String? selectedVehicle = "Vehicle list";

  @observable
  VehicleActionType? vehicleStatusType;
  @observable
  VehicleType? vehicleType;

  @observable
  String? searchType;

  @observable
  List<String> folderNames = [];

  @observable
  int? parentFolderId;

  @observable
  String? selectedFileName;

  @observable
  String? selectedFilePath;

  @observable
  int? loadinIndexFile;

  @observable
  int? loadinIndexFolder;

  @observable
  DateTime? selectedExpiryDate;

  @action
  void onTextChanged(Function() function) {
    if (debouce?.isActive ?? false) debouce?.cancel();
    debouce = Timer(const Duration(milliseconds: 500), () => function());
  }

  @action
  void dropDownUpdate(VehicleActionType statusType, String statusString) {
    vehicleStatusType = statusType;
    selectedVehicle = statusString;
  }

//      _      ____    ___      ____      _      _       _       ____
//     / \    |  _ \  |_ _|    / ___|    / \    | |     | |     / ___|
//    / _ \   | |_) |  | |    | |       / _ \   | |     | |     \___ \
//   / ___ \  |  __/   | |    | |___   / ___ \  | |___  | |___   ___) |
//  /_/   \_\ |_|     |___|    \____| /_/   \_\ |_____| |_____| |____/

  @observable
  ApiResponse<List<VehicleModel>> masterTruckApiResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> masterTruckApi({int? page}) async {
    if (vehicleTextCtr.text.isNotEmpty) {
      masterTruckSearchServiceApi(vehicleTextCtr.text);
    } else {
      masterTruckApiResponse = masterTruckApiResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );
      final result = await vehicleService
          .masterTruckServiceApi(vehicleStatusType, page: page);
      return _commonMasterTruckResultHandler(result: result, page: page);
    }
  }

  @action
  Future<void> masterTruckSearchServiceApi(String value, {int? page}) async {
    masterTruckApiResponse = masterTruckApiResponse.copyWith(
      errors: null,
      loading: page == null,
      paginationLoading: page != null,
    );

    final result = await vehicleService.masterTruckSearchServiceApi(
      vehicleStatusType,
      value,
    );

    return _commonMasterTruckResultHandler(result: result, page: page);
  }

  void _commonMasterTruckResultHandler({
    int? page,
    required Either<Map<MainFailure, dynamic>, List<VehicleModel>> result,
  }) {
    result.fold(
      (l) {
        masterTruckApiResponse = masterTruckApiResponse.copyWith(
          errors: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (r) {
        List<VehicleModel> list = masterTruckApiResponse.data?.toList() ?? [];
        if (page == null) {
          list = r;
        } else {
          list.addAll(r);
        }

        masterTruckApiResponse = masterTruckApiResponse.copyWith(
          data: list,
          errors: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: r.length == 10,
        );
      },
    );
  }

  ScrollController masterTruckController = ScrollController();

  void masterTruckPagination() {
    masterTruckController.addListener(() {
      if (masterTruckController.position.pixels ==
              masterTruckController.position.maxScrollExtent &&
          !masterTruckController.position.outOfRange &&
          masterTruckApiResponse.pagination &&
          !masterTruckApiResponse.paginationLoading) {
        int pageNo = masterTruckApiResponse.pageNo + 1;
        if (vehicleTextCtr.text.isNotEmpty) {
          masterTruckSearchServiceApi(vehicleTextCtr.text, page: pageNo);
          return;
        }
        masterTruckApi(page: pageNo);
      }
    });
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  ApiResponse<List<VehicleModel>> masterCarApiResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> masterCarApi({int? page}) async {
    if (vehicleTextCtr.text.isNotEmpty) {
      masterCarSearchApi(vehicleTextCtr.text);
    } else {
      masterCarApiResponse = masterCarApiResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );
      final result = await vehicleService.masterCarServiceApi(
        vehicleStatusType,
        page: page,
      );
      return _commonMasterCarResultHandler(result: result, page: page);
    }
  }

  @action
  Future<void> masterCarSearchApi(String value, {int? page}) async {
    masterCarApiResponse = masterCarApiResponse.copyWith(
      errors: null,
      loading: page == null,
      paginationLoading: page != null,
    );

    final result = await vehicleService.masterCarSearchServiceApi(
      vehicleStatusType,
      value,
      page: page,
    );
    return _commonMasterCarResultHandler(result: result, page: page);
  }

  void _commonMasterCarResultHandler({
    int? page,
    required Either<Map<MainFailure, dynamic>, List<VehicleModel>> result,
  }) {
    result.fold(
      (l) {
        masterCarApiResponse = masterCarApiResponse.copyWith(
          errors: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (r) {
        List<VehicleModel> list = masterCarApiResponse.data?.toList() ?? [];
        if (page == null) {
          list = r;
        } else {
          list.addAll(r);
        }

        masterCarApiResponse = masterCarApiResponse.copyWith(
          data: list,
          errors: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: r.length == 10,
        );
      },
    );
  }

  ScrollController masterCarController = ScrollController();

  void masterCarPagination() {
    masterCarController.addListener(() {
      if (masterCarController.position.pixels ==
              masterCarController.position.maxScrollExtent &&
          !masterCarController.position.outOfRange &&
          masterCarApiResponse.pagination &&
          !masterCarApiResponse.paginationLoading) {
        int pageNo = masterCarApiResponse.pageNo + 1;
        if (vehicleTextCtr.text.isNotEmpty) {
          masterCarSearchApi(vehicleTextCtr.text, page: pageNo);
          return;
        }
        masterCarApi(page: pageNo);
      }
    });
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  ApiResponse<List<VehicleModel>> semiTrailorApiResponse =
      ApiResponse<List<VehicleModel>>();

  @action
  Future<void> semiTrailorApi({int? page}) async {
    if (vehicleTextCtr.text.isNotEmpty) {
      semiTrailorSearchApi(vehicleTextCtr.text);
    } else {
      semiTrailorApiResponse = semiTrailorApiResponse.copyWith(
        errors: null,
        loading: page == null,
        paginationLoading: page != null,
      );
      final result = await vehicleService
          .semiTrailorServiceApi(vehicleStatusType, page: page);
      return _commonSemiTrailorResultHandler(result: result, page: page);
    }
  }

  @action
  Future<void> semiTrailorSearchApi(String value, {int? page}) async {
    semiTrailorApiResponse = semiTrailorApiResponse.copyWith(
      errors: null,
      loading: page == null,
      paginationLoading: page != null,
    );
    final result = await vehicleService.semiTrailorSearchServiceApi(
      vehicleStatusType,
      value,
      page: page,
    );
    return _commonSemiTrailorResultHandler(result: result, page: page);
  }

  void _commonSemiTrailorResultHandler({
    int? page,
    required Either<Map<MainFailure, dynamic>, List<VehicleModel>> result,
  }) {
    result.fold(
      (l) {
        semiTrailorApiResponse = semiTrailorApiResponse.copyWith(
          errors: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (r) {
        List<VehicleModel> list = semiTrailorApiResponse.data?.toList() ?? [];
        if (page == null) {
          list = r;
        } else {
          list.addAll(r);
        }

        semiTrailorApiResponse = semiTrailorApiResponse.copyWith(
          data: list,
          errors: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: r.length == 10,
        );
      },
    );
  }

  ScrollController semiTrailorController = ScrollController();

  void semiTrailorPagination() {
    semiTrailorController.addListener(() {
      if (semiTrailorController.position.pixels ==
              semiTrailorController.position.maxScrollExtent &&
          !semiTrailorController.position.outOfRange &&
          semiTrailorApiResponse.pagination &&
          !semiTrailorApiResponse.paginationLoading) {
        int pageNo = semiTrailorApiResponse.pageNo + 1;
        if (vehicleTextCtr.text.isNotEmpty) {
          semiTrailorSearchApi(vehicleTextCtr.text, page: pageNo);
          return;
        }
        semiTrailorApi(page: pageNo);
      }
    });
  }

  @observable
  ApiResponse<FolderListModel> vehicleFoldersResponse =
      ApiResponse<FolderListModel>();
  @observable
  ApiResponse<FolderListModel> vehicleFoldersResponse2 =
      ApiResponse<FolderListModel>();
  @action
  Future<void> getVehicleFoldersApi(
      {required int vehicleId, required num parentFolderId}) async {
    if (parentFolderId == 1) {
      vehicleFoldersResponse =
          vehicleFoldersResponse.copyWith(error: null, loading: true);

      final result = await vehicleService.getVehicleFolders(
          vehicleId: vehicleId,
          parentFolderId: parentFolderId,
          vehicleType: vehicleType);
      return result.fold(
        (l) {
          vehicleFoldersResponse = vehicleFoldersResponse.copyWith(
            errors: l,
            loading: false,
          );
        },
        (r) {
          vehicleFoldersResponse = vehicleFoldersResponse.copyWith(
            data: r,
            error: null,
            loading: false,
          );
          searchType = vehicleFoldersResponse.data?.folders?[0].type;
        },
      );
    } else {
      vehicleFoldersResponse2 = vehicleFoldersResponse2.copyWith(
          error: null,
          // loading: fromTeamProfileScreen == true
          //     ? true
          //     : teamFoldersResponse2.data == null,
          loading: true);

      final result = await vehicleService.getVehicleFolders(
          vehicleId: vehicleId,
          parentFolderId: parentFolderId,
          vehicleType: vehicleType);
      return result.fold(
        (l) {
          vehicleFoldersResponse2 = vehicleFoldersResponse2.copyWith(
            errors: l,
            loading: false,
          );
        },
        (r) {
          vehicleFoldersResponse2 = vehicleFoldersResponse2.copyWith(
            data: r,
            error: null,
            loading: false,
          );
        },
      );
    }
  }

  @observable
  ApiResponse<String> addFolderResponse = ApiResponse<String>();
  @action
  Future<void> addVehicleFolder({
    required BuildContext context,
    required String name,
    required int vehicleId,
    required num parentfolder,
    required String vehicleType,
  }) async {
    addFolderResponse = addFolderResponse.copyWith(error: null, loading: true);

    final result = await vehicleService.addVehicleFolders(data: {
      "name": name,
      "vehicle_id": vehicleId.toString(),
      "parent_folder": parentfolder.toString(),
      "vehicle_type": vehicleType
    });

    return result.fold(
      (l) {
        addFolderResponse =
            addFolderResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getVehicleFoldersApi(
            vehicleId: vehicleId, parentFolderId: parentfolder);
        addFolderResponse =
            addFolderResponse.copyWith(error: null, loading: false);
        // vmTeam.textFolderAddController.clear();
      },
    );
  }

  @observable
  ApiResponse<String> editVehicleFolderResponse = ApiResponse<String>();
  @action
  Future<void> editVehicleFolderApi({
    required BuildContext context,
    required int folderId,
    required int parentFolderId,
    required String name,
    required int vehicleId,
  }) async {
    editVehicleFolderResponse =
        editVehicleFolderResponse.copyWith(error: null, loading: true);

    final result = await vehicleService
        .editVehicleFolders(data: {"name": name}, folderId: folderId);
    return result.fold(
      (l) {
        editVehicleFolderResponse = editVehicleFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getVehicleFoldersApi(
            vehicleId: vehicleId, parentFolderId: parentFolderId);
        editVehicleFolderResponse = editVehicleFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> deleteVehicleFolderApi(
      {required BuildContext context,
      required int folderId,
      required int vehicleId,
      required num parentFolderId}) async {
    addFolderResponse = addFolderResponse.copyWith(error: null, loading: true);

    final result =
        await vehicleService.deleteVehicleFolders(folderId: folderId);
    return result.fold(
      (l) {
        addFolderResponse = addFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getVehicleFoldersApi(
            vehicleId: vehicleId, parentFolderId: parentFolderId);
        addFolderResponse = addFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<String> addVehicleFileResponse = ApiResponse<String>();
  @action
  Future<void> addVehicleFileApi({
    required BuildContext context,
    required int vehicleId,
    required num parentfolder,
    String? files,
  }) async {
    addVehicleFileResponse =
        addVehicleFileResponse.copyWith(error: null, loading: true);

    final result = await vehicleService.addVehicleFiles(
        data: {"folder": parentfolder.toString(), "file": files ?? ""});
    return result.fold(
      (l) {
        addVehicleFileResponse =
            addVehicleFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getVehicleFoldersApi(
            vehicleId: vehicleId, parentFolderId: parentfolder);
        addVehicleFileResponse = addVehicleFileResponse.copyWith(
            data: r, error: null, loading: false);
        // vmTeam.textFolderAddController.clear();
        // context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> editVehicleFileResponse = ApiResponse<String>();
  @action
  Future<void> editVehicleFilesApi({
    required BuildContext context,
    required int filesId,
    required int parentFolderId,
    required String name,
    required int vehicleId,
  }) async {
    editVehicleFileResponse =
        editVehicleFileResponse.copyWith(error: null, loading: true);

    final result = await vehicleService
        .editVehicleFiles(data: {"name": name}, fileId: filesId);
    return result.fold(
      (l) {
        editVehicleFileResponse = editVehicleFileResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getVehicleFoldersApi(
            vehicleId: vehicleId, parentFolderId: parentFolderId);
        editVehicleFileResponse = editVehicleFileResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> deleteVehicleFilesApi(
      {required BuildContext context,
      required int fileId,
      required int vehicleId,
      required num parentFolderId}) async {
    addVehicleFileResponse =
        addVehicleFileResponse.copyWith(error: null, loading: true);

    final result = await vehicleService.deleteVehicleFiles(
        fileId: fileId, folderId: parentFolderId);
    return result.fold(
      (l) {
        addVehicleFileResponse = addVehicleFileResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) async {
        await getVehicleFoldersApi(
            vehicleId: vehicleId, parentFolderId: parentFolderId);
        addVehicleFileResponse = addVehicleFileResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<FolderListModel> expiryFileResponse =
      ApiResponse<FolderListModel>();
  @action
  Future<void> exipryDateFileApi(
      {required BuildContext context,
      required int fileId,
      required String expiry,
      required int vehicleId,
      required num parentFolderId}) async {
    expiryFileResponse = expiryFileResponse.copyWith(
        error: null, loading: expiryFileResponse.data == null);
    final result =
        await vehicleService.expiryDateFiles(fileId: fileId, expiry: expiry);

    return result.fold(
      (l) {
        expiryFileResponse =
            expiryFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getVehicleFoldersApi(
            vehicleId: vehicleId, parentFolderId: parentFolderId);
        expiryFileResponse =
            expiryFileResponse.copyWith(error: null, loading: false);
      },
    );
  }

  @action
  Future<void> folderSearchVehicleApi(String searchData, int folderId,
      String searchType, int vehicleId, String vehicleType) async {
    vehicleFoldersResponse =
        vehicleFoldersResponse.copyWith(errors: null, loading: true);

    final result = await vehicleService.folderSearchVehicle(data: {
      "key": searchData,
      "folder_id": "$folderId",
      "search_type": searchType,
      "vehicle_id": "$vehicleId",
      "vehicle_type": vehicleType
    });
    return result.fold(
      (l) {
        vehicleFoldersResponse =
            vehicleFoldersResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        vehicleFoldersResponse = vehicleFoldersResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @action
  Future<void> fileFolderSearchApi(String searchData, int folderId,
      String searchType, int vehicleId, String vehicleType) async {
    vehicleFoldersResponse2 =
        vehicleFoldersResponse2.copyWith(errors: null, loading: true);

    final result = await vehicleService.fileFolderSearchVehicle(data: {
      "key": searchData,
      "folder_id": "$folderId",
      "search_type": searchType,
      "vehicle_id": "$vehicleId",
      "vehicle_type": vehicleType
    });
    return result.fold(
      (l) {
        vehicleFoldersResponse2 =
            vehicleFoldersResponse2.copyWith(errors: l, loading: false);
      },
      (r) {
        vehicleFoldersResponse2 = vehicleFoldersResponse2.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|
  @action
  expiryDatePickerFn(BuildContext context, date, int fileId, num parentFolderId,
      int vehicleId) {
    selectedExpiryDate = date;
    String dateString = DateFormat('yyyy-MM-dd').format(selectedExpiryDate!);
    exipryDateFileApi(
        fileId: fileId,
        expiry: dateString,
        context: context,
        parentFolderId: parentFolderId,
        vehicleId: vehicleId);
  }

  @observable
  VehicleActionType? sstatus;

  @observable
  String? selectedTruckresponse;

  @action
  void setSelectedTruck(String? newValue) {
    selectedTruckresponse = newValue;
  }
}
