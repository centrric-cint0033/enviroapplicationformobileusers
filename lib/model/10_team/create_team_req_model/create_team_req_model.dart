import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_team_req_model.freezed.dart';
part 'create_team_req_model.g.dart';

@freezed
class CreateTeamReqModel with _$CreateTeamReqModel {
  factory CreateTeamReqModel(
      {num? employee_id,
      String? name,
      String? designation,
      num? contact_number,
      String? date_joined,
      String? password,
      String? email,
      String? date_of_birth,
      String? alert_before,
      String? expiry_date,
      String? username,
      String? dp,
      String? cover_image,
      String? bio,
      String? user_type,
      String? termination_date,
      String? personal_email}) = _CreateTeamReqModel;

  factory CreateTeamReqModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTeamReqModelFromJson(json);
}
