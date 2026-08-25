// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConnectionStatus _$ConnectionStatusFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ConnectionStatus', json, ($defaultConvert) {
      final val = _ConnectionStatus(
        createdDatetime: $defaultConvert(
          'created_datetime',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        status: $defaultConvert('status', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'createdDatetime': 'created_datetime'});

Map<String, dynamic> _$ConnectionStatusToJson(_ConnectionStatus instance) =>
    <String, dynamic>{
      'created_datetime': instance.createdDatetime?.toIso8601String(),
      'status': instance.status,
    };
