// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persmission_status_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersmissionStatusResModelImpl _$$PersmissionStatusResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PersmissionStatusResModelImpl(
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      site: json['site'] == null
          ? null
          : Site.fromJson(json['site'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : Home.fromJson(json['home'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      sales: json['sales'] == null
          ? null
          : Sales.fromJson(json['sales'] as Map<String, dynamic>),
      scheduling: json['scheduling'] == null
          ? null
          : Scheduling.fromJson(json['scheduling'] as Map<String, dynamic>),
      ohs: json['ohs'] == null
          ? null
          : Ohs.fromJson(json['ohs'] as Map<String, dynamic>),
      intranet: json['intranet'] == null
          ? null
          : Intranet.fromJson(json['intranet'] as Map<String, dynamic>),
      accounts: json['accounts'] == null
          ? null
          : Accounts.fromJson(json['accounts'] as Map<String, dynamic>),
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      webAppLoginAccess: json['web_app_login_access'] as bool?,
      currentUserPermission: json['current_user_permission'] as String?,
    );

Map<String, dynamic> _$$PersmissionStatusResModelImplToJson(
        _$PersmissionStatusResModelImpl instance) =>
    <String, dynamic>{
      'team': instance.team,
      'site': instance.site,
      'home': instance.home,
      'vehicle': instance.vehicle,
      'sales': instance.sales,
      'scheduling': instance.scheduling,
      'ohs': instance.ohs,
      'intranet': instance.intranet,
      'accounts': instance.accounts,
      'invoice': instance.invoice,
      'web_app_login_access': instance.webAppLoginAccess,
      'current_user_permission': instance.currentUserPermission,
    };
