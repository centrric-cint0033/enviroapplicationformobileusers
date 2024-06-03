// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'designation.freezed.dart';
part 'designation.g.dart';

@freezed
class Designation with _$Designation {
  factory Designation({
    @JsonKey(name: 'user_type') String? userType,
  }) = _Designation;

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);
}
