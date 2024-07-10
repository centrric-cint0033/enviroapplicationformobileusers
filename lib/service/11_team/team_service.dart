import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/10_team/create_team_req_model/create_team_req_model.dart';
import 'package:enviro_mobile_application/model/10_team/leave_res_model/leave_res_model/leave_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/team_designtion_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/time_sheet_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/week.dart';
import 'package:enviro_mobile_application/model/10_team/time_sheet_res_model/weekly_report.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IteamService {
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getCurrentEmployee({int? page});
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getTerminatedEmployee({int? page});
  Future<Either<Map<MainFailure, dynamic>, TeamProfileEmployeeDetailsResModel>>
      getTeamProfileEmployeeDetails({required num employeeID});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getTeamFolders(
      {required num id, required num parentFolderId});
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addTeamFolders(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> deleteTeamFolders(
      {required num id});
  Future<Either<Map<MainFailure, dynamic>, String>> editTeamFolders(
      {required Map<String, String> data, required int id});
  Future<Either<Map<MainFailure, dynamic>, TeamDesigntionResModel>>
      getTeamDesignations();
  Future<Either<Map<MainFailure, dynamic>, String>> deleteEmployeeApi(
      {required num id});
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      employeeSearchApi({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, CreateTeamReqModel>> createTeamApi(
      {required Map<String, dynamic> data});
  Future<Either<Map<MainFailure, dynamic>, CreateTeamReqModel>> editTeamApi(
      {required Map<String, dynamic> data, required String employeeId});
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addTeamFiles(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, String>> editTeamFiles(
      {required Map<String, String> data, required int id});
  Future<Either<Map<MainFailure, dynamic>, String>> deleteTeamFiles(
      {required num fileId, required num id});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required num fileId, required String expiry});
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>>
      fileFolderSearchApi({required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getAllEmployeesApi();
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> folderSearchApi(
      {required Map<String, String> data});
  Future<Either<Map<MainFailure, dynamic>, LeaveResModel>> addLeave(
      {required LeaveResModel data});
  Future<Either<Map<MainFailure, dynamic>, TimeSheetResModel>> getTimeSheetApi(
      {required String date});
  Future<Either<Map<MainFailure, dynamic>, TimeSheetResModel>> editTimeSheetApi(
      {required int id,
      required String date,
      required String day,
      required String start,
      required String finish,
      required String totalHoursWorked,
      required String normalHours,
      required String fullTime,
      required String halfTime,
      required String publicHolidays,
      required String annual,
      required String sick,
      required String otherDays});
}

@LazySingleton(as: IteamService)
class TeamService implements IteamService {
  @override
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getCurrentEmployee({int? page}) async {
    String pagination = '?page=${page ?? 1}&limit=10';
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().currentEmployeelist + pagination);

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        List<TeamResModel> currentEmployeeList =
            List<TeamResModel>.from(data.map((e) => TeamResModel.fromJson(e)));
        return Right(currentEmployeeList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getTerminatedEmployee({int? page}) async {
    String pagination = '?page=${page ?? 1}&limit=10';
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().terminatedEmployeelist + pagination);

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        List<TeamResModel> terminatedEmployeeList =
            List<TeamResModel>.from(data.map((e) => TeamResModel.fromJson(e)));
        return Right(terminatedEmployeeList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, TeamProfileEmployeeDetailsResModel>>
      getTeamProfileEmployeeDetails({required num employeeID}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: "${ApiEndPoints().teamprofileEmployeeDetailList}/$employeeID/");

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        TeamProfileEmployeeDetailsResModel employeeDetailsList =
            TeamProfileEmployeeDetailsResModel.fromJson(data);
        return Right(employeeDetailsList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> getTeamFolders(
      {required num id, required num parentFolderId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints().teamFolder}/$id/$parentFolderId');

    return response.fold(
      (l) => Left(l),
      (res) async {
        FolderListModel teamFolderList =
            FolderListModel.fromJson(jsonDecode(res.body));

        return Right(teamFolderList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addTeamFolders(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().addTeamFolder);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right("Successfully added");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteTeamFolders(
      {required num id}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().teamFolderDelete}/$id/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editTeamFolders(
      {required Map<String, String> data, required int id}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().teamFolderEdit}/$id/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, TeamDesigntionResModel>>
      getTeamDesignations() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().teamDesignations);

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        TeamDesigntionResModel designationsList =
            TeamDesigntionResModel.fromJson(data);
        return Right(designationsList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteEmployeeApi(
      {required num id}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().deleteEmployee}/$id/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      employeeSearchApi({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().searchEmployeeList);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<TeamResModel> searchedEmployeList =
            data.map((e) => TeamResModel.fromJson(e)).toList();
        return Right(searchedEmployeList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, CreateTeamReqModel>> createTeamApi(
      {required Map<String, dynamic> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().createEmployee);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        CreateTeamReqModel createTeamList = CreateTeamReqModel.fromJson(data);
        return Right(createTeamList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, CreateTeamReqModel>> editTeamApi(
      {required Map<String, dynamic> data, required String employeeId}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PATCH',
        apiUrl: "${ApiEndPoints().editEmployee}/$employeeId/");
    return response.fold(
      (l) => Left(l),
      (res) async {
        // var data = jsonDecode(res.body);
        CreateTeamReqModel editTeamList =
            CreateTeamReqModel(); //  CreateTeamReqModel.fromJson(data);
        return Right(editTeamList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> addTeamFiles(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().addTeamFiles);
    return response.fold(
      (l) => Left(l),
      (res) async {
        return Right("Success");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> editTeamFiles(
      {required Map<String, String> data, required int id}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data,
        method: 'PUT',
        apiUrl: '${ApiEndPoints().teamFilesEdit}$id/');
    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> deleteTeamFiles(
      {required num fileId, required num id}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints().teamFilesDelete}$fileId/$id/');

    return response.fold(
      (l) => Left(l),
      (res) async {
        return const Right('success');
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> expiryDateFiles(
      {required num fileId, required String expiry}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: {"date": expiry},
        method: 'PUT',
        apiUrl: "${ApiEndPoints().teamFilesExpiry}$fileId/");
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
      fileFolderSearchApi({required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().searchFileFolder);
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
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getAllEmployeesApi() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints().allEmployeelist);

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        List<TeamResModel> terminatedEmployeeList =
            List<TeamResModel>.from(data.map((e) => TeamResModel.fromJson(e)));
        return Right(terminatedEmployeeList);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, FolderListModel>> folderSearchApi(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints().searchFolder);
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
  Future<Either<Map<MainFailure, dynamic>, LeaveResModel>> addLeave(
      {required LeaveResModel data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data.toJson(), method: 'POST', apiUrl: ApiEndPoints().addLeave);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        LeaveResModel addLeave = LeaveResModel.fromJson(data);
        return Right(addLeave);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, TimeSheetResModel>> getTimeSheetApi(
      {required String date}) async {
    var response = await getIt<HttpService>().request(
        method: HttpMethod.get,
        apiUrl: "${ApiEndPoints().timeSheet}?date=$date");

    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);

        if (data is List && data.isEmpty) {
          TimeSheetResModel emptyTimeSheet = TimeSheetResModel.empty();
          return Right(emptyTimeSheet);
        }

        TimeSheetResModel timesheet = TimeSheetResModel.fromJson(data);
        return Right(timesheet);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, TimeSheetResModel>> editTimeSheetApi(
      {required int id,
      required String date,
      required String day,
      required String start,
      required String finish,
      required String totalHoursWorked,
      required String normalHours,
      required String fullTime,
      required String halfTime,
      required String publicHolidays,
      required String annual,
      required String sick,
      required String otherDays}) async {
    var response = await getIt<HttpService>().multipartRequest(data: {
      "id": id,
      "week_startdate": date,
      "weekly_report": {
        "week": Week(
          date: date,
          day: day,
            start: start,
            finish: finish,
            totalHoursWorked: totalHoursWorked,
            normalHours: normalHours,
            fullTime: fullTime,
            halfTime: halfTime,
            publicHolidays: publicHolidays,
            annual: annual,
            sick: sick,
            otherDays: otherDays)
      }
    }, method: 'POST', apiUrl: ApiEndPoints().editTimeSheet);
    return response.fold(
      (l) => Left(l),
      (res) async {
        log(response.toString());
        var data = jsonDecode(res.body);
        log(data);
        TimeSheetResModel editTimeSheet = TimeSheetResModel.fromJson(data);
        return Right(editTimeSheet);
      },
    );
  }
}
