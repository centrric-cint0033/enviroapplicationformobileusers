import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';

import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_sign_res_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';

import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class IJobCardService {
  Future<Either<MainFailure, JobCardRespModel>> jobcardservicefunction();
  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardservicefunction();

  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardserviceweekfunction();
  Future<Either<Map<MainFailure, dynamic>, SheduleSignatureModel>>
      shedulesignatureserviceapi({required int id, required List? pickedFiles});
}

@LazySingleton(as: IJobCardService)
class SalesService implements IJobCardService {
  final HttpService httpService;
  SalesService(this.httpService);
  @override
  Future<Either<MainFailure, JobCardRespModel>> jobcardservicefunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointjobcard);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        JobCardRespModel jobcardlist =
            JobCardRespModel.fromJson(jsonDecode(res.body));
        return Right(jobcardlist);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardservicefunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointshedulecard);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SheduleCardRespModel> shedulecardlist =
            List<SheduleCardRespModel>.from(
                data.map((e) => SheduleCardRespModel.fromJson(e)));
        return Right(shedulecardlist);
      },
    );
  }

  @override
  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardserviceweekfunction() async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: ApiEndPoints.endpointsheduleweekcard);

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body) as List;
        List<SheduleCardRespModel> shedulecardweeklist =
            List<SheduleCardRespModel>.from(
                data.map((e) => SheduleCardRespModel.fromJson(e)));
        return Right(shedulecardweeklist);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, SheduleSignatureModel>>
      shedulesignatureserviceapi(
          {required int id, required List<PlatformFile> pickedFiles}) async {
    customPrint(content: id);
    var response = await getIt<HttpService>().multipartRequest(
      apiUrl: ApiEndPoints.endpointshedulesignature,
      data: {
        "id": id,
        for (var file in pickedFiles)
          "weigh_bridge_required_multiple_file": file
      },

      // for (var file in pickedFiles) {
      //   var multipartFile = await http.MultipartFile.fromPath(
      //     'pickedFiles[]',
      //     file.path,
      //     contentType: MediaType.parse(file.type),
      //   );
      //   request.files.add(multipartFile);
      // }

      method: "POST",
    );
    print('azeem$id');
    ;
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        SheduleSignatureModel signingdata =
            SheduleSignatureModel.fromJson(data);
        return Right(signingdata);
      },
    );
  }
}
