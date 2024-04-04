import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_res_model.freezed.dart';
part 'team_res_model.g.dart';

@freezed
class TeamResModel with _$TeamResModel {
  factory TeamResModel({
    num? id,
    @JsonKey(name: 'employee_id') num? employeeId,
    String? name,
    @JsonKey(name: 'dp_thumbnail') String? dpThumbnail,
  }) = _TeamResModel;

  factory TeamResModel.fromJson(Map<String, dynamic> json) =>
      _$TeamResModelFromJson(json);
}
