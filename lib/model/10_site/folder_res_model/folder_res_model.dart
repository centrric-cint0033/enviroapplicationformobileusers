import 'package:freezed_annotation/freezed_annotation.dart';

part 'folder_res_model.freezed.dart';
part 'folder_res_model.g.dart';

@freezed
class FolderResModel with _$FolderResModel {
  factory FolderResModel({
    List<FolderListModel>? folders,
  }) = _FolderResModel;

  factory FolderResModel.fromJson(Map<String, dynamic> json) =>
      _$FolderResModelFromJson(json);
}

@freezed
class FolderListModel with _$FolderListModel {
  factory FolderListModel({
    String? type,
    List<dynamic>? files,
    List<Folder>? folders,
  }) = _FolderListModel;

  factory FolderListModel.fromJson(Map<String, dynamic> json) =>
      _$FolderListModelFromJson(json);
}

@freezed
class Folder with _$Folder {
  factory Folder({
    int? id,
    String? name,
    String? type,
  }) = _Folder;

  factory Folder.fromJson(Map<String, dynamic> json) => _$FolderFromJson(json);
}
