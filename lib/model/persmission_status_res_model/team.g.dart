// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      edit: json['edit'] as bool?,
      add: json['add'] as bool?,
      delete: json['delete'] as bool?,
      view: json['view'] as bool?,
      waste: json['waste'] as bool?,
      pumps: json['pumps'] as bool?,
      hills: json['hills'] as bool?,
      destruction: json['destruction'] as bool?,
      profileEdit: json['profile_edit'] as bool?,
      personalProfileOnly: json['personal_profile_only'] as bool?,
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'edit': instance.edit,
      'add': instance.add,
      'delete': instance.delete,
      'view': instance.view,
      'waste': instance.waste,
      'pumps': instance.pumps,
      'hills': instance.hills,
      'destruction': instance.destruction,
      'profile_edit': instance.profileEdit,
      'personal_profile_only': instance.personalProfileOnly,
    };
