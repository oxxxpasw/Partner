// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetricsResponse _$MetricsResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_MetricsResponse', json, ($defaultConvert) {
      final val = _MetricsResponse(
        data: $defaultConvert(
          'data',
          (v) => (v as List<dynamic>)
              .map(
                (e) => MetricItemResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$MetricsResponseToJson(_MetricsResponse instance) =>
    <String, dynamic>{'data': instance.data.map((e) => e.toJson()).toList()};

_MetricItemResponse _$MetricItemResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_MetricItemResponse', json, ($defaultConvert) {
      final val = _MetricItemResponse(
        divisionId: $defaultConvert('divisionId', (v) => v as String),
        divisionName: $defaultConvert('divisionName', (v) => v as String),
        id: $defaultConvert('id', (v) => v as String),
        title: $defaultConvert('title', (v) => v as String),
        unitOfMeasurement: $defaultConvert(
          'unitOfMeasurement',
          (v) => v as String,
        ),
        fact: $defaultConvert('fact', (v) => (v as num?)?.toDouble()),
        lfl: $defaultConvert('lfl', (v) => (v as num?)?.toDouble()),
        plan: $defaultConvert('plan', (v) => (v as num?)?.toDouble()),
        difference: $defaultConvert('difference', (v) => (v as num).toDouble()),
        destinationType: $defaultConvert(
          'destinationType',
          (v) =>
              $enumDecodeNullable(
                _$DestinationTypeResponseEnumMap,
                v,
                unknownValue: DestinationTypeResponse.unknown,
              ) ??
              DestinationTypeResponse.unknown,
          defaultValue: DestinationTypeResponse.unknown,
        ),
        method: $defaultConvert('method', (v) => v as String),
        S: $defaultConvert('S', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$MetricItemResponseToJson(_MetricItemResponse instance) =>
    <String, dynamic>{
      'divisionId': instance.divisionId,
      'divisionName': instance.divisionName,
      'id': instance.id,
      'title': instance.title,
      'unitOfMeasurement': instance.unitOfMeasurement,
      'fact': instance.fact,
      'lfl': instance.lfl,
      'plan': instance.plan,
      'difference': instance.difference,
      'destinationType':
          _$DestinationTypeResponseEnumMap[instance.destinationType]!,
      'method': instance.method,
      'S': instance.S,
    };

const _$DestinationTypeResponseEnumMap = {
  DestinationTypeResponse.coffeeMachine: 0,
  DestinationTypeResponse.fridge: 1,
  DestinationTypeResponse.total: 2,
  DestinationTypeResponse.unknown: 'unknown',
};
