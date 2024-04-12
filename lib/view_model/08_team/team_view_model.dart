import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/designation.dart';
import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/team_designtion_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_folder_req_model/team_create_folder_req_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_folder_resp_model/team_folder_resp_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/service/10_team/team_service.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/image_picker_service/image_file_picker.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../model/10_team/team_folder_resp_model/folder.dart';
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
  ApiResponse<TeamFolderRespModel> teamFoldersResponse =
      ApiResponse<TeamFolderRespModel>();
  @observable
  ApiResponse addFolderResponse = ApiResponse<TeamCreateFolderReqModel>();
  @observable
  ApiResponse<String> deleteFolderResponse = ApiResponse<String>();
  @observable
  ApiResponse<String> editFolderResponse = ApiResponse<String>();
  @observable
  ApiResponse<TeamDesigntionResModel> designationsResponse =
      ApiResponse<TeamDesigntionResModel>();
  @observable
  ImageFilePickerModel? profileImage;
  @observable
  bool profileImageLoader = false;
  @observable
  bool showDecoration = false;
  @observable
  DateTime selectedJoiningDate = DateTime.now();
  @observable
  DateTime selectedTerminationDate = DateTime.now();
  @observable
  DateTime selectedDob = DateTime.now();

  @observable
  List<String> employmentStatusList = ["full_time", "part_time", "casual"];
  @observable
  Designation? selectedDesignation;
  @observable
  String selectedEmploymentStatus = "";

  TextEditingController textFolderAddController = TextEditingController();
  TextEditingController textFolderEditController = TextEditingController();
  TextEditingController textEditTeamNameController = TextEditingController();
  TextEditingController textEditTeamAddressController = TextEditingController();
 TextEditingController textAddeamNameController = TextEditingController();
  TextEditingController textEditTeamEmailController = TextEditingController();
  TextEditingController textEditTeamContactNumberController =
      TextEditingController();
  TextEditingController textEditTeamWorkEmailController =
      TextEditingController();
  TextEditingController textEditTeamEmergencyContactController =
      TextEditingController();
  TextEditingController textEditTeamEmergencyContactNumberController =
      TextEditingController();

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
  Future<void> getTeamFolders({
    required num id,
  }) async {
    teamFoldersResponse =
        teamFoldersResponse.copyWith(error: null, loading: true);

    final result = await teamService.getTeamFolders(id: id);
    return result.fold(
      (l) {
        teamFoldersResponse = teamFoldersResponse.copyWith(
          error: l,
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
      "parent_folder": parentfolder.toString()
    });
    return result.fold(
      (l) {
        addFolderResponse =
            addFolderResponse.copyWith(error: l, loading: false);
      },
      (r) {
        addFolderResponse =
            addFolderResponse.copyWith(data: r, error: null, loading: false);
        getTeamFolders(id: employee);
        vmTeam.textFolderAddController.clear();
        context.router.pop();
      },
    );
  }

  @action
  Future<void> deleteTeamFolderApi(
      {required Folder folder,
      required BuildContext context,
      required num employeeID}) async {
    deleteFolderResponse =
        deleteFolderResponse.copyWith(error: null, loading: true);

    final result = await teamService.deleteTeamFolders(id: folder.id!);
    return result.fold(
      (l) {
        deleteFolderResponse = deleteFolderResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        deleteFolderResponse = deleteFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );

        getTeamFolders(id: employeeID);
        context.router.pop();
      },
    );
  }

  @action
  Future<void> editTeamFolderApi(
      {required Folder folder,
      required String name,
      required BuildContext context,
      required num employeeID}) async {
    editFolderResponse =
        editFolderResponse.copyWith(error: null, loading: true);

    final result =
        await teamService.editTeamFolders(data: {"name": name}, id: folder.id!);
    return result.fold(
      (l) {
        editFolderResponse = editFolderResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        editFolderResponse = editFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        getTeamFolders(id: employeeID);
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
}
