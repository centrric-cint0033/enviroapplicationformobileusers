import 'package:freezed_annotation/freezed_annotation.dart';

part 'truckpage_model.freezed.dart';
part 'truckpage_model.g.dart';

@freezed
class CmnvehiclepageModel with _$CmnvehiclepageModel {
  factory CmnvehiclepageModel({
    int? odometer,
    int? id,
    String? imageThumbnail,
    String? image1,
    List<dynamic>? multipleImages,
    String? tabType,
    String? vehicleType,
    bool? activeStatus,
    dynamic previousRego,
    String? registration,
    String? types,
    int? year,
    String? transmission,
    String? fuel,
    String? height,
    String? width,
    String? length,
    String? litres,
    String? vinNumber,
    String? axies,
    String? dueRego,
    String? engineNumbers,
    String? eTag,
    String? insurance,
    String? fuelCard,
    String? fbt,
    bool? action,
    String? image2,
    String? image3,
    bool? preinspectionRequired,
    String? createdDateTime,
    String? editedDateTime,
  }) = _CmnvehiclepageModel;

  factory CmnvehiclepageModel.fromJson(Map<String, dynamic> json) =>
      _$CmnvehiclepageModelFromJson(json);
}
