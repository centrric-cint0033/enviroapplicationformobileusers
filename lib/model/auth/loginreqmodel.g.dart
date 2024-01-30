// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginreqmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginReqModelImpl _$$LoginReqModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginReqModelImpl(
      username: json['username'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$LoginReqModelImplToJson(_$LoginReqModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  return val;
}
