import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
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
  bool? showSubmitBn;

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
    if (descriptionCntrlr.text != "" &&
        serviceProvidedCntrlr.text != "" &&
        selectedInvoiceDateAddMaintenance != null &&
        selectedServiceDateAddMaintenance != null &&
        ometerCntrlr.text != "" &&
        invoiceNoCntrlr.text != "" &&
        hoursCntrlr.text != "" &&
        labourCostCntrlr.text != "" &&
        sparePartsCntrlr.text != "" &&
        gstCntrlr.text != "" &&
        totalCostCntrlr.text != "") {
      showSubmitBn = true;
    } else {
      showSubmitBn = false;
    }
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
}
