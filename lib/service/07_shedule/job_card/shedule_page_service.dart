import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/schedule_image_res_model/schedule_image_res_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/schedule_status_res_model/schedule_status_res_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_comnt_resp_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_sign_res_model.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

enum ScheduleStatusType {
  departedEnviroFacility,
  jobStarted,
  finishedJob,
  completed,
  arrivedAtDepot,
  departedWasteDepot,
  arrivedEnviroFacility
}

enum BeforeOrAfterPic {
  beforePic,
  afterPic,
}

abstract class IScheduleService {
  Future<Either<MainFailure, JobCardRespModel>> jobcardservicefunction(
      {required int quoteId});
  Future<Either<MainFailure, List<SheduleCardRespModel>>>
      shedulecardservicefunction();

  Future<Either<Map<MainFailure, dynamic>, SheduleSignatureModel>>
      shedulesignatureserviceapi({
    required int id,
    required List<String> pickedFiles,
    required String image,
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
  Future<Either<Map<MainFailure, dynamic>, dynamic>>
      deleteScheduleCommentServiceApi({
    required int id,
  });
  Future<Either<Map<MainFailure, dynamic>, dynamic>>
      updatePreInspectionSchedule({required VehicleModel data});
  Future<Either<MainFailure, ScheduleStatusResModel>> editScheduleStatusApi(
      {required dynamic statusType,
      required String date,
      required String status,
      required int id});
  Future<Either<Map<MainFailure, dynamic>, ScheduleImageResModel>>
      addImagesScheduleAPi(
          {required int id,
          required List<String> pickedFiles,
          required bool beforeOrAfterPic,
          required picType});
  Future<Either<Map<MainFailure, dynamic>, ScheduleImageResModel>>
      deleteImagesScheduleAPi({required int id, required List<int> imageId});
  Future<Either<Map<MainFailure, dynamic>, ScheduleImageResModel>>
      addVideosScheduleAPi(
          {required int id, required List<String> pickedFiles});
  Future<Either<Map<MainFailure, dynamic>, ScheduleImageResModel>>
      deleteVideosScheduleAPi({required int id, required int jobVdoId});
}

@LazySingleton(as: IScheduleService)
class SalesService implements IScheduleService {
  final HttpService httpService;
  SalesService(this.httpService);
  @override
  Future<Either<MainFailure, JobCardRespModel>> jobcardservicefunction(
      {required int quoteId}) async {
    var response = await getIt<HttpService>().request(
        authenticated: true,
        method: HttpMethod.get,
        apiUrl: "${ApiEndPoints.endpointjobcard}$quoteId");

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
  Future<Either<Map<MainFailure, dynamic>, SheduleSignatureModel>>
      shedulesignatureserviceapi({
    required int id,
    required String image,
    required List<String> pickedFiles,
    required String signatureName,
    required String purchaseOderNo,
    required String extractedWasteType,
    required String extractedLitres,
  }) async {
    MultipartRequest request = MultipartRequest(
      "POST",
      Uri.parse("$baseUrl${ApiEndPoints.endpointshedulesignature}"),
    );
    request.fields["id"] = "$id";
    request.files.add(
      await MultipartFile.fromPath("image", image),
    );
    for (String filePath in pickedFiles) {
      request.files.add(
        await MultipartFile.fromPath(
            "weigh_bridge_required_multiple_file", filePath),
      );
    }
    request.fields["signature_name"] = signatureName;
    request.fields["purchase_order_number"] = purchaseOderNo;
    request.fields["extracted_litres_of_waste"] = extractedWasteType;
    request.fields["extracted_waste_type"] = extractedLitres;
    var response =
        await getIt<HttpService>().multipartRequests(request: request);

    return response.fold(
      (l) => Left(l),
      (res) async {
        return Right(SheduleSignatureModel.fromJson(jsonDecode(res.body)));
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, SheduleCommentModel>>
      shedulecommentserviceapi(
          {required int id, required String comment}) async {
    var response = await getIt<HttpService>().multipartRequest(
      apiUrl: ApiEndPoints.endpointcommentsignature,
      data: {"schedule_id": id, "comment": comment},
      method: "POST",
    );
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        SheduleCommentModel signingdata = SheduleCommentModel.fromJson(data);
        return Right(signingdata);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>>
      updatePreInspectionSchedule({required VehicleModel data}) async {
    var response = await getIt<HttpService>().multipartRequest(
        data: data.toJson(),
        method: "POST",
        apiUrl: ApiEndPoints.endpointaddpresinspection);
    return response.fold(
      (l) => Left(l),
      (res) async => const Right('success'),
    );
  }

  @override
  Future<Either<MainFailure, ScheduleStatusResModel>> editScheduleStatusApi(
      {required dynamic statusType,
      required String date,
      required String status,
      required int id}) async {
    MultipartRequest request = MultipartRequest(
      "PUT",
      Uri.parse("$baseUrl${ApiEndPoints.endpointSheduleStatusEdit}"),
    );
    request.fields["id"] = "$id";
    switch (statusType) {
      case ScheduleStatusType.departedEnviroFacility:
        request.fields["depart_enviro_facility"] = date;
        break;
      case ScheduleStatusType.jobStarted:
        request.fields["start_job"] = date;
        break;
      case ScheduleStatusType.finishedJob:
        request.fields["finish_job"] = date;
        break;
      case ScheduleStatusType.completed:
        request.fields["completed"] = date;
        break;
      case ScheduleStatusType.arrivedAtDepot:
        request.fields["arrive_at_waste_depot"] = date;
        break;
      case ScheduleStatusType.departedWasteDepot:
        request.fields["depart_waste_depot"] = date;
        break;
      case ScheduleStatusType.arrivedEnviroFacility:
        request.fields["arrive_enviro_facility"] = date;
        break;
    }
    request.fields["status"] = status;
    var response =
        await getIt<HttpService>().multipartRequests(request: request);
    return response.fold((l) {
      // Show Error
      return Left(l.keys.first);
    }, (res) async {
      return Right(ScheduleStatusResModel.fromJson(jsonDecode(res.body)));
    });
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, ScheduleImageResModel>>
      addImagesScheduleAPi(
          {required int id,
          required List<String> pickedFiles,
          required bool beforeOrAfterPic,
          required picType}) async {
    MultipartRequest request = MultipartRequest(
      "POST",
      Uri.parse("$baseUrl${ApiEndPoints.endpointsheduleaddimage}"),
    );
    request.fields["id"] = "$id";
    for (String filePath in pickedFiles) {
      request.files.add(
        await MultipartFile.fromPath("image", filePath),
      );
    }
    // request.files.add(
    //   await MultipartFile.fromPath("image", pickedFiles),
    // );
    switch (picType) {
      case BeforeOrAfterPic.beforePic:
        request.fields["before_pic"] = beforeOrAfterPic ? 'True' : 'False';
        break;
      case BeforeOrAfterPic.afterPic:
        request.fields["after_pic"] = beforeOrAfterPic ? 'True' : 'False';
        break;
    }
    var response =
        await getIt<HttpService>().multipartRequests(request: request);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);

        ScheduleImageResModel addImage = ScheduleImageResModel.fromJson(data);
        return Right(addImage);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>>
      deleteScheduleCommentServiceApi({required int id}) async {
    var response = await getIt<HttpService>().request(
        method: HttpMethod.delete,
        apiUrl: "${ApiEndPoints.endpointdeletecommentsignature}$id/");

    return response.fold(
      (l) {
        (l.values.first);
        return Left(l);
      },
      (res) async {
        return const Right("Success");
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, ScheduleImageResModel>>
      deleteImagesScheduleAPi(
          {required int id, required List<int> imageId}) async {
    var response = await getIt<HttpService>().multipartRequest(
      apiUrl: ApiEndPoints.endpointsheduleaddimage,
      data: {"id": id, "image_to_delete": imageId},
      method: "POST",
    );
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        ScheduleImageResModel deleteImage =
            ScheduleImageResModel.fromJson(data);
        return Right(deleteImage);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, ScheduleImageResModel>>
      addVideosScheduleAPi(
          {required int id, required List<String> pickedFiles}) async {
    MultipartRequest request = MultipartRequest(
      "POST",
      Uri.parse("$baseUrl${ApiEndPoints.endpointsheduleaddvideo}"),
    );
    request.fields["schedule_id"] = "$id";
    for (String videoPath in pickedFiles) {
      request.files.add(
        await MultipartFile.fromPath("videos", videoPath),
      );
    }
    var response =
        await getIt<HttpService>().multipartRequests(request: request);
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);

        ScheduleImageResModel addVideo = ScheduleImageResModel.fromJson(data);
        return Right(addVideo);
      },
    );
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, ScheduleImageResModel>>
      deleteVideosScheduleAPi(
          {required int id, required int jobVdoId}) async {
    var response = await getIt<HttpService>().multipartRequest(
      apiUrl: ApiEndPoints.endpointsheduledeletevideo,
      data: {"schedule_id": id, "job_video_id": jobVdoId},
      method: "POST",
    );
    return response.fold(
      (l) => Left(l),
      (res) async {
        var data = jsonDecode(res.body);
        ScheduleImageResModel deleteVideo =
            ScheduleImageResModel.fromJson(data);
        return Right(deleteVideo);
      },
    );
  }
}
