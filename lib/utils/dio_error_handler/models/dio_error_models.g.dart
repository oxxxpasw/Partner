// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_error_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DefaultApiError _$DefaultApiErrorFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_DefaultApiError', json, ($defaultConvert) {
      final val = _DefaultApiError(
        msg: $defaultConvert('msg', (v) => v as String),
        code: $defaultConvert('code', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$DefaultApiErrorToJson(_DefaultApiError instance) =>
    <String, dynamic>{'msg': instance.msg, 'code': instance.code};
