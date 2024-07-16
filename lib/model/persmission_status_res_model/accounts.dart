import 'package:freezed_annotation/freezed_annotation.dart';

part 'accounts.freezed.dart';
part 'accounts.g.dart';

@freezed
class Accounts with _$Accounts {
  factory Accounts({
    bool? edit,
    bool? add,
    bool? delete,
    bool? view,
    bool? waste,
    bool? pumps,
    bool? hills,
    bool? destruction,
  }) = _Accounts;

  factory Accounts.fromJson(Map<String, dynamic> json) =>
      _$AccountsFromJson(json);
}
