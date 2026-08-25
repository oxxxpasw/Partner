// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendista_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendistaRequestItemResponse _$VendistaRequestItemResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_VendistaRequestItemResponse', json, ($defaultConvert) {
  final val = _VendistaRequestItemResponse(
    code: $defaultConvert('code', (v) => v as String),
    date: $defaultConvert('date', (v) => DateTime.parse(v as String)),
    idVendista: $defaultConvert('idVendista', (v) => (v as num).toInt()),
    status: $defaultConvert(
      'status',
      (v) =>
          $enumDecodeNullable(
            _$VendistaRequestStatusResponseEnumMap,
            v,
            unknownValue: VendistaRequestStatusResponse.unknown,
          ) ??
          VendistaRequestStatusResponse.unknown,
      defaultValue: VendistaRequestStatusResponse.unknown,
    ),
  );
  return val;
});

Map<String, dynamic> _$VendistaRequestItemResponseToJson(
  _VendistaRequestItemResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'date': instance.date.toIso8601String(),
  'idVendista': instance.idVendista,
  'status': _$VendistaRequestStatusResponseEnumMap[instance.status]!,
};

const _$VendistaRequestStatusResponseEnumMap = {
  VendistaRequestStatusResponse.underReview: 'На рассмотрении',
  VendistaRequestStatusResponse.rejected: 'Отклонена',
  VendistaRequestStatusResponse.verified: 'Прошла проверку',
  VendistaRequestStatusResponse.dataSent: 'Данные отправлены',
  VendistaRequestStatusResponse.closed: 'Закрыта',
  VendistaRequestStatusResponse.unknown: 'unknown',
};
