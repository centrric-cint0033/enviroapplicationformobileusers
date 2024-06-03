import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/10_team/create_team_req_model/create_team_req_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/designation.dart';
import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/team_designtion_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/service/11_team/team_service.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/image_picker_service/image_file_picker.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'team_view_model.g.dart';

final vmTeam = getIt<TeamViewModel>();

@injectable
@lazySingleton
class TeamViewModel extends TeamViewModelBase with _$TeamViewModel {
  TeamViewModel(super.teamService);
}

abstract class TeamViewModelBase with Store {
  final IteamService teamService;

  TeamViewModelBase(this.teamService);
  @observable
  ApiResponse<List<TeamResModel>> allEmployeeResponse =
      ApiResponse<List<TeamResModel>>();
  @observable
  ApiResponse<List<TeamResModel>> currentEmployeeResponse =
      ApiResponse<List<TeamResModel>>();
  @observable
  ApiResponse<List<TeamResModel>> terminatedEmployeeResponse =
      ApiResponse<List<TeamResModel>>();
  @observable
  ApiResponse<TeamProfileEmployeeDetailsResModel>
      teamProfileEmployeeDetailListResponse =
      ApiResponse<TeamProfileEmployeeDetailsResModel>();
  @observable
  ApiResponse<FolderListModel> teamFoldersResponse =
      ApiResponse<FolderListModel>();
  @observable
  ApiResponse<FolderListModel> teamFoldersResponse2 =
      ApiResponse<FolderListModel>();
  @observable
  ApiResponse addFolderResponse = ApiResponse();
  @observable
  ApiResponse<String> deleteFolderResponse = ApiResponse<String>();
  @observable
  ApiResponse<String> editFolderResponse = ApiResponse<String>();
  @observable
  ApiResponse<TeamDesigntionResModel> designationsResponse =
      ApiResponse<TeamDesigntionResModel>();
  @observable
  ApiResponse<String> deleteEmployeeResponse = ApiResponse<String>();
  @observable
  ApiResponse createTeamResponse = ApiResponse<CreateTeamReqModel>();
  @observable
  ApiResponse editTeamResponse = ApiResponse<CreateTeamReqModel>();
  @observable
  ApiResponse addFileResponse = ApiResponse();
  @observable
  ApiResponse<String> editFileResponse = ApiResponse<String>();
  @observable
  ApiResponse<String> deleteFileResponse = ApiResponse<String>();
  @observable
  ApiResponse expiryFileResponse = ApiResponse<FolderListModel>();
  @observable
  ApiResponse<TeamResModel> fileFolderSearchResponse =
      ApiResponse<TeamResModel>();
  @observable
  ImageFilePickerModel? profileImage;
  @observable
  bool profileImageLoader = false;
  @observable
  bool showDecoration = false;
  @observable
  bool showRequredTextLicense = false;
  @observable
  DateTime? selectedJoiningDate;
  @observable
  DateTime? selectedTerminationDate;
  @observable
  DateTime? selectedDob;
  @observable
  DateTime? selectedDobAddTeam;
  @observable
  DateTime? selectedJoiningDateAddTeam;
  @observable
  DateTime? selectedLicenceExpiryDate;
  @observable
  DateTime? selectedLicenceAlertDate;
  @observable
  DateTime? selectedExpiryDate;
  @observable
  List<String> employmentStatusList = ["full_time", "part_time", "casual"];
  @observable
  Designation? selectedDesignation;
  @observable
  Designation? selectedDesignationAddTeam;
  @observable
  String? selectedDesignationAddTeam2 = "accounts-manager";
  @observable
  String selectedEmploymentStatus = "";
  @observable
  String selectedAddEmploymentStatus = "full_time";
  @observable
  bool showDate = false;
  @observable
  String? selectedFileNameLicense;
  @observable
  String? selectedFilePathLicense;
  @observable
  String? selectedFileName;
  @observable
  String? selectedFilePath;
  @observable
  int? loadinIndexFolder;
  @observable
  int? loadinIndexFile;
  @observable
  TeamResModel? selectedMember;

  TextEditingController textFolderAddController = TextEditingController();
  TextEditingController textFolderEditController = TextEditingController();
  TextEditingController textEditTeamNameController = TextEditingController();
  TextEditingController textEditTeamAddressController = TextEditingController();

