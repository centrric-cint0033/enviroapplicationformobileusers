// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_team_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTeamReqModelImpl _$$CreateTeamReqModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTeamReqModelImpl(
      employee_id: json['employee_id'] as String?,
      address: json['address'] as String?,
      name: json['name'] as String?,
      designation: json['designation'] as String?,
      contact_number: json['contact_number'] as String?,
      date_joined: json['date_joined'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      date_of_birth: json['date_of_birth'] as String?,
      alert_before: json['alert_before'] == null
          ? null
          : DateTime.parse(json['alert_before'] as String),
      expiry_date: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
      username: json['username'] as String?,
      dp: json['dp'] as String?,
      cover_image: json['cover_image'] as String?,
      bio: json['bio'] as String?,
      user_type: json['user_type'] as String?,
      termination_date: json['termination_date'] as String?,
      personal_email: json['personal_email'] as String?,
      emergency_contact_name: json['emergency_contact_name'] as String?,
      emergency_contact: json['emergency_contact'] as String?,
      employement_status: json['employement_status'] as String?,
      driving_license: json['driving_license'] as String?,
    );

Map<String, dynamic> _$$CreateTeamReqModelImplToJson(
        _$CreateTeamReqModelImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employee_id,
      'address': instance.address,
      'name': instance.name,
      'designation': instance.designation,
      'contact_number': instance.contact_number,
      'date_joined': instance.date_joined,
      'password': instance.password,
      'email': instance.email,
      'date_of_birth': instance.date_of_birth,
      'alert_before': instance.alert_before?.toIso8601String(),
      'expiry_date': instance.expiry_date?.toIso8601String(),
      'username': instance.username,
      'dp': instance.dp,
      'cover_image': instance.cover_image,
      'bio': instance.bio,
      'user_type': instance.user_type,
      'termination_date': instance.termination_date,
      'personal_email': instance.personal_email,
      'emergency_contact_name': instance.emergency_contact_name,
      'emergency_contact': instance.emergency_contact,
      'employement_status': instance.employement_status,
      'driving_license': instance.driving_license,
    };
