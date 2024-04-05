import 'package:freezed_annotation/freezed_annotation.dart';
part 'folder.freezed.dart';
part 'folder.g.dart';

@freezed
class Folder with _$Folder {
  factory Folder(
      {String? type,
      List<dynamic>? files,
      List<Folder>? folders,
      int? id,
      String? name}) = _Folder;

  factory Folder.fromJson(Map<String, dynamic> json) => _$FolderFromJson(json);
}
