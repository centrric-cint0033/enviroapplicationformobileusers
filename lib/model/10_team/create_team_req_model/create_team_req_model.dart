import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_team_req_model.freezed.dart';
part 'create_team_req_model.g.dart';

@freezed
class CreateTeamReqModel with _$CreateTeamReqModel {
  factory CreateTeamReqModel(
      {String? employee_id,
      String? address,
      String? name,
      String? designation,
      String? contact_number,
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
      String? personal_email,
      String? emergency_contact_name,
      String? emergency_contact,
      String? employement_status,
      String? id,
      String? driving_license}) = _CreateTeamReqModel;

  factory CreateTeamReqModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTeamReqModelFromJson(json);
}
