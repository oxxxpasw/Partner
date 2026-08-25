// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sbp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SbpBankResponse _$SbpBankResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_SbpBankResponse', json, ($defaultConvert) {
      final val = _SbpBankResponse(
        bankName: $defaultConvert('bankName', (v) => v as String?),
        logoURL: $defaultConvert(
          'logoURL',
          (v) => v == null ? null : Uri.parse(v as String),
        ),
        schema: $defaultConvert('schema', (v) => v as String?),
        packageName: $defaultConvert('package_name', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'packageName': 'package_name'});

Map<String, dynamic> _$SbpBankResponseToJson(_SbpBankResponse instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'logoURL': instance.logoURL?.toString(),
      'schema': instance.schema,
      'package_name': instance.packageName,
    };

_SbpResponse _$SbpResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_SbpResponse', json, ($defaultConvert) {
      final val = _SbpResponse(
        version: $defaultConvert('version', (v) => v as String?),
        dictionary: $defaultConvert(
          'dictionary',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) => SbpBankResponse.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const [],
          defaultValue: const [],
        ),
      );
      return val;
    });

Map<String, dynamic> _$SbpResponseToJson(_SbpResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'dictionary': instance.dictionary.map((e) => e.toJson()).toList(),
    };
