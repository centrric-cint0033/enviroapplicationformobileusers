// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_designtion_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamDesigntionResModelImpl _$$TeamDesigntionResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamDesigntionResModelImpl(
      designations: (json['designations'] as List<dynamic>?)
          ?.map((e) => Designation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamDesigntionResModelImplToJson(
        _$TeamDesigntionResModelImpl instance) =>
    <String, dynamic>{
      'designations': instance.designations,
    };
