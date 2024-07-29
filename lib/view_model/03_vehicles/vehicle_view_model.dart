import 'dart:async';
import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:file_picker/file_picker.dart';
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
  TextEditingController descriptionCntrlr = TextEditingController();
  TextEditingController serviceProvidedCntrlr = TextEditingController();
  TextEditingController ometerCntrlr = TextEditingController();
  TextEditingController invoiceNoCntrlr = TextEditingController();
  TextEditingController hoursCntrlr = TextEditingController();
  TextEditingController labourCostCntrlr = TextEditingController();
  TextEditingController sparePartsCntrlr = TextEditingController();
  TextEditingController gstCntrlr = TextEditingController();
  TextEditingController totalCostCntrlr = TextEditingController();
  TextEditingController regoCntrlr = TextEditingController();
  TextEditingController filledByCntrlr = TextEditingController();
  TextEditingController currentReadingCntrlr = TextEditingController();
  TextEditingController readingAfterCntrlr = TextEditingController();
  TextEditingController volumeCntrlr = TextEditingController();

  int vehicleTabIndex = 0;

  @observable
  Timer? debouce;

  @observable
  String? selectedVehicle = "Vehicle list";

  @observable
  VehicleActionType? vehicleStatusType = VehicleActionType.vehicleList;
  @observable
  VehicleType? vehicleType;

  @observable
  String? searchType;

  @observable
  List<String> folderNames = [];

  @observable
  int? parentFolderId;

  @observable
  int? folder;

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

  @observable
  String selectedVehicleDrodown = "";

  @observable
  VehicleModel? selectedVehiclee;

  @observable
  int? selectedVehicleeId;

  @observable
  VehicleModel? selectedVehicleAddMaintenance;

  @observable
  int? selectedVehicleAddMaintenanceId;

  @observable
  DateTime? selectedInvoiceDate;

  @observable
  DateTime? selectedServiceDate;

  @observable
  DateTime? selectedInvoiceDateAddMaintenance;

  @observable
  DateTime? selectedServiceDateAddMaintenance;

  @observable
  bool showSubmitBn = false;

  @observable
  ObservableList<String>? pickedFileList = ObservableList<String>();

  @observable
  DateTime? selectedFuelExpenseDate;

  @observable
  TimeOfDay? selectedFuelExpenseTime;

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
  Future<void> addVehicleFileApi(
      {required BuildContext context,
      required int vehicleId,
      required num parentfolder,
      String? files,
      bool fromMaintenance = false}) async {
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
        fromMaintenance == false
            ? await getVehicleFoldersApi(
                vehicleId: vehicleId, parentFolderId: parentfolder)
            : getMaintenanceFoldersApi(
                context: context,
                vehicleId: vehicleId,
                parentFolderId: folder ?? 0);
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
  Future<void> editVehicleFilesApi(
      {required BuildContext context,
      required int filesId,
      required int parentFolderId,
      required String name,
      required int vehicleId,
      int? folder,
      bool fromMaintenance = false}) async {
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
        fromMaintenance == false
            ? await getVehicleFoldersApi(
                vehicleId: vehicleId, parentFolderId: parentFolderId)
            : await getMaintenanceFoldersApi(
                context: context,
                vehicleId: vehicleId,
                parentFolderId: folder ?? 0);
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
      required num parentFolderId,
      int? folder,
      bool fromMaintenance = false}) async {
    addVehicleFileResponse =
        addVehicleFileResponse.copyWith(error: null, loading: true);

    final result = fromMaintenance == false
        ? await vehicleService.deleteVehicleFiles(
            fileId: fileId, folderId: parentFolderId)
        : await vehicleService.deleteVehicleFiles(
            fileId: fileId, folderId: folder ?? 0);
    return result.fold(
      (l) {
        addVehicleFileResponse = addVehicleFileResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) async {
        fromMaintenance == false
            ? await getVehicleFoldersApi(
                vehicleId: vehicleId, parentFolderId: parentFolderId)
            : await getMaintenanceFoldersApi(
                context: context,
                vehicleId: vehicleId,
                parentFolderId: folder ?? 0);
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
      required num parentFolderId,
      int? folder,
      bool fromMaintenance = false}) async {
    expiryFileResponse = expiryFileResponse.copyWith(
        error: null, loading: expiryFileResponse.data == null);
    final result = await vehicleService.expiryDateFiles(
        fileId: fileId, expiry: expiry, fromMaintenance: fromMaintenance);

    return result.fold(
      (l) {
        expiryFileResponse =
            expiryFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        fromMaintenance == false
            ? await getVehicleFoldersApi(
                vehicleId: vehicleId, parentFolderId: parentFolderId)
            : await getMaintenanceFoldersApi(
                context: context,
                vehicleId: vehicleId,
                parentFolderId: folder ?? 0);
        expiryFileResponse =
            expiryFileResponse.copyWith(error: null, loading: false);
      },
    );
  }

  @action
  Future<void> folderSearchVehicleApi(
      BuildContext context,
      String searchData,
      int folderId,
      String searchType,
      int vehicleId,
      String vehicleType) async {
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
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        vehicleFoldersResponse = vehicleFoldersResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @action
  Future<void> fileFolderSearchApi(
      BuildContext context,
      String searchData,
      int folderId,
      String searchType,
      int vehicleId,
      String vehicleType) async {
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
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        vehicleFoldersResponse2 = vehicleFoldersResponse2.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @observable
  ApiResponse<FolderListModel> maintenanceFoldersResponse =
      ApiResponse<FolderListModel>();
  @action
  Future<void> getMaintenanceFoldersApi(
      {required BuildContext context,
      required int vehicleId,
      required int parentFolderId}) async {
    maintenanceFoldersResponse =
        maintenanceFoldersResponse.copyWith(error: null, loading: true);
    final result = await vehicleService.getMaintenanceFolders(
        vehicleId: vehicleId,
        parentFolderId: parentFolderId,
        vehicleType: vehicleType);
    return result.fold(
      (l) {
        maintenanceFoldersResponse = maintenanceFoldersResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        maintenanceFoldersResponse = maintenanceFoldersResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        searchType = maintenanceFoldersResponse.data?.folders?[0].type;
      },
    );
  }

  @observable
  ApiResponse<List<VehicleModel>> vehicleListResponse =
      ApiResponse<List<VehicleModel>>();
  @action
  Future<void> getVehicleListApi() async {
    vehicleListResponse =
        vehicleListResponse.copyWith(error: null, loading: true);
    final result =
        await vehicleService.getVehicleList(vehicleType: vehicleType);
    return result.fold(
      (l) {
        vehicleListResponse = vehicleListResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) {
        vehicleListResponse = vehicleListResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<VehicleModel> editedMaintenanceResponse =
      ApiResponse<VehicleModel>();
  @action
  Future<void> editMaintenanceReportApi({
    required BuildContext context,
    required int vehicleId,
    required VehicleModel data,
  }) async {
    editedMaintenanceResponse =
        editedMaintenanceResponse.copyWith(errors: null, loading: true);

    final result = await vehicleService.editMaintenanceReport(
        vehicleId: vehicleId,
        vehicleType: vehicleType,
        data: {
          "vehicle": "${data.vehicle ?? 0}",
          "description": data.description ?? "",
          "invoice_date": data.invoiceDate ?? "",
          "ometer": data.ometer ?? "",
          "service_date ": data.serviceDate ?? "",
          "invoice_number": data.invoiceNumber ?? "",
          "service_provided ": data.serviceProvided ?? "",
          "hours": data.hours ?? "",
          "l_cost": data.lCost ?? "",
          "gst": data.gst ?? "",
          "s_part": data.sPart ?? "",
          "total_cost": data.totalCost ?? "",
          "tab_type": data.tabType ?? "",
        });
    return result.fold(
      (l) {
        editedMaintenanceResponse =
            editedMaintenanceResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        editedMaintenanceResponse = editedMaintenanceResponse.copyWith(
            data: r, errors: null, loading: false);
        if (vehicleType == VehicleType.truck) {
          masterTruckApi();
        } else if (vehicleType == VehicleType.car) {
          masterCarApi();
        } else if (vehicleType == VehicleType.semiTrailer) {
          semiTrailorApi();
        }

        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> addMaintenanceResponse = ApiResponse<String>();
  @action
  Future<void> addMaintenanceReportApi(
      {required BuildContext context,
      required VehicleModel data,
      required List<String> pickedFiles}) async {
    addMaintenanceResponse =
        addMaintenanceResponse.copyWith(errors: null, loading: true);

    final result = await vehicleService.addMaintenanceReport(
        vehicleType: vehicleType, data: data, pickedFiles: pickedFiles);
    return result.fold(
      (l) {
        addMaintenanceResponse =
            addMaintenanceResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        addMaintenanceResponse = addMaintenanceResponse.copyWith(
            data: r, errors: null, loading: false);
        clearFn();
        if (vehicleType == VehicleType.truck) {
          masterTruckApi();
        } else if (vehicleType == VehicleType.car) {
          masterCarApi();
        } else if (vehicleType == VehicleType.semiTrailer) {
          semiTrailorApi();
        }

        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> deleteMaintenanceResponse = ApiResponse<String>();
  @action
  Future<void> deleteMaintenanceReportApi({
    required BuildContext context,
    required int vehicleId,
  }) async {
    deleteMaintenanceResponse =
        deleteMaintenanceResponse.copyWith(error: null, loading: true);
    final result = await vehicleService.deleteMaintenanceReport(
        vehicleId: vehicleId, vehicleType: vehicleType);
    return result.fold(
      (l) {
        deleteMaintenanceResponse = deleteMaintenanceResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        if (vehicleType == VehicleType.truck) {
          masterTruckApi();
        } else if (vehicleType == VehicleType.car) {
          masterCarApi();
        } else if (vehicleType == VehicleType.semiTrailer) {
          semiTrailorApi();
        }
        deleteMaintenanceResponse = deleteMaintenanceResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<String> addFuelExpenseResponse = ApiResponse<String>();
  @action
  Future<void> addFuelExpenseApi({
    required BuildContext context,
    required VehicleModel data,
  }) async {
    addFuelExpenseResponse =
        addFuelExpenseResponse.copyWith(errors: null, loading: true);

    final result = await vehicleService.addFuelExpense(data: {
      "vehicle": "${data.vehicle}",
      "date": data.date ?? "",
      "time": data.time ?? "",
      "truck_rego": data.truckRego ?? "",
      "current_reading_before": data.currentReadingBefore ?? "",
      "reading_after_filling": data.readingAfterFilling ?? "",
      "filled_by": data.filledBy ?? "",
      "volume_usedIn_liter": data.volumeUsedInLiter ?? "",
      "tab_type": data.tabType ?? "",
      "vehicle_type": vehicleType == VehicleType.truck
          ? "truck"
          : vehicleType == VehicleType.car
              ? "car"
              : "fork-lift",
    });
    return result.fold(
      (l) {
        addFuelExpenseResponse =
            addFuelExpenseResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        addFuelExpenseResponse = addFuelExpenseResponse.copyWith(
            data: r, errors: null, loading: false);
        clearFn2();
        if (vehicleType == VehicleType.truck) {
          masterTruckApi();
        } else if (vehicleType == VehicleType.car) {
          masterCarApi();
        } else if (vehicleType == VehicleType.semiTrailer) {
          semiTrailorApi();
        }

        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<VehicleModel> editeFuelExpenseResponse =
      ApiResponse<VehicleModel>();
  @action
  Future<void> editeFuelExpenseApi({
    required BuildContext context,
    required int vehicleId,
    required VehicleModel data,
  }) async {
    editeFuelExpenseResponse =
        editeFuelExpenseResponse.copyWith(errors: null, loading: true);

    final result = await vehicleService
        .editFuelExpense(vehicleId: vehicleId, vehicleType: vehicleType, data: {
      "vehicle": "${data.vehicle}",
      "date": data.date ?? "",
      "time": data.time ?? "",
      "truck_rego": data.truckRego ?? "",
      "current_reading_before": data.currentReadingBefore ?? "",
      "reading_after_filling": data.readingAfterFilling ?? "",
      "filled_by": data.filledBy ?? "",
      "volume_usedIn_liter": data.volumeUsedInLiter ?? "",
      "vehicle_type": vehicleType == VehicleType.truck
          ? "truck"
          : vehicleType == VehicleType.car
              ? "car"
              : "fork-lift",
    });
    return result.fold(
      (l) {
        editeFuelExpenseResponse =
            editeFuelExpenseResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        editeFuelExpenseResponse = editeFuelExpenseResponse.copyWith(
            data: r, errors: null, loading: false);
        if (vehicleType == VehicleType.truck) {
          masterTruckApi();
        } else if (vehicleType == VehicleType.car) {
          masterCarApi();
        } else if (vehicleType == VehicleType.semiTrailer) {
          semiTrailorApi();
        }

        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> deleteFuelExpenseResponse = ApiResponse<String>();
  @action
  Future<void> deleteFuelExpenseApi({
    required BuildContext context,
    required int vehicleId,
  }) async {
    deleteFuelExpenseResponse =
        deleteFuelExpenseResponse.copyWith(error: null, loading: true);
    final result = await vehicleService.deleteFuelExpense(
        vehicleId: vehicleId, vehicleType: vehicleType);

    return result.fold(
      (l) {
        deleteFuelExpenseResponse = deleteFuelExpenseResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        if (vehicleType == VehicleType.truck) {
          masterTruckApi();
        } else if (vehicleType == VehicleType.car) {
          masterCarApi();
        } else if (vehicleType == VehicleType.semiTrailer) {
          semiTrailorApi();
        }
        deleteFuelExpenseResponse = deleteFuelExpenseResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|
  @action
  expiryDatePickerFn(
      BuildContext context, date, int fileId, num parentFolderId, int vehicleId,
      {bool fromMaintenance = false}) {
    selectedExpiryDate = date;
    String dateString = DateFormat('yyyy-MM-dd').format(selectedExpiryDate!);
    exipryDateFileApi(
        fileId: fileId,
        expiry: dateString,
        context: context,
        parentFolderId: parentFolderId,
        vehicleId: vehicleId,
        folder: vmVehicle.folder,
        fromMaintenance: fromMaintenance);
  }

  @observable
  VehicleActionType? sstatus;

  @observable
  String? selectedTruckresponse;

  @action
  void setSelectedTruck(String? newValue) {
    selectedTruckresponse = newValue;
  }

  @action
  cmAddFunction(
    VehicleModel? data,
  ) {
    descriptionCntrlr.text = data?.description ?? "";
    serviceProvidedCntrlr.text = data?.serviceProvided ?? "";
    ometerCntrlr.text = data?.ometer ?? "";
    invoiceNoCntrlr.text = "${data?.invoiceNumber ?? ""}";
    hoursCntrlr.text = data?.hours ?? "";
    labourCostCntrlr.text = data?.lCost ?? "";
    sparePartsCntrlr.text = data?.sPart ?? "";
    gstCntrlr.text = data?.gst ?? "";
    totalCostCntrlr.text = data?.totalCost ?? "";
  }

  @action
  cmAddFunction2(
    VehicleModel? data,
  ) {
    regoCntrlr.text = data?.truckRego ?? "";
    filledByCntrlr.text = data?.filledBy ?? "";
    currentReadingCntrlr.text = data?.currentReadingBefore ?? "";
    readingAfterCntrlr.text = data?.readingAfterFilling ?? "";
    volumeCntrlr.text = data?.volumeUsedInLiter ?? "";
  }

  @action
  datePickerFn(date) {
    selectedInvoiceDate = date;
  }

  @action
  datePickerFn2(date) {
    selectedServiceDate = date;
  }

  @action
  datePickerFn3(date) {
    selectedInvoiceDateAddMaintenance = date;
  }

  @action
  datePickerFn4(date) {
    selectedServiceDateAddMaintenance = date;
  }

  @action
  datePickerFn5(date) {
    selectedFuelExpenseDate = date;
  }

  @action
  timePickerFn(time) {
    selectedFuelExpenseTime = time;
  }

  @action
  cmVehicleDropdownFn(newValue) {
    selectedVehiclee = newValue;
    selectedVehicleeId = selectedVehiclee?.id;
  }

  @action
  cmVehicleDropdownFn2(newValue) {
    selectedVehicleAddMaintenance = newValue;
    selectedVehicleAddMaintenanceId = selectedVehicleAddMaintenance?.id;
  }

  @action
  Future<void> pickFilefromphone() async {
    var pic = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'doc']);
    if (pic != null) {
      var filePaths =
          pic.files.map((file) => file.path).whereType<String>().toList();
      pickedFileList?.addAll(filePaths);
    }
  }

  @action
  showSubmitButtonFn() {
    if (descriptionCntrlr.text.isNotEmpty &&
        serviceProvidedCntrlr.text.isNotEmpty &&
        selectedInvoiceDateAddMaintenance != null &&
        selectedServiceDateAddMaintenance != null &&
        ometerCntrlr.text.isNotEmpty &&
        invoiceNoCntrlr.text.isNotEmpty &&
        hoursCntrlr.text.isNotEmpty &&
        labourCostCntrlr.text.isNotEmpty &&
        sparePartsCntrlr.text.isNotEmpty &&
        gstCntrlr.text.isNotEmpty &&
        totalCostCntrlr.text.isNotEmpty) {
      showSubmitBn = true;
    } else {
      showSubmitBn = false;
    }
    log(showSubmitBn.toString());
  }

  @action
  clearFn() {
    selectedVehicleAddMaintenanceId = null;
    selectedVehicleeId = null;
    descriptionCntrlr.clear();
    serviceProvidedCntrlr.clear();
    ometerCntrlr.clear();
    invoiceNoCntrlr.clear();
    hoursCntrlr.clear();
    labourCostCntrlr.clear();
    sparePartsCntrlr.clear();
    gstCntrlr.clear();
    labourCostCntrlr.clear();
    totalCostCntrlr.clear();
    selectedInvoiceDateAddMaintenance = null;
    selectedServiceDateAddMaintenance = null;
    pickedFileList = ObservableList<String>();
  }

  @action
  clearFn2() {
    selectedVehicleAddMaintenanceId = null;
    selectedVehicleeId = null;
    regoCntrlr.clear();
    filledByCntrlr.clear();
    currentReadingCntrlr.clear();
    readingAfterCntrlr.clear();
    volumeCntrlr.clear();
    selectedFuelExpenseDate = null;
    selectedFuelExpenseTime = null;
  }

  @observable
  bool checkboxValue = false;
  @observable
  bool checkboxValue2 = false;
  @observable
  bool checkboxValue3 = false;
  @observable
  String? selectedEngineOilValue = "No issue";
  @observable
  String? selectedWarningSystemValue = "No issue";
  @observable
  String? selectedSteeringValue = "No issue";
  @observable
  String? selectedSafetyEmergValue = "No issue";
  @observable
  String? selectedHandBreakAlarmValue = "No issue";
  @observable
  String? selectedPTOVacValue = "No issue";
  @observable
  String? selectedHornValue = "No issue";
  @observable
  String? selectedRevAlarmCameraValue = "No issue";
  @observable
  String? selectedLightsHeadValue = "No issue";
  @observable
  String? selectedLightsTailValue = "No issue";
  @observable
  String? selectedLightBeaconsValue = "No issue";
  @observable
  String? selectedHazardsLightsValue = "No issue";
  @observable
  String? selectedRimsWheelNutsValue = "No issue";
  @observable
  String? selectedCoolantValue = "No issue";
  @observable
  String? selectedWheelsTyresValue = "No issue";
  @observable
  String? selectedMirrorsWindscreenValue = "No issue";
  @observable
  String? selectedStructureBodywrkValue = "No issue";
  @observable
  String? selectedWipersValue = "No issue";
  @observable
  String? selectedFuelLevelPumbValue = "No issue";
  @observable
  String? selectedFuelLevelTruckValue = "No issue";
  @observable
  String? selectedSeatSeatBeltValue = "No issue";
  @observable
  String? selectedParkBarkeValue = "No issue";
  @observable
  String? selectedFootBrakeValue = "No issue";
  @observable
  String? selectedElectricalValue = "No issue";
  @observable
  bool selectHosesCheckbox = false;
  @observable
  bool selectFittingsCheckbox = false;
  @observable
  bool selectFirstAidKitCheckbox = false;
  @observable
  bool selectPPECheckbox = false;
  @observable
  bool selectGardenHoseCheckbox = false;
  @observable
  bool selectGatticCheckbox = false;
  @observable
  bool selectBucketRagsCheckbox = false;
  @observable
  bool selectSpillKitCheckbox = false;
  @observable
  bool selectverifyCheckbox1 = false;
  @observable
  bool selectverifyCheckbox2 = false;
  @observable
  bool selectverifyCheckbox3 = false;
  @observable
  bool selectverifyCheckbox4 = false;
  @observable
  bool selectverifyCheckbox5 = false;
  @observable
  bool selectverifyCheckbox6 = false;
  @observable
  bool selectverifyCheckbox7 = false;
  @observable
  bool selectverifyCheckbox8 = false;

  @observable
  String? noIssue = "No issue";

  @observable
  String? categoryA = "categoryA";

  @observable
  String? categoryB = "categoryB";
  @action
  noIssueOnTap(String? value, int i) {
    value = noIssue;
    cmFunction(i, value ?? "");
  }

  @action
  categoryAOnTap(String? value, int i) {
    value = categoryA;
    cmFunction(i, value ?? "");
  }

  @action
  categoryBOnTap(String? value, int i) {
    value = categoryB;
    cmFunction(i, value ?? "");
  }

  @action
  void updateCheckboxValueFn1(bool newValue) {
    selectHosesCheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn2(bool newValue) {
    selectFittingsCheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn3(bool newValue) {
    selectFirstAidKitCheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn4(bool newValue) {
    selectPPECheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn5(bool newValue) {
    selectGardenHoseCheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn6(bool newValue) {
    selectGatticCheckbox = newValue;
  }

  void updateCheckboxValueFn7(bool newValue) {
    selectBucketRagsCheckbox = newValue;
  }

  void updateCheckboxValueFn8(bool newValue) {
    selectSpillKitCheckbox = newValue;
  }

  void updateCheckboxValueFn9(bool newValue) {
    selectverifyCheckbox1 = newValue;
  }

  void updateCheckboxValueFn10(bool newValue) {
    selectverifyCheckbox2 = newValue;
  }

  void updateCheckboxValueFn11(bool newValue) {
    selectverifyCheckbox3 = newValue;
  }

  void updateCheckboxValueFn12(bool newValue) {
    selectverifyCheckbox4 = newValue;
  }

  void updateCheckboxValueFn13(bool newValue) {
    selectverifyCheckbox5 = newValue;
  }

  void updateCheckboxValueFn14(bool newValue) {
    selectverifyCheckbox6 = newValue;
  }

  void updateCheckboxValueFn15(bool newValue) {
    selectverifyCheckbox7 = newValue;
  }

  void updateCheckboxValueFn16(bool newValue) {
    selectverifyCheckbox8 = newValue;
  }

  @action
  fireExtinquisherDatePickerFn(date) {
    selectedFireExtinguisherDate = date;
  }

  @action
  cmFunction(int i, String value) {
    i == 1
        ? selectedEngineOilValue = value
        : i == 2
            ? selectedWarningSystemValue = value
            : i == 3
                ? selectedSteeringValue = value
                : i == 4
                    ? selectedSafetyEmergValue = value
                    : i == 5
                        ? selectedHandBreakAlarmValue = value
                        : i == 6
                            ? selectedPTOVacValue = value
                            : i == 7
                                ? selectedHornValue = value
                                : i == 8
                                    ? selectedRevAlarmCameraValue = value
                                    : i == 9
                                        ? selectedLightsHeadValue = value
                                        : i == 10
                                            ? selectedLightsTailValue = value
                                            : i == 11
                                                ? selectedLightBeaconsValue =
                                                    value
                                                : i == 12
                                                    ? selectedHazardsLightsValue =
                                                        value
                                                    : i == 13
                                                        ? selectedRimsWheelNutsValue =
                                                            value
                                                        : i == 14
                                                            ? selectedCoolantValue =
                                                                value
                                                            : i == 15
                                                                ? selectedWheelsTyresValue =
                                                                    value
                                                                : i == 16
                                                                    ? selectedMirrorsWindscreenValue =
                                                                        value
                                                                    : i == 17
                                                                        ? selectedStructureBodywrkValue =
                                                                            value
                                                                        : i == 18
                                                                            ? selectedWipersValue = value
                                                                            : i == 19
                                                                                ? selectedFuelLevelPumbValue = value
                                                                                : i == 20
                                                                                    ? selectedFuelLevelTruckValue = value
                                                                                    : i == 21
                                                                                        ? selectedSeatSeatBeltValue = value
                                                                                        : i == 22
                                                                                            ? selectedParkBarkeValue = value
                                                                                            : i == 23
                                                                                                ? selectedFootBrakeValue = value
                                                                                                : i == 24
                                                                                                    ? selectedElectricalValue = value
                                                                                                    : value;
  }

  @action
  void updateCheckboxValue(bool newValue) {
    checkboxValue = newValue;
  }

  @action
  void updateCheckboxValue2(bool newValue2) {
    checkboxValue2 = newValue2;
  }

  @action
  void updateCheckboxValue3(bool newValue3) {
    checkboxValue3 = newValue3;
  }

  TextEditingController odometerCntrller = TextEditingController();
  TextEditingController hoursMeterCntrller = TextEditingController();
  TextEditingController faultsReportCntrller = TextEditingController();

  @observable
  bool showSubmitButton = false;

  @observable
  DateTime? selectedFireExtinguisherDate;

  @observable
  ApiResponse<dynamic> addPreInspectionVehicleResponse = ApiResponse<dynamic>();
  @action
  Future<void> addPreInspectionVehicleApi(
      {required BuildContext context, required VehicleModel data}) async {
    addPreInspectionVehicleResponse =
        addPreInspectionVehicleResponse.copyWith(error: null, loading: true);

    final result = await vehicleService.addPreInspectionVehicle(
        data: data, vehicleType: vehicleType);
    return result.fold(
      (l) {
        popupErrorData(context, mainFailure: l);
        addPreInspectionVehicleResponse =
            addPreInspectionVehicleResponse.copyWith(
          error: l.keys.first,
          loading: false,
        );
      },
      (r) {
        addPreInspectionVehicleResponse =
            addPreInspectionVehicleResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        if (vehicleType == VehicleType.truck) {
          masterTruckApi();
        } else if (vehicleType == VehicleType.car) {
          masterCarApi();
        } else if (vehicleType == VehicleType.semiTrailer) {
          semiTrailorApi();
        }
        clearPreinspectionDatas();
        context.router.pop();
        showToast(context, msg: "Successfully updated", color: Colors.green);
      },
    );
  }

  @action
  preInspectionSubmitButtonValidation() {
    if (odometerCntrller.text.isNotEmpty &&
        hoursMeterCntrller.text.isNotEmpty &&
        checkboxValue != false &&
        checkboxValue2 != false &&
        checkboxValue3 != false &&
        selectverifyCheckbox1 != false &&
        selectverifyCheckbox2 != false &&
        selectverifyCheckbox3 != false) {
      showSubmitButton = true;
    } else {
      showSubmitButton = false;
    }
  }

  @observable
  String? dateAndTime;
  @action
  cmDataAddFunction({required VehicleModel data}) {
    dateAndTime = data.dateTime?.toString() ?? "";
  }

  @action
  clearPreinspectionDatas() {
    odometerCntrller.clear();
    hoursMeterCntrller.clear();
    faultsReportCntrller.clear();
    checkboxValue = false;
    checkboxValue2 = false;
    checkboxValue3 = false;
    selectedEngineOilValue = "No issue";
    selectedWarningSystemValue = "No issue";
    selectedSteeringValue = "No issue";
    selectedEngineOilValue = "No issue";
    selectedSafetyEmergValue = "No issue";
    selectedHandBreakAlarmValue = "No issue";
    selectedPTOVacValue = "No issue";
    selectedHornValue = "No issue";
    selectedRevAlarmCameraValue = "No issue";
    selectedLightsHeadValue = "No issue";
    selectedLightsTailValue = "No issue";
    selectedLightBeaconsValue = "No issue";
    selectedHazardsLightsValue = "No issue";
    selectedRimsWheelNutsValue = "No issue";
    selectedCoolantValue = "No issue";
    selectedWheelsTyresValue = "No issue";
    selectedMirrorsWindscreenValue = "No issue";
    selectedStructureBodywrkValue = "No issue";
    selectedWipersValue = "No issue";
    selectedFuelLevelPumbValue = "No issue";
    selectedFuelLevelTruckValue = "No issue";
    selectedSeatSeatBeltValue = "No issue";
    selectedParkBarkeValue = "No issue";
    selectedFootBrakeValue = "No issue";
    selectedElectricalValue = "No issue";
    selectHosesCheckbox = false;
    selectFittingsCheckbox = false;
    selectFirstAidKitCheckbox = false;
    selectedFireExtinguisherDate = null;
    selectPPECheckbox = false;
    selectGardenHoseCheckbox = false;
    selectGatticCheckbox = false;
    selectBucketRagsCheckbox = false;
    selectSpillKitCheckbox = false;
    selectverifyCheckbox1 = false;
    selectverifyCheckbox2 = false;
    selectverifyCheckbox3 = false;
    selectverifyCheckbox4 = false;
    selectverifyCheckbox5 = false;
    selectverifyCheckbox6 = false;
    selectverifyCheckbox7 = false;
    selectedVehicleAddMaintenanceId = null;
  }
}
