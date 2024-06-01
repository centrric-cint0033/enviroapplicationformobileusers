// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileRespModelImpl _$$ProfileRespModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileRespModelImpl(
      id: (json['id'] as num?)?.toInt(),
      terminationDate: json['termination_date'],
      username: json['username'] as String?,
      expiryDate: json['expiry_date'] as String?,
      alertBefore: json['alert_before'] as String?,
      drivingLicense: json['driving_license'],
      employeeId: (json['employee_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      userType: json['user_type'] as String?,
      permissionType: json['permission_type'] as String?,
      contactNumber: json['contact_number'] as String?,
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      activeStatus: json['active_status'] as bool?,
      dateJoined: json['date_joined'] == null
          ? null
          : DateTime.parse(json['date_joined'] as String),
      dp: json['dp'] as String?,
      bio: json['bio'] as String?,
      instagramLink: json['instagram_link'],
      facebookLink: json['facebook_link'],
      linkedinLink: json['linkedin_link'],
      email: json['email'] as String?,
      personalEmail: json['personal_email'] as String?,
      emergencyContactName: json['emergency_contact_name'] as String?,
      emergencyContact: json['emergency_contact'] as String?,
      employementStatus: json['employement_status'] as String?,
      address: json['address'] as String?,
      editedDateTime: json['edited_date_time'] as String?,
      isOccupied: json['is_occupied'] as bool?,
      user: (json['user'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProfileRespModelImplToJson(
        _$ProfileRespModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'termination_date': instance.terminationDate,
      'username': instance.username,
      'expiry_date': instance.expiryDate,
      'alert_before': instance.alertBefore,
      'driving_license': instance.drivingLicense,
      'employee_id': instance.employeeId,
      'name': instance.name,
      'user_type': instance.userType,
      'permission_type': instance.permissionType,
      'contact_number': instance.contactNumber,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'active_status': instance.activeStatus,
      'date_joined': instance.dateJoined?.toIso8601String(),
      'dp': instance.dp,
      'bio': instance.bio,
      'instagram_link': instance.instagramLink,
      'facebook_link': instance.facebookLink,
      'linkedin_link': instance.linkedinLink,
      'email': instance.email,
      'personal_email': instance.personalEmail,
      'emergency_contact_name': instance.emergencyContactName,
      'emergency_contact': instance.emergencyContact,
      'employement_status': instance.employementStatus,
      'address': instance.address,
      'edited_date_time': instance.editedDateTime,
      'is_occupied': instance.isOccupied,
      'user': instance.user,
    };
