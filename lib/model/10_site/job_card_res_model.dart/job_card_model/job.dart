import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job {
  factory Job({
    num? id,
    @JsonKey(name: 'created_on') String? createdOn,
    String? type,
    @JsonKey(name: 'tab_type') String? tabType,
    @JsonKey(name: 'schedule_status') bool? scheduleStatus,
    bool? error,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
