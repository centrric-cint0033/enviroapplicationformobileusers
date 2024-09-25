import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_list.freezed.dart';
part 'service_list.g.dart';

@freezed
class ServiceList with _$ServiceList {
  factory ServiceList({
    String? no,
    String? capacity,
    String? frequency,
    @JsonKey(name: 'waste_type') String? wasteType,
    @JsonKey(name: 'pit_location') String? pitLocation,
  }) = _ServiceList;

  factory ServiceList.fromJson(Map<String, dynamic> json) =>
      _$ServiceListFromJson(json);
}
