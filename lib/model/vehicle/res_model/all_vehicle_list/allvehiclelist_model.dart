import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'allvehiclelist_model.freezed.dart';
part 'allvehiclelist_model.g.dart';

@freezed
class AllVehicleListModel with _$AllVehicleListModel {
  factory AllVehicleListModel({
    required List<Allvehiclepermission> allVehiclePermission,
  }) = _AllVehicleListModel;

  factory AllVehicleListModel.fromJson(Map<String, dynamic> json) =>
      _$AllVehicleListModelFromJson(json);
}

List<Allvehiclepermission> allvehiclepermissionFromJson(String str) =>
    List<Allvehiclepermission>.from(
        json.decode(str).map((x) => Allvehiclepermission.fromJson(x)));

String allvehiclepermissionToJson(List<Allvehiclepermission> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Allvehiclepermission {
  int id;
  String registration;

  Allvehiclepermission({
    required this.id,
    required this.registration,
  });

  factory Allvehiclepermission.fromJson(Map<String, dynamic> json) =>
      Allvehiclepermission(
        id: json["id"],
        registration: json["registration"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "registration": registration,
      };
}
