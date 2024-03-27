// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  factory VehicleModel({
    int? id,
    @JsonKey(name: 'image_thumbnail') String? imageThumbnail,
    String? image1,
    @JsonKey(name: 'multiple_images') List<dynamic>? multipleImages,
    @JsonKey(name: 'tab_type') String? tabType,
    @JsonKey(name: 'vehicle_type') String? vehicleType,
    @JsonKey(name: 'active_status') bool? activeStatus,
    @JsonKey(name: 'previous_rego') dynamic previousRego,
    String? registration,
    String? types,
    dynamic year,
    String? transmission,
    String? fuel,
    String? height,
    String? width,
    String? length,
    String? litres,
    @JsonKey(name: 'vin_number') String? vinNumber,
    String? axies,
    @JsonKey(name: 'due_rego') String? dueRego,
    @JsonKey(name: 'engine_numbers') String? engineNumbers,
    @JsonKey(name: 'e_tag') String? eTag,
    String? insurance,
    @JsonKey(name: 'fuel_card') String? fuelCard,
    String? fbt,
    bool? action,
    String? image2,
    String? image3,
    @JsonKey(name: 'preinspection_required') bool? preinspectionRequired,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);
}
