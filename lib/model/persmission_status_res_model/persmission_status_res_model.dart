import 'package:freezed_annotation/freezed_annotation.dart';

import 'accounts.dart';
import 'home.dart';
import 'intranet.dart';
import 'invoice.dart';
import 'ohs.dart';
import 'sales.dart';
import 'scheduling.dart';
import 'site.dart';
import 'team.dart';
import 'vehicle.dart';

part 'persmission_status_res_model.freezed.dart';
part 'persmission_status_res_model.g.dart';

@freezed
class PersmissionStatusResModel with _$PersmissionStatusResModel {
  factory PersmissionStatusResModel({
    Team? team,
    Site? site,
    Home? home,
    Vehicle? vehicle,
    Sales? sales,
    Scheduling? scheduling,
    Ohs? ohs,
    Intranet? intranet,
    Accounts? accounts,
    Invoice? invoice,
    @JsonKey(name: 'web_app_login_access') bool? webAppLoginAccess,
    @JsonKey(name: 'current_user_permission') String? currentUserPermission,
  }) = _PersmissionStatusResModel;

  factory PersmissionStatusResModel.fromJson(Map<String, dynamic> json) =>
      _$PersmissionStatusResModelFromJson(json);
}
