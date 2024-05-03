// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attached_file.freezed.dart';
part 'attached_file.g.dart';

@freezed
class AttachedFile with _$AttachedFile {
  factory AttachedFile({
    num? id,
    String? url,
    String? type,
    String? name,
    @JsonKey(name: 'file_name') dynamic fileName,
    @JsonKey(name: 'template_html') String? templateHtml,
  }) = _AttachedFile;

  factory AttachedFile.fromJson(Map<String, dynamic> json) =>
      _$AttachedFileFromJson(json);
}
