// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendista_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateVendistaRequestBody _$CreateVendistaRequestBodyFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_CreateVendistaRequestBody', json, ($defaultConvert) {
  final val = _CreateVendistaRequestBody(
    login: $defaultConvert('login', (v) => v as String),
    password: $defaultConvert('password', (v) => v as String),
    token: $defaultConvert('token', (v) => v as String),
    idVendista: $defaultConvert(
      'idVendista',
      (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateVendistaRequestBodyToJson(
  _CreateVendistaRequestBody instance,
) => <String, dynamic>{
  'login': instance.login,
  'password': instance.password,
  'token': instance.token,
  'idVendista': instance.idVendista,
};

_VendistaTerminalsBody _$VendistaTerminalsBodyFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_VendistaTerminalsBody', json, ($defaultConvert) {
  final val = _VendistaTerminalsBody(
    login: $defaultConvert('login', (v) => v as String),
    password: $defaultConvert('password', (v) => v as String),
    token: $defaultConvert('token', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$VendistaTerminalsBodyToJson(
  _VendistaTerminalsBody instance,
) => <String, dynamic>{
  'login': instance.login,
  'password': instance.password,
  'token': instance.token,
};
