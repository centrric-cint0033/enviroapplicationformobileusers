import 'package:freezed_annotation/freezed_annotation.dart';

import 'folder.dart';

part 'team_folder_resp_model.freezed.dart';
part 'team_folder_resp_model.g.dart';

@freezed
class TeamFolderRespModel with _$TeamFolderRespModel {
  factory TeamFolderRespModel({
    List<Folder>? folders,
  }) = _TeamFolderRespModel;

  factory TeamFolderRespModel.fromJson(Map<String, dynamic> json) =>
      _$TeamFolderRespModelFromJson(json);
}
