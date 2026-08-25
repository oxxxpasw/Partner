// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportDataResponse _$ReportDataResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_ReportDataResponse', json, ($defaultConvert) {
  final val = _ReportDataResponse(
    options: $defaultConvert(
      'options',
      (v) => v == null
          ? null
          : ReportDataOptionsResponse.fromJson(v as Map<String, dynamic>),
    ),
    columns: $defaultConvert(
      'columns',
      (v) => (v as List<dynamic>)
          .map(
            (e) => ReportDataColumnResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    rows: $defaultConvert(
      'rows',
      (v) =>
          (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ReportDataResponseToJson(_ReportDataResponse instance) =>
    <String, dynamic>{
      'options': instance.options?.toJson(),
      'columns': instance.columns.map((e) => e.toJson()).toList(),
      'rows': instance.rows,
    };

_ReportDataOptionsResponse _$ReportDataOptionsResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_ReportDataOptionsResponse', json, ($defaultConvert) {
  final val = _ReportDataOptionsResponse(
    title: $defaultConvert('title', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ReportDataOptionsResponseToJson(
  _ReportDataOptionsResponse instance,
) => <String, dynamic>{'title': instance.title};

_ReportDataColumnResponse _$ReportDataColumnResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_ReportDataColumnResponse', json, ($defaultConvert) {
  final val = _ReportDataColumnResponse(
    key: $defaultConvert('key', (v) => v as String),
    title: $defaultConvert('title', (v) => v as String?),
    type: $defaultConvert(
      'type',
      (v) =>
          $enumDecodeNullable(
            _$ReportDataResponseDataTypeEnumMap,
            v,
            unknownValue: ReportDataResponseDataType.unknown,
          ) ??
          ReportDataResponseDataType.string,
      defaultValue: ReportDataResponseDataType.string,
    ),
    isVisible: $defaultConvert(
      'is_visible',
      (v) => v as bool? ?? true,
      defaultValue: true,
    ),
  );
  return val;
}, fieldKeyMap: const {'isVisible': 'is_visible'});

Map<String, dynamic> _$ReportDataColumnResponseToJson(
  _ReportDataColumnResponse instance,
) => <String, dynamic>{
  'key': instance.key,
  'title': instance.title,
  'type': _$ReportDataResponseDataTypeEnumMap[instance.type]!,
  'is_visible': instance.isVisible,
};

const _$ReportDataResponseDataTypeEnumMap = {
  ReportDataResponseDataType.string: 'string',
  ReportDataResponseDataType.number: 'number',
  ReportDataResponseDataType.unknown: 'unknown',
};
