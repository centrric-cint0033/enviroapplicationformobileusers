import 'package:freezed_annotation/freezed_annotation.dart';
part 'folder_model.freezed.dart';
part 'folder_model.g.dart';

@freezed
class FolderListModel with _$FolderListModel {
  const factory FolderListModel({
    List<FolderModel>? folders,
  }) = _FolderListModel;

  factory FolderListModel.fromJson(Map<String, dynamic> json) =>
      _$FolderListModelFromJson(json);
}

@freezed
class FolderModel with _$FolderModel {
  const factory FolderModel({
    int? id,
    String? name,
    String? type,
    String? url,
    List<FolderModel>? files,
    List<FolderModel>? folders,
    dynamic expiryDate,
  }) = _FolderModel;

  factory FolderModel.fromJson(Map<String, dynamic> json) =>
      _$FolderModelFromJson(json);
}
