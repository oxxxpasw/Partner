// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnitTemperature _$UnitTemperatureFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_UnitTemperature', json, ($defaultConvert) {
      final val = _UnitTemperature(
        createdDatetime: $defaultConvert(
          'created_datetime',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        temperature: $defaultConvert(
          'temperature',
          (v) => (v as num?)?.toDouble(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'createdDatetime': 'created_datetime'});

Map<String, dynamic> _$UnitTemperatureToJson(_UnitTemperature instance) =>
    <String, dynamic>{
      'created_datetime': instance.createdDatetime?.toIso8601String(),
      'temperature': instance.temperature,
    };