  TextEditingController textEditTeamEmailController = TextEditingController();
  TextEditingController textEditTeamContactNumberController =
      TextEditingController();
  TextEditingController textEditTeamWorkEmailController =
      TextEditingController();
  TextEditingController textEditTeamEmergencyContactController =
      TextEditingController();
  TextEditingController textEditTeamEmergencyContactNumberController =
      TextEditingController();
  TextEditingController textAddteamNameController = TextEditingController();
  TextEditingController textAddTeamEmpIdController = TextEditingController();
  TextEditingController textAddTeamAddressController = TextEditingController();
  TextEditingController textAddTeamDobController = TextEditingController();
  TextEditingController textAddJoiningDateController = TextEditingController();
  TextEditingController textAddTeamContactNumberController =
      TextEditingController();
  TextEditingController textAddTeamEmailController = TextEditingController();
  TextEditingController textAddTeamEmergencyContactController =
      TextEditingController();
  TextEditingController textAddTeamEmergencyContactNumberController =
      TextEditingController();
  TextEditingController textAddTeamPasswordController = TextEditingController();
  TextEditingController currentEmployeeSearchCntrlr = TextEditingController();
  TextEditingController terminatedEmployeeSearchCntrlr =
      TextEditingController();
  TextEditingController fileFolderSearchCntrlr = TextEditingController();

  Timer? debouce;
  void onTextChanged(Function() function) {
    // Clear the previous debounce timer
    if (debouce?.isActive ?? false) debouce?.cancel();

    // Set up a new debounce timer
    debouce = Timer(const Duration(milliseconds: 500), () => function());
  }

