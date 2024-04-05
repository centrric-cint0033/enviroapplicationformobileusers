import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/10_team/team_folder_req_model/team_create_folder_req_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_folder_resp_model/team_folder_resp_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

abstract class IteamService {
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getCurrentEmployee();
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getTerminatedEmployee();
  Future<Either<Map<MainFailure, dynamic>, TeamProfileEmployeeDetailsResModel>>
      getTeamProfileEmployeeDetails({required num employeeID});
  Future<Either<MainFailure, TeamFolderRespModel>> getTeamFolders(
      {required num id});
  Future<Either<MainFailure, TeamCreateFolderReqModel>> addTeamFolders(
      {required Map<String, String> data});
  Future<Either<MainFailure, String>> deleteTeamFolders(
      {required num id});
}

@LazySingleton(as: IteamService)
class TeamService implements IteamService {
  @override
  Future<Either<Map<MainFailure, dynamic>, List<TeamResModel>>>
      getCurrentEmployee() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointcurrentemployeelist);

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
      getTerminatedEmployee() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointterminatedemployeelist);

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
        apiUrl:
            "${ApiEndPoints.endpointteamprofileemployeedetailList}/$employeeID/");

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
  Future<Either<MainFailure, TeamFolderRespModel>> getTeamFolders(
      {required num id}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: '${ApiEndPoints.endpointgetteamfolder}/$id/1');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        TeamFolderRespModel teamFolderList =
            TeamFolderRespModel.fromJson(jsonDecode(res.body));

        return Right(teamFolderList);
      },
    );
  }

  @override
  Future<Either<MainFailure, TeamCreateFolderReqModel>> addTeamFolders(
      {required Map<String, String> data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data, method: 'POST', apiUrl: ApiEndPoints.endpointaddteamfolder);
    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);
        TeamCreateFolderReqModel createFolderList =
            TeamCreateFolderReqModel.fromJson(data);
        return Right(createFolderList);
      },
    );
  }

  @override
  Future<Either<MainFailure, String>> deleteTeamFolders(
      {required num id}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.delete,
        apiUrl: '${ApiEndPoints.endpointteamfolderdelete}/$id/');

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);

        return const Right('success');
      },
    );
  }
}
