import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales.freezed.dart';
part 'sales.g.dart';

@freezed
class Sales with _$Sales {
  factory Sales({
    bool? edit,
    bool? add,
    bool? delete,
    bool? view,
    bool? waste,
    bool? pumps,
    bool? hills,
    bool? destruction,
  }) = _Sales;

  factory Sales.fromJson(Map<String, dynamic> json) => _$SalesFromJson(json);
}
