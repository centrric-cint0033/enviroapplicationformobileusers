// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleModelImpl _$$VehicleModelImplFromJson(Map<String, dynamic> json) =>
    _$VehicleModelImpl(
      id: json['id'] as int?,
      imageThumbnail: json['image_thumbnail'] as String?,
      image1: json['image1'] as String?,
      multipleImages: json['multiple_images'] as List<dynamic>?,
      tabType: json['tab_type'] as String?,
      vehicleType: json['vehicle_type'] as String?,
      activeStatus: json['active_status'] as bool?,
      previousRego: json['previous_rego'],
      registration: json['registration'] as String?,
      types: json['types'] as String?,
      year: json['year'],
      transmission: json['transmission'] as String?,
      fuel: json['fuel'] as String?,
      height: json['height'] as String?,
      width: json['width'] as String?,
      length: json['length'] as String?,
      litres: json['litres'] as String?,
      vinNumber: json['vin_number'] as String?,
      axies: json['axies'] as String?,
      dueRego: json['due_rego'] as String?,
      engineNumbers: json['engine_numbers'] as String?,
      eTag: json['e_tag'] as String?,
      insurance: json['insurance'] as String?,
      fuelCard: json['fuel_card'] as String?,
      fbt: json['fbt'] as String?,
      action: json['action'] as bool?,
      image2: json['image2'] as String?,
      image3: json['image3'] as String?,
      preinspectionRequired: json['preinspection_required'] as bool?,
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      editedDateTime: json['edited_date_time'] == null
          ? null
          : DateTime.parse(json['edited_date_time'] as String),
    );

Map<String, dynamic> _$$VehicleModelImplToJson(_$VehicleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_thumbnail': instance.imageThumbnail,
      'image1': instance.image1,
      'multiple_images': instance.multipleImages,
      'tab_type': instance.tabType,
      'vehicle_type': instance.vehicleType,
      'active_status': instance.activeStatus,
      'previous_rego': instance.previousRego,
      'registration': instance.registration,
      'types': instance.types,
      'year': instance.year,
      'transmission': instance.transmission,
      'fuel': instance.fuel,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'litres': instance.litres,
      'vin_number': instance.vinNumber,
      'axies': instance.axies,
      'due_rego': instance.dueRego,
      'engine_numbers': instance.engineNumbers,
      'e_tag': instance.eTag,
      'insurance': instance.insurance,
      'fuel_card': instance.fuelCard,
      'fbt': instance.fbt,
      'action': instance.action,
      'image2': instance.image2,
      'image3': instance.image3,
      'preinspection_required': instance.preinspectionRequired,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
    };
