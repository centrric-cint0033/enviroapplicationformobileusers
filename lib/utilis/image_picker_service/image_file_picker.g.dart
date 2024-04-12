// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_file_picker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageFilePickerModelImpl _$$ImageFilePickerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageFilePickerModelImpl(
      primary: json['primary'] as bool?,
      imageUrl: json['imageUrl'] as String?,
      fileName: json['fileName'] as String?,
      imagePath: json['imagePath'] as String?,
      imageUUID: json['imageUUID'] as String?,
      imageFileName: json['imageFileName'] as String?,
    );

Map<String, dynamic> _$$ImageFilePickerModelImplToJson(
        _$ImageFilePickerModelImpl instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'imageUrl': instance.imageUrl,
      'fileName': instance.fileName,
      'imagePath': instance.imagePath,
      'imageUUID': instance.imageUUID,
      'imageFileName': instance.imageFileName,
    };
