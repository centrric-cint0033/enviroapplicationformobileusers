import 'package:freezed_annotation/freezed_annotation.dart';

part 'site.freezed.dart';
part 'site.g.dart';

@freezed
class Site with _$Site {
  factory Site({
    bool? edit,
    bool? add,
    bool? delete,
    bool? view,
    bool? waste,
    bool? pumps,
    bool? hills,
    bool? destruction,
  }) = _Site;

  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);
}
