import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/10_team/create_team_req_model/create_team_req_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/designation.dart';
import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/team_designtion_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/service/10_team/team_service.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/image_picker_service/image_file_picker.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
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
  ApiResponse addFolderResponse = ApiResponse<FolderListModel>();
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
  ApiResponse addFileResponse = ApiResponse<FolderListModel>();
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

  Timer? debouce;
  void onTextChanged(Function() function) {
    // Clear the previous debounce timer
    if (debouce?.isActive ?? false) debouce?.cancel();

    // Set up a new debounce timer
    debouce = Timer(const Duration(milliseconds: 500), () => function());
  }

  @action
  Future<void> getCurrentEmployee() async {
    try {
      currentEmployeeResponse =
          currentEmployeeResponse.copyWith(errors: null, loading: true);
      final result = await teamService.getCurrentEmployee();
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
      customPrint(content: e, name: 'Error getCurrentEmployee');
    } finally {
      currentEmployeeResponse =
          currentEmployeeResponse.copyWith(loading: false);
    }
  }

  @action
  Future<void> getTerminatedEmployee() async {
    try {
      terminatedEmployeeResponse =
          terminatedEmployeeResponse.copyWith(errors: null, loading: true);
      final result = await teamService.getTerminatedEmployee();
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
      customPrint(content: e, name: 'Error getTerminatedEmployee');
    } finally {
      terminatedEmployeeResponse =
          terminatedEmployeeResponse.copyWith(loading: false);
    }
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
      {required num id, required num parentFolderId}) async {
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
      teamFoldersResponse2 =
          teamFoldersResponse2.copyWith(error: null, loading: true);

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
      String? files,
      required BuildContext context}) async {
    addFolderResponse = addFolderResponse.copyWith(error: null, loading: true);

    final result = await teamService.addTeamFolders(data: {
      "name": name,
      "employee": employee.toString(),
      "parent_folder": parentfolder.toString(),
      "file": files ?? ""
    });
    return result.fold(
      (l) {
        addFolderResponse =
            addFolderResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        addFolderResponse =
            addFolderResponse.copyWith(data: r, error: null, loading: false);
        getTeamFolders(id: employee, parentFolderId: parentfolder);
        vmTeam.textFolderAddController.clear();
        // context.router.pop();
      },
    );
  }

  @action
  Future<void> deleteTeamFolderApi(
      {required int folderId,
      required BuildContext context,
      required num employeeID,
      required num parentFolderId}) async {
    deleteFolderResponse =
        deleteFolderResponse.copyWith(error: null, loading: true);

    final result = await teamService.deleteTeamFolders(id: folderId);
    return result.fold(
      (l) {
        deleteFolderResponse = deleteFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) {
        deleteFolderResponse = deleteFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        getTeamFolders(id: employeeID, parentFolderId: parentFolderId);
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
      (r) {
        editFolderResponse = editFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        getTeamFolders(id: employeeID, parentFolderId: parentFolderId);
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
      },
      (r) {
        addFileResponse =
            addFileResponse.copyWith(data: r, error: null, loading: false);
        getTeamFolders(id: employee, parentFolderId: parentfolder);
        vmTeam.textFolderAddController.clear();
        // context.router.pop();
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
