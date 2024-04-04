import 'package:freezed_annotation/freezed_annotation.dart';

import 'folder.dart';

part 'team_folder_res_model.freezed.dart';
part 'team_folder_res_model.g.dart';

@freezed
class TeamFolderResModel with _$TeamFolderResModel {
  factory TeamFolderResModel({
    List<Folder>? folders,
  }) = _TeamFolderResModel;

  factory TeamFolderResModel.fromJson(Map<String, dynamic> json) =>
      _$TeamFolderResModelFromJson(json);
}
