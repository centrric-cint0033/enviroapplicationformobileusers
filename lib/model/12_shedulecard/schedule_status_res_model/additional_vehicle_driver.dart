import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_vehicle_driver.freezed.dart';
part 'additional_vehicle_driver.g.dart';

@freezed
class AdditionalVehicleDriver with _$AdditionalVehicleDriver {
  factory AdditionalVehicleDriver({
    String? name,
    String? designation,
    @JsonKey(name: 'driver_id') num? driverId,
    @JsonKey(name: 'vehicle_id') num? vehicleId,
    String? dp,
    String? registration,
  }) = _AdditionalVehicleDriver;

  factory AdditionalVehicleDriver.fromJson(Map<String, dynamic> json) =>
      _$AdditionalVehicleDriverFromJson(json);
}
