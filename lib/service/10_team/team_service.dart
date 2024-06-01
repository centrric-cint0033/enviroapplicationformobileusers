import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/10_team/create_team_req_model/create_team_req_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/team_designtion_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
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
}
