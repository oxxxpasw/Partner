// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DivisionsResponse _$DivisionsResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_DivisionsResponse', json, ($defaultConvert) {
      final val = _DivisionsResponse(
        data: $defaultConvert(
          'data',
          (v) => (v as List<dynamic>)
              .map((e) => DivisionResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DivisionsResponseToJson(_DivisionsResponse instance) =>
    <String, dynamic>{'data': instance.data.map((e) => e.toJson()).toList()};

_DivisionResponse _$DivisionResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_DivisionResponse', json, ($defaultConvert) {
      final val = _DivisionResponse(
        divisionId: $defaultConvert('divisionId', (v) => v as String),
        divisionName: $defaultConvert('divisionName', (v) => v as String),
        isOpen: $defaultConvert('isOpen', (v) => v as bool),
        menuFileName: $defaultConvert('menuFileName', (v) => v as String),
        address: $defaultConvert('address', (v) => v as String?),
        status: $defaultConvert(
          'borderStatus',
          (v) =>
              $enumDecodeNullable(
                _$DivisionResponseStatusEnumMap,
                v,
                unknownValue: DivisionResponseStatus.disabled,
              ) ??
              DivisionResponseStatus.disabled,
          defaultValue: DivisionResponseStatus.disabled,
        ),
      );
      return val;
    }, fieldKeyMap: const {'status': 'borderStatus'});

Map<String, dynamic> _$DivisionResponseToJson(_DivisionResponse instance) =>
    <String, dynamic>{
      'divisionId': instance.divisionId,
      'divisionName': instance.divisionName,
      'isOpen': instance.isOpen,
      'menuFileName': instance.menuFileName,
      'address': instance.address,
      'borderStatus': _$DivisionResponseStatusEnumMap[instance.status]!,
    };

const _$DivisionResponseStatusEnumMap = {
  DivisionResponseStatus.enabled: 1,
  DivisionResponseStatus.disabled: 0,
};
