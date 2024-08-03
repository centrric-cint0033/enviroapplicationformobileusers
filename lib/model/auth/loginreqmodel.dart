// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'loginreqmodel.freezed.dart';
part 'loginreqmodel.g.dart';

@freezed
class LoginReqModel with _$LoginReqModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory LoginReqModel({
    @JsonKey(name: "username", includeToJson: true) String? username,
    @JsonKey(name: "password", includeToJson: true) String? password,
  }) = _LoginReqModel;

  factory LoginReqModel.fromJson(Map<String, dynamic> json) =>
      _$LoginReqModelFromJson(json);
}
