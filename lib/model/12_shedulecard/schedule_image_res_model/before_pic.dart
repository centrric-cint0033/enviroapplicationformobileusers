import 'package:freezed_annotation/freezed_annotation.dart';

part 'before_pic.freezed.dart';
part 'before_pic.g.dart';

@freezed
class BeforePic with _$BeforePic {
  factory BeforePic({
    num? id,
    String? file,
    @JsonKey(name: 'created_date_time') DateTime? createdDateTime,
    @JsonKey(name: 'edited_date_time') DateTime? editedDateTime,
  }) = _BeforePic;

  factory BeforePic.fromJson(Map<String, dynamic> json) =>
      _$BeforePicFromJson(json);
}
