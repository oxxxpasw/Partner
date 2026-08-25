// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendista_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendistaRequest _$VendistaRequestFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_VendistaRequest', json, ($defaultConvert) {
      final val = _VendistaRequest(
        code: $defaultConvert('code', (v) => v as String),
        date: $defaultConvert('date', (v) => DateTime.parse(v as String)),
        idVendista: $defaultConvert('id_vendista', (v) => (v as num).toInt()),
        status: $defaultConvert(
          'status',
          (v) => $enumDecode(_$VendistaRequestStatusEnumMap, v),
        ),
      );
      return val;
    }, fieldKeyMap: const {'idVendista': 'id_vendista'});

Map<String, dynamic> _$VendistaRequestToJson(_VendistaRequest instance) =>
    <String, dynamic>{
      'code': instance.code,
      'date': instance.date.toIso8601String(),
      'id_vendista': instance.idVendista,
      'status': _$VendistaRequestStatusEnumMap[instance.status]!,
    };

const _$VendistaRequestStatusEnumMap = {
  VendistaRequestStatus.underReview: 'underReview',
  VendistaRequestStatus.rejected: 'rejected',
  VendistaRequestStatus.verified: 'verified',
  VendistaRequestStatus.dataSent: 'dataSent',
  VendistaRequestStatus.closed: 'closed',
  VendistaRequestStatus.unknown: 'unknown',
};
