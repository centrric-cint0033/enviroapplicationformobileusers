import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_employee.freezed.dart';
part 'team_employee.g.dart';

@freezed
class TeamEmployee with _$TeamEmployee {
  factory TeamEmployee({
    num? id,
    String? name,
    String? dp,
  }) = _TeamEmployee;

  factory TeamEmployee.fromJson(Map<String, dynamic> json) =>
      _$TeamEmployeeFromJson(json);
}
