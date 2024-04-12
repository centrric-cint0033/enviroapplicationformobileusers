import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_create_folder_req_model.freezed.dart';
part 'team_create_folder_req_model.g.dart';

@freezed
class TeamCreateFolderReqModel with _$TeamCreateFolderReqModel {
  factory TeamCreateFolderReqModel({
    required String? name,
    required num? employee,
    required int? parent_folder,
  }) = _TeamCreateFolderReqModel;

  factory TeamCreateFolderReqModel.fromJson(Map<String, dynamic> json) =>
      _$TeamCreateFolderReqModelFromJson(json);
}
