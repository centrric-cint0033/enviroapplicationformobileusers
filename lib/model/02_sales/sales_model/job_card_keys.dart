import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_card_keys.freezed.dart';
part 'job_card_keys.g.dart';

@freezed
class JobCardKeys with _$JobCardKeys {
  factory JobCardKeys({
    @JsonKey(name: 'site_address') String? siteAddress,
    String? capacity,
  }) = _JobCardKeys;

  factory JobCardKeys.fromJson(Map<String, dynamic> json) =>
      _$JobCardKeysFromJson(json);
}
