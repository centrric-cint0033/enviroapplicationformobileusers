// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_profile_employee_details_res_model.freezed.dart';
part 'team_profile_employee_details_res_model.g.dart';

@freezed
class TeamProfileEmployeeDetailsResModel
    with _$TeamProfileEmployeeDetailsResModel {
  factory TeamProfileEmployeeDetailsResModel({
    num? id,
    @JsonKey(name: 'termination_date') dynamic terminationDate,
    String? username,
    @JsonKey(name: 'expiry_date') String? expiryDate,
    @JsonKey(name: 'alert_before') String? alertBefore,
    @JsonKey(name: 'driving_license') dynamic drivingLicense,
    @JsonKey(name: 'employee_id') num? employeeId,
    String? name,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'permission_type') String? permissionType,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'active_status') bool? activeStatus,
    @JsonKey(name: 'date_joined') String? dateJoined,
    String? dp,
    String? bio,
    @JsonKey(name: 'instagram_link') dynamic instagramLink,
    @JsonKey(name: 'facebook_link') dynamic facebookLink,
    @JsonKey(name: 'linkedin_link') dynamic linkedinLink,
    String? email,
    @JsonKey(name: 'personal_email') String? personalEmail,
    @JsonKey(name: 'emergency_contact_name') String? emergencyContactName,
    @JsonKey(name: 'emergency_contact') String? emergencyContact,
    @JsonKey(name: 'employement_status') String? employementStatus,
    String? address,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
    @JsonKey(name: 'is_occupied') bool? isOccupied,
    num? user,
    List<dynamic>? folders,
  }) = _TeamProfileEmployeeDetailsResModel;

  factory TeamProfileEmployeeDetailsResModel.fromJson(
          Map<String, dynamic> json) =>
      _$TeamProfileEmployeeDetailsResModelFromJson(json);
}
