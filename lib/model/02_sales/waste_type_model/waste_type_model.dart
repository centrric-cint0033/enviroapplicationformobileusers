// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'waste_type_model.freezed.dart';
part 'waste_type_model.g.dart';

@freezed
class WasteTypeModel with _$WasteTypeModel {
  factory WasteTypeModel({
    num? id,
    @JsonKey(name: 'waste_type_str') dynamic wasteTypeStr,
    bool? hidden,
    @JsonKey(name: 'original_name') String? originalName,
  }) = _WasteTypeModel;

  factory WasteTypeModel.fromJson(Map<String, dynamic> json) =>
      _$WasteTypeModelFromJson(json);
}
