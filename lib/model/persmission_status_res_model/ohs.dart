import 'package:freezed_annotation/freezed_annotation.dart';

part 'ohs.freezed.dart';
part 'ohs.g.dart';

@freezed
class Ohs with _$Ohs {
  factory Ohs({
    bool? edit,
    bool? add,
    bool? delete,
    bool? view,
    bool? waste,
    bool? pumps,
    bool? hills,
    bool? destruction,
  }) = _Ohs;

  factory Ohs.fromJson(Map<String, dynamic> json) => _$OhsFromJson(json);
}
