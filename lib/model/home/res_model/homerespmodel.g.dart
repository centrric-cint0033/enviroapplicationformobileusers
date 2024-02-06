// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homerespmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeRespModelImpl _$$HomeRespModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeRespModelImpl(
      team: json['team'] == null
          ? null
          : Permission.fromJson(json['team'] as Map<String, dynamic>),
      site: json['site'] == null
          ? null
          : Permission.fromJson(json['site'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : Permission.fromJson(json['home'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : Permission.fromJson(json['vehicle'] as Map<String, dynamic>),
      sales: json['sales'] == null
          ? null
          : Permission.fromJson(json['sales'] as Map<String, dynamic>),
      scheduling: json['scheduling'] == null
          ? null
          : Permission.fromJson(json['scheduling'] as Map<String, dynamic>),
      ohs: json['ohs'] == null
          ? null
          : Permission.fromJson(json['ohs'] as Map<String, dynamic>),
      intranet: json['intranet'] == null
          ? null
          : Permission.fromJson(json['intranet'] as Map<String, dynamic>),
      accounts: json['accounts'] == null
          ? null
          : Permission.fromJson(json['accounts'] as Map<String, dynamic>),
      invoice: json['invoice'] == null
          ? null
          : Permission.fromJson(json['invoice'] as Map<String, dynamic>),
      webAppLoginAccess: json['webAppLoginAccess'] as bool?,
      currentUserPermission: json['currentUserPermission'] as String?,
    );

Map<String, dynamic> _$$HomeRespModelImplToJson(_$HomeRespModelImpl instance) =>
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
      'webAppLoginAccess': instance.webAppLoginAccess,
      'currentUserPermission': instance.currentUserPermission,
    };

_$PermissionImpl _$$PermissionImplFromJson(Map<String, dynamic> json) =>
    _$PermissionImpl(
      edit: json['edit'] as bool?,
      add: json['add'] as bool?,
      delete: json['delete'] as bool?,
      view: json['view'] as bool?,
      waste: json['waste'] as bool?,
      pumps: json['pumps'] as bool?,
      hills: json['hills'] as bool?,
      destruction: json['destruction'] as bool?,
      profileEdit: json['profileEdit'] as bool?,
      editPreinspection: json['editPreinspection'] as bool?,
    );

Map<String, dynamic> _$$PermissionImplToJson(_$PermissionImpl instance) =>
    <String, dynamic>{
      'edit': instance.edit,
      'add': instance.add,
      'delete': instance.delete,
      'view': instance.view,
      'waste': instance.waste,
      'pumps': instance.pumps,
      'hills': instance.hills,
      'destruction': instance.destruction,
      'profileEdit': instance.profileEdit,
      'editPreinspection': instance.editPreinspection,
    };
