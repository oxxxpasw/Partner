// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_units_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DivisionUnitsResponse _$DivisionUnitsResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_DivisionUnitsResponse', json, ($defaultConvert) {
  final val = _DivisionUnitsResponse(
    division: $defaultConvert(
      'division',
      (v) => DivisionResponse.fromJson(v as Map<String, dynamic>),
    ),
    data: $defaultConvert(
      'data',
      (v) => (v as List<dynamic>)
          .map(
            (e) => DivisionUnitItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$DivisionUnitsResponseToJson(
  _DivisionUnitsResponse instance,
) => <String, dynamic>{
  'division': instance.division.toJson(),
  'data': instance.data.map((e) => e.toJson()).toList(),
};

_DivisionUnitItemResponse _$DivisionUnitItemResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_DivisionUnitItemResponse', json, ($defaultConvert) {
  final val = _DivisionUnitItemResponse(
    unitId: $defaultConvert('unitId', (v) => v as String),
    unitName: $defaultConvert('unitName', (v) => v as String),
    isOpen: $defaultConvert('isOpen', (v) => v as bool),
    start: $defaultConvert(
      'start',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    end: $defaultConvert(
      'end',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    type: $defaultConvert('type', (v) => v as String),
    address: $defaultConvert('address', (v) => v as String?),
    destinationType: $defaultConvert(
      'destinationType',
      (v) => $enumDecodeNullable(
        _$DestinationTypeResponseEnumMap,
        v,
        unknownValue: JsonKey.nullForUndefinedEnumValue,
      ),
    ),
    lastConnection: $defaultConvert('lastConnection', (v) => v as String?),
    lastTemperature: $defaultConvert(
      'lastTemperature',
      (v) => (v as num?)?.toDouble(),
    ),
  );
  return val;
});

Map<String, dynamic> _$DivisionUnitItemResponseToJson(
  _DivisionUnitItemResponse instance,
) => <String, dynamic>{
  'unitId': instance.unitId,
  'unitName': instance.unitName,
  'isOpen': instance.isOpen,
  'start': instance.start?.toIso8601String(),
  'end': instance.end?.toIso8601String(),
  'type': instance.type,
  'address': instance.address,
  'destinationType': _$DestinationTypeResponseEnumMap[instance.destinationType],
  'lastConnection': instance.lastConnection,
  'lastTemperature': instance.lastTemperature,
};

const _$DestinationTypeResponseEnumMap = {
  DestinationTypeResponse.coffeeMachine: 0,
  DestinationTypeResponse.fridge: 1,
  DestinationTypeResponse.total: 2,
  DestinationTypeResponse.unknown: 'unknown',
};