  @action
  Future<void> getCurrentEmployee({int? page}) async {
    currentEmployeeResponse = currentEmployeeResponse.copyWith(
      errors: null,
      loading: page == null,
      paginationLoading: page != null,
    );
    final result = await teamService.getCurrentEmployee(
      page: page,
    );
    return result.fold(
      (l) {
        currentEmployeeResponse = currentEmployeeResponse.copyWith(
          errors: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (r) {
        List<TeamResModel> empolyees =
            currentEmployeeResponse.data?.toList() ?? [];

        empolyees.addAll(r);

        currentEmployeeResponse = currentEmployeeResponse.copyWith(
          data: empolyees,
          errors: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: r.length == 10,
        );
      },
    );
  }

  ScrollController currentEmployeeController = ScrollController();

  void currentEmployeePagination() {
    currentEmployeeController.addListener(() {
      if (currentEmployeeController.position.pixels ==
              currentEmployeeController.position.maxScrollExtent &&
          !currentEmployeeController.position.outOfRange &&
          currentEmployeeResponse.pagination &&
          !currentEmployeeResponse.paginationLoading) {
        int pageNo = currentEmployeeResponse.pageNo + 1;
        getCurrentEmployee(page: pageNo);
      }
    });
  }

  @action
  Future<void> getTerminatedEmployee({int? page}) async {
    terminatedEmployeeResponse = terminatedEmployeeResponse.copyWith(
      errors: null,
      loading: page == null,
      paginationLoading: page != null,
    );
    final result = await teamService.getTerminatedEmployee(
      page: page,
    );
    return result.fold(
      (l) {
        terminatedEmployeeResponse = terminatedEmployeeResponse.copyWith(
          errors: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (r) {
        List<TeamResModel> empolyees =
            terminatedEmployeeResponse.data?.toList() ?? [];

        empolyees.addAll(r);

        terminatedEmployeeResponse = terminatedEmployeeResponse.copyWith(
          data: r,
          errors: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: r.length == 10,
        );
      },
    );
  }

  ScrollController terminatedEmployeeController = ScrollController();

  void terminatedEmployeePagination() {
    terminatedEmployeeController.addListener(() {
      if (terminatedEmployeeController.position.pixels ==
              terminatedEmployeeController.position.maxScrollExtent &&
          !terminatedEmployeeController.position.outOfRange &&
          terminatedEmployeeResponse.pagination &&
          !terminatedEmployeeResponse.paginationLoading) {
        int pageNo = terminatedEmployeeResponse.pageNo + 1;
        getTerminatedEmployee(page: pageNo);
      }
    });
  }

  @action
  Future<void> getTeamProfileEmployeeDetails({required num employeeID}) async {
    try {
      teamProfileEmployeeDetailListResponse =
          teamProfileEmployeeDetailListResponse.copyWith(
              errors: null, loading: true);
      final result = await teamService.getTeamProfileEmployeeDetails(
          employeeID: employeeID);
      return result.fold(
        (l) {
          teamProfileEmployeeDetailListResponse =
              teamProfileEmployeeDetailListResponse.copyWith(
                  errors: l, loading: false);
        },
        (r) {
          teamProfileEmployeeDetailListResponse =
              teamProfileEmployeeDetailListResponse.copyWith(
                  data: r, errors: null, loading: false);
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error getTeamProfileEmployeeDetails');
    } finally {
      teamProfileEmployeeDetailListResponse =
          teamProfileEmployeeDetailListResponse.copyWith(loading: false);
    }
  }

  @action
  Future<void> currentEmployeeSearchApi(String searchData) async {
    try {
      currentEmployeeResponse =
          currentEmployeeResponse.copyWith(errors: null, loading: true);

      final result =
          await teamService.employeeSearchApi(data: {"key": searchData});
      return result.fold(
        (l) {
          currentEmployeeResponse =
              currentEmployeeResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          currentEmployeeResponse = currentEmployeeResponse.copyWith(
              data: r, errors: null, loading: false);
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error currentEmployeeSearchApi');
    } finally {
      currentEmployeeResponse =
          currentEmployeeResponse.copyWith(loading: false);
    }
  }

  @action
  Future<void> terminatedEmployeeSearchApi(String searchData) async {
    try {
      terminatedEmployeeResponse =
          terminatedEmployeeResponse.copyWith(errors: null, loading: true);

      final result =
          await teamService.employeeSearchApi(data: {"key": searchData});
      return result.fold(
        (l) {
          terminatedEmployeeResponse =
              terminatedEmployeeResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          terminatedEmployeeResponse = terminatedEmployeeResponse.copyWith(
              data: r, errors: null, loading: false);
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error terminatedEmployeeSearchApi');
    } finally {
      terminatedEmployeeResponse =
          terminatedEmployeeResponse.copyWith(loading: false);
    }
  }

  @action
  Future<void> getTeamFolders(
      {required num id,
      required num parentFolderId,
      bool fromTeamProfileScreen = false}) async {
    if (parentFolderId == 1) {
      teamFoldersResponse =
          teamFoldersResponse.copyWith(error: null, loading: true);

      final result = await teamService.getTeamFolders(
          id: id, parentFolderId: parentFolderId);
      return result.fold(
        (l) {
          teamFoldersResponse = teamFoldersResponse.copyWith(
            errors: l,
            loading: false,
          );
        },
        (r) {
          teamFoldersResponse = teamFoldersResponse.copyWith(
            data: r,
            error: null,
            loading: false,
          );
        },
      );
    } else {
      teamFoldersResponse2 = teamFoldersResponse2.copyWith(
          error: null,
          loading: fromTeamProfileScreen == true
              ? true
              : teamFoldersResponse2.data == null);

      final result = await teamService.getTeamFolders(
          id: id, parentFolderId: parentFolderId);
      return result.fold(
        (l) {
          teamFoldersResponse2 = teamFoldersResponse2.copyWith(
            errors: l,
            loading: false,
          );
        },
        (r) {
          teamFoldersResponse2 = teamFoldersResponse2.copyWith(
            data: r,
            error: null,
            loading: false,
          );
        },
      );
    }
  }

  @action
  Future<void> addTeamFolder(
      {required String name,
      required num employee,
      required num parentfolder,
      required BuildContext context}) async {
    addFolderResponse = addFolderResponse.copyWith(error: null, loading: true);

    final result = await teamService.addTeamFolders(data: {
      "name": name,
      "employee": employee.toString(),
      "parent_folder": parentfolder.toString(),
    });

    return result.fold(
      (l) {
        addFolderResponse =
            addFolderResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getTeamFolders(id: employee, parentFolderId: parentfolder);
        addFolderResponse =
            addFolderResponse.copyWith(error: null, loading: false);
        vmTeam.textFolderAddController.clear();
      },
    );
  }

  @action
  Future<void> deleteTeamFolderApi(
      {required int folderId,
      required BuildContext context,
      required num employeeID,
      required num parentFolderId}) async {
    addFolderResponse = addFolderResponse.copyWith(error: null, loading: true);

    final result = await teamService.deleteTeamFolders(id: folderId);
    return result.fold(
      (l) {
        addFolderResponse = addFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) async {
        await getTeamFolders(id: employeeID, parentFolderId: parentFolderId);
        addFolderResponse = addFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> editTeamFolderApi({
    required int folderId,
    required int parentFolderId,
    required String name,
    required BuildContext context,
    required num employeeID,
  }) async {
    editFolderResponse =
        editFolderResponse.copyWith(error: null, loading: true);

    final result =
        await teamService.editTeamFolders(data: {"name": name}, id: folderId);
    return result.fold(
      (l) {
        editFolderResponse = editFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) async {
        await getTeamFolders(id: employeeID, parentFolderId: parentFolderId);
        editFolderResponse = editFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> deleteEmployeeApi(
      {required BuildContext context, required num employeeID}) async {
    deleteEmployeeResponse =
        deleteEmployeeResponse.copyWith(error: null, loading: true);

    final result = await teamService.deleteEmployeeApi(id: employeeID);
    return result.fold(
      (l) {
        deleteEmployeeResponse = deleteEmployeeResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) {
        deleteEmployeeResponse = deleteEmployeeResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        getCurrentEmployee();
        getTerminatedEmployee();
        context.router.pop();
      },
    );
  }

  @action
  Future<void> dpImageUpdate() async {
    try {
      profileImageLoader = true;
      profileImage = await getIt<ImagePickerService>().imagePicker();
    } catch (e) {
      customPrint(content: e);
    } finally {
      profileImageLoader = false;
    }
  }

  @action
  Future<void> getTeamDesignationsApi() async {
    try {
      designationsResponse =
          designationsResponse.copyWith(errors: null, loading: true);
      final result = await teamService.getTeamDesignations();
      return result.fold(
        (l) {
          designationsResponse =
              designationsResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          designationsResponse = designationsResponse.copyWith(
              data: r, errors: null, loading: false);
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error getDesignationsApi');
    } finally {
      designationsResponse = designationsResponse.copyWith(loading: false);
    }
  }

  @action
  Future<void> createTeamApi(
      {required CreateTeamReqModel data, required BuildContext context}) async {
    createTeamResponse =
        createTeamResponse.copyWith(error: null, loading: true);
    final result = await teamService.createTeamApi(data: data.toJson());
    return result.fold(
      (l) {
        createTeamResponse =
            createTeamResponse.copyWith(errors: l, loading: false);

        popupErrorData(context, mainFailure: l);
      },
      (r) {
        createTeamResponse =
            createTeamResponse.copyWith(data: r, error: null, loading: false);
        getCurrentEmployee();
        textControllersClearFn();
        showToast(context, msg: "Successfully Created Employee");
      },
    );
  }

  @action
  Future<void> editTeamApi(
      {required CreateTeamReqModel data, required BuildContext context}) async {
    editTeamResponse = editTeamResponse.copyWith(error: null, loading: true);

    final result = await teamService.editTeamApi(
        data: data.toJson(), employeeId: data.id!);

    return result.fold(
      (l) {
        editTeamResponse = editTeamResponse.copyWith(errors: l, loading: false);

        popupErrorData(context, mainFailure: l);
      },
      (r) {
        editTeamResponse =
            editTeamResponse.copyWith(data: r, error: null, loading: false);
        getTeamProfileEmployeeDetails(employeeID: int.parse("${data.id}"));
        getCurrentEmployee();
        textControllersClearFn();
        context.router.pop();
        showToast(context, msg: "Successfully Edited Employee");
      },
    );
  }

  @action
  Future<void> addTeamFile(
      {required String name,
      required num employee,
      required num parentfolder,
      String? files,
      required BuildContext context}) async {
    addFileResponse = addFileResponse.copyWith(error: null, loading: true);

    final result = await teamService.addTeamFiles(data: {
      "name": name,
      "employee": employee.toString(),
      "folder": parentfolder.toString(),
      "file": files ?? ""
    });
    return result.fold(
      (l) {
        addFileResponse = addFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getTeamFolders(id: employee, parentFolderId: parentfolder);
        addFileResponse =
            addFileResponse.copyWith(data: r, error: null, loading: false);
        vmTeam.textFolderAddController.clear();
        // context.router.pop();
      },
    );
  }

  @action
  Future<void> editTeamFilesApi({
    required int filesId,
    required int parentFolderId,
    required String name,
    required BuildContext context,
    required num employeeID,
  }) async {
    editFileResponse = editFileResponse.copyWith(error: null, loading: true);

    final result =
        await teamService.editTeamFiles(data: {"name": name}, id: filesId);
    return result.fold(
      (l) {
        editFileResponse = editFileResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getTeamFolders(id: employeeID, parentFolderId: parentFolderId);
        editFileResponse = editFileResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> deleteTeamFilesApi(
      {required int fileId,
      required BuildContext context,
      required num employeeID,
      required num parentFolderId}) async {
    addFileResponse = addFileResponse.copyWith(error: null, loading: true);

    final result =
        await teamService.deleteTeamFiles(fileId: fileId, id: parentFolderId);
    return result.fold(
      (l) {
        addFileResponse = addFileResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) async {
        await getTeamFolders(id: employeeID, parentFolderId: parentFolderId);
        addFileResponse = addFileResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> exipryDateFileApi(
      {required int fileId,
      required String expiry,
      required BuildContext context,
      required num employeeID,
      required num parentFolderId}) async {
    expiryFileResponse = expiryFileResponse.copyWith(
        error: null, loading: expiryFileResponse.data == null);
    final result =
        await teamService.expiryDateFiles(fileId: fileId, expiry: expiry);

    return result.fold(
      (l) {
        expiryFileResponse =
            expiryFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getTeamFolders(id: employeeID, parentFolderId: parentFolderId);
        expiryFileResponse =
            expiryFileResponse.copyWith(error: null, loading: false);
      },
    );
  }

  @action
  Future<void> fileFolderSearchApi(String searchData, num folderId,
      String searchType, num employeeId) async {
    teamFoldersResponse2 =
        teamFoldersResponse2.copyWith(errors: null, loading: true);

    final result = await teamService.fileFolderSearchApi(data: {
      "key": searchData,
      "folder_id": "$folderId",
      "search_type": searchType,
      "employee": "$employeeId"
    });
    return result.fold(
      (l) {
        teamFoldersResponse2 =
            teamFoldersResponse2.copyWith(errors: l, loading: false);
      },
      (r) {
        teamFoldersResponse2 = teamFoldersResponse2.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @action
  Future<void> getAllEmployee() async {
    allEmployeeResponse = allEmployeeResponse.copyWith(
      errors: null,
      loading: true,
    );
    final result = await teamService.getAllEmployeesApi();
    return result.fold(
      (l) {
        allEmployeeResponse = allEmployeeResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) {
        allEmployeeResponse = allEmployeeResponse.copyWith(
          data: r,
          errors: null,
          loading: false,
        );
      },
    );
  }

  @action
  datePickerFn1(date) {
    selectedJoiningDate = date;
  }

  @action
  datePickerFn2(date) {
    selectedTerminationDate = date;
  }

  @action
  datePickerFn3(date) {
    selectedDob = date;
  }

  @action
  datePickerFn4(date) {
    selectedDobAddTeam = date;
  }

  @action
  datePickerFn5(date) {
    selectedJoiningDateAddTeam = date;
  }

  @action
  datePickerFn6(date) {
    selectedLicenceExpiryDate = date;
  }

  @action
  datePickerFn7(date) {
    selectedLicenceAlertDate = date;
  }

  @action
  expiryDatePickerFn(BuildContext context, date, int fileId, num employeeID,
      num parentFolderId) {
    selectedExpiryDate = date;
    String dateString = DateFormat('yyyy-MM-dd').format(selectedExpiryDate!);
    exipryDateFileApi(
        fileId: fileId,
        expiry: dateString,
        context: context,
        employeeID: employeeID,
        parentFolderId: parentFolderId);
  }

  @action
  employmentStatusonChanged(newValue) {
    selectedAddEmploymentStatus = newValue;
  }

  @action
  employmentStatusonChangedEditPage(newValue) {
    selectedEmploymentStatus = newValue;
  }

  @action
  cmFunction(value) {
    selectedDesignationAddTeam2 = value;
  }

  textControllersClearFn() {
    textAddTeamEmpIdController.clear();
    textAddTeamAddressController.clear();
    selectedDobAddTeam = null;
    selectedJoiningDateAddTeam = null;
    textAddTeamEmailController.clear();
    textAddteamNameController.clear();
    textAddTeamContactNumberController.clear();
    selectedAddEmploymentStatus = "full_time";
    selectedDesignationAddTeam = null;
    textAddTeamEmergencyContactController.clear();
    textAddTeamEmergencyContactNumberController.clear();
    selectedFileNameLicense = "";
    selectedLicenceExpiryDate = null;
    selectedLicenceAlertDate = null;
    textAddTeamPasswordController.clear();
  }
}
