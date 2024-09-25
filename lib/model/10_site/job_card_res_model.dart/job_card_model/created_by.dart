import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_by.freezed.dart';
part 'created_by.g.dart';

@freezed
class CreatedBy with _$CreatedBy {
  factory CreatedBy({
    String? name,
    String? dp,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'contact_number') String? contactNumber,
  }) = _CreatedBy;

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
}
