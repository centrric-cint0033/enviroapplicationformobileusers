import 'package:freezed_annotation/freezed_annotation.dart';

import 'designation.dart';

part 'team_designtion_res_model.freezed.dart';
part 'team_designtion_res_model.g.dart';

@freezed
class TeamDesigntionResModel with _$TeamDesigntionResModel {
  factory TeamDesigntionResModel({
    List<Designation>? designations,
  }) = _TeamDesigntionResModel;

  factory TeamDesigntionResModel.fromJson(Map<String, dynamic> json) =>
      _$TeamDesigntionResModelFromJson(json);
}
