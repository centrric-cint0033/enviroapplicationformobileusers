import 'package:freezed_annotation/freezed_annotation.dart';

part 'intranet.freezed.dart';
part 'intranet.g.dart';

@freezed
class Intranet with _$Intranet {
  factory Intranet({
    bool? edit,
    bool? add,
    bool? delete,
    bool? view,
    bool? waste,
    bool? pumps,
    bool? hills,
    bool? destruction,
  }) = _Intranet;

  factory Intranet.fromJson(Map<String, dynamic> json) =>
      _$IntranetFromJson(json);
}
