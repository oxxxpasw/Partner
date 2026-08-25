// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_period_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetricPeriodResponse _$MetricPeriodResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_MetricPeriodResponse', json, ($defaultConvert) {
  final val = _MetricPeriodResponse(
    defaultItem: $defaultConvert('default', (v) => (v as num).toInt()),
    items: $defaultConvert(
      'types',
      (v) => (v as List<dynamic>)
          .map(
            (e) => MetricPeriodItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
}, fieldKeyMap: const {'defaultItem': 'default', 'items': 'types'});

Map<String, dynamic> _$MetricPeriodResponseToJson(
  _MetricPeriodResponse instance,
) => <String, dynamic>{
  'default': instance.defaultItem,
  'types': instance.items.map((e) => e.toJson()).toList(),
};

_MetricPeriodItemResponse _$MetricPeriodItemResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_MetricPeriodItemResponse', json, ($defaultConvert) {
  final val = _MetricPeriodItemResponse(
    name: $defaultConvert('id', (v) => v as String),
    index: $defaultConvert('index', (v) => (v as num).toInt()),
  );
  return val;
}, fieldKeyMap: const {'name': 'id'});

Map<String, dynamic> _$MetricPeriodItemResponseToJson(
  _MetricPeriodItemResponse instance,
) => <String, dynamic>{'id': instance.name, 'index': instance.index};
