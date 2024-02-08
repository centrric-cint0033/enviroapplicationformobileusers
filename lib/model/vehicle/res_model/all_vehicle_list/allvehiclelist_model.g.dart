// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allvehiclelist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllVehicleListModelImpl _$$AllVehicleListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AllVehicleListModelImpl(
      allVehiclePermission: (json['allVehiclePermission'] as List<dynamic>)
          .map((e) => Allvehiclepermission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllVehicleListModelImplToJson(
        _$AllVehicleListModelImpl instance) =>
    <String, dynamic>{
      'allVehiclePermission': instance.allVehiclePermission,
    };
