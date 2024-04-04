// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_profile_employee_details_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamProfileEmployeeDetailsResModelImpl
    _$$TeamProfileEmployeeDetailsResModelImplFromJson(
            Map<String, dynamic> json) =>
        _$TeamProfileEmployeeDetailsResModelImpl(
          id: json['id'] as num?,
          terminationDate: json['termination_date'],
          username: json['username'] as String?,
          expiryDate: json['expiry_date'] as String?,
          alertBefore: json['alert_before'] as String?,
          drivingLicense: json['driving_license'],
          employeeId: json['employee_id'] as num?,
          name: json['name'] as String?,
          userType: json['user_type'] as String?,
          permissionType: json['permission_type'] as String?,
          contactNumber: json['contact_number'] as String?,
          dateOfBirth: json['date_of_birth'] as String?,
          activeStatus: json['active_status'] as bool?,
          dateJoined: json['date_joined'] as String?,
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
          editedDateTime: json['edited_date_time'] == null
              ? null
              : DateTime.parse(json['edited_date_time'] as String),
          isOccupied: json['is_occupied'] as bool?,
          user: json['user'] as num?,
          folders: json['folders'] as List<dynamic>?,
        );

Map<String, dynamic> _$$TeamProfileEmployeeDetailsResModelImplToJson(
        _$TeamProfileEmployeeDetailsResModelImpl instance) =>
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
      'date_of_birth': instance.dateOfBirth,
      'active_status': instance.activeStatus,
      'date_joined': instance.dateJoined,
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
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
      'is_occupied': instance.isOccupied,
      'user': instance.user,
      'folders': instance.folders,
    };
