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
    @JsonKey(name: 'prime_vehicle_driver') List<dynamic>? primeVehicleDriver,
    @JsonKey(name: 'additional_vehicle_driver')
    List<dynamic>? additionalVehicleDriver,
    dynamic signature,
    List<dynamic>? team,
    List<dynamic>? comments,
    List<dynamic>? images,
    dynamic completed,
    @JsonKey(name: 'signature_name') dynamic signatureName,
    @JsonKey(name: 'purchase_order') dynamic purchaseOrder,
    @JsonKey(name: 'job_video') dynamic jobVideo,
    bool? error,
    @JsonKey(name: 'dev_data') dynamic devData,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
