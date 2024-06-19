import 'dart:convert';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_comnt_resp_model.dart';

import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_sign_res_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';

import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:file_picker/file_picker.dart';

import 'package:injectable/injectable.dart';

abstract class IScheduleService {
  Future<Either<MainFailure, JobCardRespModel>> jobcardservicefunction();
  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardservicefunction();

  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardserviceweekfunction();
  Future<Either<Map<MainFailure, dynamic>, SheduleSignatureModel>>
      shedulesignatureserviceapi({
    required int id,
    required List<PlatformFile> pickedFiles,
    required Uint8List image,
    required String signatureName,
    required String purchaseOderNo,
    required String extractedWasteType,
    required String extractedLitres,
  });

  Future<Either<Map<MainFailure, dynamic>, SheduleCommentModel>>
      shedulecommentserviceapi({
    required String comment,
    required int id,
  });
}

@LazySingleton(as: IScheduleService)
class SalesService implements IScheduleService {
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
      shedulesignatureserviceapi({
    required int id,
    required Uint8List image,
    required List<PlatformFile> pickedFiles,
    required String signatureName,
    required String purchaseOderNo,
    required String extractedWasteType,
    required String extractedLitres,
  }) async {
    customPrint(content: id);
    var response = await getIt<HttpService>().multipartRequest(
      apiUrl: ApiEndPoints.endpointshedulesignature,
      data: {
        "id": id,
        for (var file in pickedFiles) "pickedfile": file,
        "signature_name": signatureName,
        "purchase_order_number": purchaseOderNo,
        "extracted_litres_of_waste": extractedWasteType,
        "extracted_waste_type": extractedLitres,
      },
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

  @override
  Future<Either<Map<MainFailure, dynamic>, SheduleCommentModel>>
      shedulecommentserviceapi(
          {required int id, required String comment}) async {
    customPrint(content: id);
    var response = await getIt<HttpService>().multipartRequest(
      apiUrl: ApiEndPoints.endpointcommentsignature,
      data: {"schedule_id": id, "comment": comment},
      method: "POST",
    );
    print('azeem$id');
    ;
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        SheduleCommentModel signingdata = SheduleCommentModel.fromJson(data);
        return Right(signingdata);
      },
    );
  }
}
