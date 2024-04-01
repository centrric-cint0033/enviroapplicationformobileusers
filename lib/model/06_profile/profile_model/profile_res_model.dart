// To parse this JSON data, do
//
//     final profileRespModel = profileRespModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_res_model.freezed.dart';
part 'profile_res_model.g.dart';

ProfileRespModel profileRespModelFromJson(String str) =>
    ProfileRespModel.fromJson(json.decode(str));

String profileRespModelToJson(ProfileRespModel data) =>
    json.encode(data.toJson());

@freezed
class ProfileRespModel with _$ProfileRespModel {
  const factory ProfileRespModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "termination_date") dynamic terminationDate,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "expiry_date") String? expiryDate,
    @JsonKey(name: "alert_before") String? alertBefore,
    @JsonKey(name: "driving_license") dynamic drivingLicense,
    @JsonKey(name: "employee_id") int? employeeId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "user_type") String? userType,
    @JsonKey(name: "permission_type") String? permissionType,
    @JsonKey(name: "contact_number") String? contactNumber,
    @JsonKey(name: "date_of_birth") DateTime? dateOfBirth,
    @JsonKey(name: "active_status") bool? activeStatus,
    @JsonKey(name: "date_joined") DateTime? dateJoined,
    @JsonKey(name: "dp") String? dp,
    @JsonKey(name: "bio") String? bio,
    @JsonKey(name: "instagram_link") dynamic instagramLink,
    @JsonKey(name: "facebook_link") dynamic facebookLink,
    @JsonKey(name: "linkedin_link") dynamic linkedinLink,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "personal_email") String? personalEmail,
    @JsonKey(name: "emergency_contact_name") String? emergencyContactName,
    @JsonKey(name: "emergency_contact") String? emergencyContact,
    @JsonKey(name: "employement_status") String? employementStatus,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "edited_date_time") String? editedDateTime,
    @JsonKey(name: "is_occupied") bool? isOccupied,
    @JsonKey(name: "user") int? user,
  }) = _ProfileRespModel;

  factory ProfileRespModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileRespModelFromJson(json);
}
