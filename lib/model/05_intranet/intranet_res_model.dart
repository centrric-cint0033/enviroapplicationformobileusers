import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'intranet_res_model.freezed.dart';
part 'intranet_res_model.g.dart';

intranetfldrRespModel intranetfldrRespModelFromJson(String str) =>
    intranetfldrRespModel.fromJson(json.decode(str));

String intranetfldrRespModelToJson(intranetfldrRespModel data) =>
    json.encode(data.toJson());

@freezed
class intranetfldrRespModel with _$intranetfldrRespModel {
  const factory intranetfldrRespModel({
    required List<intranetfldrRespModelFolder> folders,
  }) = _intranetfldrRespModel;

  factory intranetfldrRespModel.fromJson(Map<String, dynamic> json) =>
      _$intranetfldrRespModelFromJson(json);
}

@freezed
class intranetfldrRespModelFolder with _$intranetfldrRespModelFolder {
  const factory intranetfldrRespModelFolder({
    required String type,
    required List<FileElement> files,
    required List<FolderFolder> folders,
  }) = _intranetfldrRespModelFolder;

  factory intranetfldrRespModelFolder.fromJson(Map<String, dynamic> json) =>
      _$intranetfldrRespModelFolderFromJson(json);
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
