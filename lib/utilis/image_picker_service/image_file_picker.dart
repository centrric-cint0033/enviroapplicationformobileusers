// ignore_for_file: deprecated_member_use, invalid_annotation_target

import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'image_file_picker.freezed.dart';
part 'image_file_picker.g.dart';

@LazySingleton()
class ImagePickerService {
  ImagePicker picker = ImagePicker();

  Future<ImageFilePickerModel?> imagePicker(
      {ImageSource source = ImageSource.gallery}) async {
    XFile? imageFile = await picker.pickImage(
      source: source,
      imageQuality: 50,
      maxHeight: 1080,
      maxWidth: 1080,
    );

    var imageBytes = await imageFile?.readAsBytes();

    return imageFile != null
        ? ImageFilePickerModel(
            imageUint8List: imageBytes,
            imagePath: imageFile.path,
            imageFileName: imageFile.name,
          )
        : null;
  }

  // Future<ImageFilePickerModel?> pickFiles() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowCompression: true,
  //     allowedExtensions: ['pdf'],
  //   );

  //   if (result != null && result.files.single.path != null) {
  //     File file = File(result.files.single.path!);
  //     var fileBytes = await file.readAsBytes();
  //     return ImageFilePickerModel(
  //       imageUint8List: fileBytes,
  //       fileName: result.files.single.name,
  //     );
  //   } else {
  //     // User canceled the picker
  //     return null;
  //   }
  // }
}

// @freezed
// class ImageFilePickerModel {
//   bool? primary;
//   String? imageUrl;
//   String? fileName;
//   String? imagePath;
//   String? imageUUID;
//   String? imageFileName;
//   Uint8List? imageUint8List;
//   ImageFilePickerModel({
//     this.primary,
//     this.fileName,
//     this.imageUrl,
//     this.imagePath,
//     this.imageUUID,
//     this.imageFileName,
//     this.imageUint8List,
//   });
// }

@freezed
class ImageFilePickerModel with _$ImageFilePickerModel {
  factory ImageFilePickerModel({
    bool? primary,
    String? imageUrl,
    String? fileName,
    String? imagePath,
    String? imageUUID,
    String? imageFileName,
    @JsonKey(ignore: true, required: false) Uint8List? imageUint8List,
  }) = _ImageFilePickerModel;

  factory ImageFilePickerModel.fromJson(Map<String, dynamic> json) =>
      _$ImageFilePickerModelFromJson(json);
}
