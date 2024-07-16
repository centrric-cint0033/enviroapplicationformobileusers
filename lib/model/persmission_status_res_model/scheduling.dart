import 'package:freezed_annotation/freezed_annotation.dart';

part 'scheduling.freezed.dart';
part 'scheduling.g.dart';

@freezed
class Scheduling with _$Scheduling {
  factory Scheduling({
    bool? edit,
    bool? add,
    bool? delete,
    bool? view,
    bool? waste,
    bool? pumps,
    bool? hills,
    bool? destruction,
  }) = _Scheduling;

  factory Scheduling.fromJson(Map<String, dynamic> json) =>
      _$SchedulingFromJson(json);
}
