import 'package:freezed_annotation/freezed_annotation.dart';

import 'folder.dart';

part 'folder.freezed.dart';
part 'folder.g.dart';

@freezed
class Folder with _$Folder {
  factory Folder({
    String? type,
    List<dynamic>? files,
    List<Folder>? folders,
  }) = _Folder;

  factory Folder.fromJson(Map<String, dynamic> json) => _$FolderFromJson(json);
}
