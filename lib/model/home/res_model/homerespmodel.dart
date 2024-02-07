import 'package:freezed_annotation/freezed_annotation.dart';

part 'homerespmodel.freezed.dart';
part 'homerespmodel.g.dart';

@freezed
class HomeRespModel with _$HomeRespModel {
  factory HomeRespModel({
    Permission? team,
    Permission? site,
    Permission? home,
    Permission? vehicle,
    Permission? sales,
    Permission? scheduling,
    Permission? ohs,
    Permission? intranet,
    Permission? accounts,
    Permission? invoice,
    bool? webAppLoginAccess,
    String? currentUserPermission,
  }) = _HomeRespModel;

  factory HomeRespModel.fromJson(Map<String, dynamic> json) =>
      _$HomeRespModelFromJson(json);
}

@freezed
class Permission with _$Permission {
  factory Permission({
    bool? edit,
    bool? add,
    bool? delete,
    bool? view,
    bool? waste,
    bool? pumps,
    bool? hills,
    bool? destruction,
    bool? profileEdit,
    bool? editPreinspection,
  }) = _Permission;

  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);
}
