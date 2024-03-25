import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'oh&snews_fldr_model.freezed.dart';
part 'oh&snews_fldr_model.g.dart';

OhsNewsfldrRespModel ohsNewsfldrRespModelFromJson(String str) =>
    OhsNewsfldrRespModel.fromJson(json.decode(str));

String ohsNewsfldrRespModelToJson(OhsNewsfldrRespModel data) =>
    json.encode(data.toJson());

@freezed
class OhsNewsfldrRespModel with _$OhsNewsfldrRespModel {
  const factory OhsNewsfldrRespModel({
    required List<OhsNewsfldrRespModelFolder> folders,
  }) = _OhsNewsfldrRespModel;

  factory OhsNewsfldrRespModel.fromJson(Map<String, dynamic> json) =>
      _$OhsNewsfldrRespModelFromJson(json);
}

@freezed
class OhsNewsfldrRespModelFolder with _$OhsNewsfldrRespModelFolder {
  const factory OhsNewsfldrRespModelFolder({
    required String type,
    required List<FileElement> files,
    required List<FolderFolder> folders,
  }) = _OhsNewsfldrRespModelFolder;

  factory OhsNewsfldrRespModelFolder.fromJson(Map<String, dynamic> json) =>
      _$OhsNewsfldrRespModelFolderFromJson(json);
}

@freezed
class FileElement with _$FileElement {
  const factory FileElement({
    required int id,
    required String name,
    required String url,
    required dynamic expiryDate,
  }) = _FileElement;

  factory FileElement.fromJson(Map<String, dynamic> json) =>
      _$FileElementFromJson(json);
}

@freezed
class FolderFolder with _$FolderFolder {
  const factory FolderFolder({
    required int id,
    required String name,
    required String type,
  }) = _FolderFolder;

  factory FolderFolder.fromJson(Map<String, dynamic> json) =>
      _$FolderFolderFromJson(json);
}
