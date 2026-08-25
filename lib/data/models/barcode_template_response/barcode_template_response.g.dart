// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode_template_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BarcodeTemplatesResponse _$BarcodeTemplatesResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_BarcodeTemplatesResponse', json, ($defaultConvert) {
  final val = _BarcodeTemplatesResponse(
    templates: $defaultConvert(
      'templates',
      (v) => (v as List<dynamic>)
          .map(
            (e) => BarcodeTemplateResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$BarcodeTemplatesResponseToJson(
  _BarcodeTemplatesResponse instance,
) => <String, dynamic>{
  'templates': instance.templates.map((e) => e.toJson()).toList(),
};

_BarcodeTemplateResponse _$BarcodeTemplateResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_BarcodeTemplateResponse', json, ($defaultConvert) {
  final val = _BarcodeTemplateResponse(
    barcodeFormat: $defaultConvert(
      'barcodeFormat',
      (v) =>
          $enumDecodeNullable(
            _$BarcodeFormatResponseEnumMap,
            v,
            unknownValue: BarcodeFormatResponse.unknown,
          ) ??
          BarcodeFormatResponse.unknown,
      defaultValue: BarcodeFormatResponse.unknown,
    ),
    parts: $defaultConvert(
      'parts',
      (v) => (v as List<dynamic>)
          .map((e) => BarcodePartResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    name: $defaultConvert('name', (v) => v as String?),
    prefix: $defaultConvert('prefix', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$BarcodeTemplateResponseToJson(
  _BarcodeTemplateResponse instance,
) => <String, dynamic>{
  'barcodeFormat': _$BarcodeFormatResponseEnumMap[instance.barcodeFormat]!,
  'parts': instance.parts.map((e) => e.toJson()).toList(),
  'name': instance.name,
  'prefix': instance.prefix,
};

const _$BarcodeFormatResponseEnumMap = {
  BarcodeFormatResponse.ean13: 'EAN13',
  BarcodeFormatResponse.ean128: 'Code128',
  BarcodeFormatResponse.dataMatrix: 'Data matrix',
  BarcodeFormatResponse.ean8: 'EAN8',
  BarcodeFormatResponse.unknown: 'unknown',
};

_BarcodePartResponse _$BarcodePartResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_BarcodePartResponse', json, ($defaultConvert) {
      final val = _BarcodePartResponse(
        startPosition: $defaultConvert(
          'startPosition',
          (v) => (v as num).toInt(),
        ),
        endPosition: $defaultConvert('endPosition', (v) => (v as num).toInt()),
        length: $defaultConvert('length', (v) => (v as num).toInt()),
        type: $defaultConvert(
          'type',
          (v) =>
              $enumDecodeNullable(
                _$BarcodePartTypeResponseEnumMap,
                v,
                unknownValue: BarcodePartTypeResponse.unknown,
              ) ??
              BarcodePartTypeResponse.unknown,
          defaultValue: BarcodePartTypeResponse.unknown,
        ),
        applicationIdentifiers: $defaultConvert(
          'applicationIdentifiers',
          (v) => v as String?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$BarcodePartResponseToJson(
  _BarcodePartResponse instance,
) => <String, dynamic>{
  'startPosition': instance.startPosition,
  'endPosition': instance.endPosition,
  'length': instance.length,
  'type': _$BarcodePartTypeResponseEnumMap[instance.type]!,
  'applicationIdentifiers': instance.applicationIdentifiers,
};

const _$BarcodePartTypeResponseEnumMap = {
  BarcodePartTypeResponse.sku: 'SKU',
  BarcodePartTypeResponse.weightKg: 'weight-kg',
  BarcodePartTypeResponse.weightG: 'weight-g',
  BarcodePartTypeResponse.control: 'control',
  BarcodePartTypeResponse.gtin: 'GTIN / ШК',
  BarcodePartTypeResponse.expirationDateTime: 'Expiration date and time',
  BarcodePartTypeResponse.ddMMyy: 'ddMMyy',
  BarcodePartTypeResponse.hh: 'hh',
  BarcodePartTypeResponse.mm: 'mm',
  BarcodePartTypeResponse.unknown: 'unknown',
};
