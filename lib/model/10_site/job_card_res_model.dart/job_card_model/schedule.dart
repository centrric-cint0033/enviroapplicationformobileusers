import 'package:enviro_mobile_application/model/12_shedulecard/schedule_image_res_model/additional_vehicle_driver.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/schedule_image_res_model/before_pic.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/schedule_image_res_model/prime_vehicle_driver.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'vehicle.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class Schedule with _$Schedule {
  factory Schedule({
    dynamic id,
    dynamic status,
    @JsonKey(name: 'start_date') dynamic startDate,
    @JsonKey(name: 'start_time') dynamic startTime,
    @JsonKey(name: 'end_date') dynamic endDate,
    @JsonKey(name: 'end_time') dynamic endTime,
    Vehicle? vehicle,
    @JsonKey(name: 'prime_vehicle_driver')
    List<PrimeVehicleDriver>? primeVehicleDriver,
    @JsonKey(name: 'additional_vehicle_driver')
    List<AdditionalVehicleDriver>? additionalVehicleDriver,
    dynamic signature,
    List<dynamic>? team,
    @JsonKey(name: "comments") List<Comment>? comments,
    List<dynamic>? images,
    dynamic completed,
    @JsonKey(name: 'signature_name') dynamic signatureName,
    @JsonKey(name: 'purchase_order') dynamic purchaseOrder,
    @JobVideoConverter() @JsonKey(name: "job_video") List<Job>? jobVideo,
    bool? error,
    @JsonKey(name: 'extracted_waste_type') dynamic extractedWasteType,
    @JsonKey(name: 'extracted_litres_of_waste') dynamic extractedLitresOfWaste,
    @JsonKey(name: 'before_pics') List<BeforePic>? beforePics,
    @JsonKey(name: 'after_pics') List<BeforePic>? afterPics,
    @JsonKey(name: 'dev_data') dynamic devData,
    @JsonKey(name: 'depart_enviro_facility') dynamic departEnviroFacility,
    @JsonKey(name: 'start_job') dynamic startJob,
    @JsonKey(name: 'finish_job') dynamic finishJob,
    @JsonKey(name: 'arrive_at_waste_depot') dynamic arriveAtWasteDepot,
    @JsonKey(name: 'depart_waste_depot') dynamic departWasteDepot,
    @JsonKey(name: 'arrive_enviro_facility') dynamic arriveEnviroFacility,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

// Custom converter to handle the dynamic type of `job_video`
class JobVideoConverter implements JsonConverter<List<Job>?, dynamic> {
  const JobVideoConverter();

  @override
  List<Job>? fromJson(dynamic json) {
    if (json is String) {
      // If job_video is a string, return null or handle accordingly
      return null;
    } else if (json is List) {
      // If job_video is a list, parse it
      return json.map((e) => Job.fromJson(e as Map<String, dynamic>)).toList();
    }
    return null;
  }

  @override
  dynamic toJson(List<Job>? object) {
    return object?.map((e) => e.toJson()).toList();
  }
}

@freezed
class JobVideo with _$JobVideo {
  const factory JobVideo({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "video") String? video,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "created_date_time") String? createdAt,
    @JsonKey(name: "edited_date_time") String? editedAt,
  }) = _JobVideo;

  factory JobVideo.fromJson(Map<String, dynamic> json) =>
      _$JobVideoFromJson(json);
}
