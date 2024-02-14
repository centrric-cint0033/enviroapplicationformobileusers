// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truckpage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TruckpageModelImpl _$$TruckpageModelImplFromJson(Map<String, dynamic> json) =>
    _$TruckpageModelImpl(
      id: json['id'] as int?,
      imageThumbnail: json['imageThumbnail'] as String?,
      image1: json['image1'] as String?,
      multipleImages: json['multipleImages'] as List<dynamic>?,
      tabType: json['tabType'] as String?,
      vehicleType: json['vehicleType'] as String?,
      activeStatus: json['activeStatus'] as bool?,
      previousRego: json['previousRego'],
      registration: json['registration'] as String?,
      types: json['types'] as String?,
      year: json['year'] as int?,
      transmission: json['transmission'] as String?,
      fuel: json['fuel'] as String?,
      height: json['height'] as String?,
      width: json['width'] as String?,
      length: json['length'] as String?,
      litres: json['litres'] as String?,
      vinNumber: json['vinNumber'] as String?,
      axies: json['axies'] as String?,
      dueRego: json['dueRego'] as String?,
      engineNumbers: json['engineNumbers'] as String?,
      eTag: json['eTag'] as String?,
      insurance: json['insurance'] as String?,
      fuelCard: json['fuelCard'] as String?,
      fbt: json['fbt'] as String?,
      action: json['action'] as bool?,
      image2: json['image2'] as String?,
      image3: json['image3'] as String?,
      preinspectionRequired: json['preinspectionRequired'] as bool?,
      createdDateTime: json['createdDateTime'] as String?,
      editedDateTime: json['editedDateTime'] as String?,
    );

Map<String, dynamic> _$$TruckpageModelImplToJson(
        _$TruckpageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageThumbnail': instance.imageThumbnail,
      'image1': instance.image1,
      'multipleImages': instance.multipleImages,
      'tabType': instance.tabType,
      'vehicleType': instance.vehicleType,
      'activeStatus': instance.activeStatus,
      'previousRego': instance.previousRego,
      'registration': instance.registration,
      'types': instance.types,
      'year': instance.year,
      'transmission': instance.transmission,
      'fuel': instance.fuel,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'litres': instance.litres,
      'vinNumber': instance.vinNumber,
      'axies': instance.axies,
      'dueRego': instance.dueRego,
      'engineNumbers': instance.engineNumbers,
      'eTag': instance.eTag,
      'insurance': instance.insurance,
      'fuelCard': instance.fuelCard,
      'fbt': instance.fbt,
      'action': instance.action,
      'image2': instance.image2,
      'image3': instance.image3,
      'preinspectionRequired': instance.preinspectionRequired,
      'createdDateTime': instance.createdDateTime,
      'editedDateTime': instance.editedDateTime,
    };
