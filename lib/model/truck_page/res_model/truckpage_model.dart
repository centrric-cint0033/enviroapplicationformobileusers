import 'package:freezed_annotation/freezed_annotation.dart';

part 'truckpage_model.freezed.dart';
part 'truckpage_model.g.dart';

@freezed
class TruckpageModel with _$TruckpageModel {
  factory TruckpageModel({
    required int id,
    required String imageThumbnail,
    required String image1,
    required List<dynamic> multipleImages,
    required String tabType,
    required String vehicleType,
    required bool activeStatus,
    required dynamic previousRego,
    required String registration,
    required String types,
    required int year,
    required String transmission,
    required String fuel,
    required String height,
    required String width,
    required String length,
    required String litres,
    required String vinNumber,
    required String axies,
    required String dueRego,
    required String engineNumbers,
    required String eTag,
    required String insurance,
    required String fuelCard,
    required String fbt,
    required bool action,
    required String image2,
    required String image3,
    required bool preinspectionRequired,
    required String createdDateTime,
    required String editedDateTime,
  }) = _TruckpageModel;

  factory TruckpageModel.fromJson(Map<String, dynamic> json) =>
      _$TruckpageModelFromJson(json);
}
