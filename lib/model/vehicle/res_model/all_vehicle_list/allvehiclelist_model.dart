import 'package:freezed_annotation/freezed_annotation.dart';
part 'allvehiclelist_model.freezed.dart';
part 'allvehiclelist_model.g.dart';

@freezed
abstract class AllVehicleListModel with _$AllVehicleListModel {
  const factory AllVehicleListModel({
    required int id,
    required String registration,
  }) = _AllVehicleListModel;

  factory AllVehicleListModel.fromJson(Map<String, dynamic> json) =>
      _$AllVehicleListModelFromJson(json);
}
