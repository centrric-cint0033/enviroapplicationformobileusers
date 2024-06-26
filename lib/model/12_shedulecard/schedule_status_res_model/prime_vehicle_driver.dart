import 'package:freezed_annotation/freezed_annotation.dart';

part 'prime_vehicle_driver.freezed.dart';
part 'prime_vehicle_driver.g.dart';

@freezed
class PrimeVehicleDriver with _$PrimeVehicleDriver {
  factory PrimeVehicleDriver({
    String? dp,
    String? registration,
    @JsonKey(name: 'driver_id') num? driverId,
    @JsonKey(name: 'vehicle_id') num? vehicleId,
    String? designation,
    String? name,
  }) = _PrimeVehicleDriver;

  factory PrimeVehicleDriver.fromJson(Map<String, dynamic> json) =>
      _$PrimeVehicleDriverFromJson(json);
}
