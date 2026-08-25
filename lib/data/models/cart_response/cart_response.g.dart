// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerApiRequest _$CustomerApiRequestFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_CustomerApiRequest', json, ($defaultConvert) {
      final val = _CustomerApiRequest(
        date: $defaultConvert('date', (v) => DateTime.parse(v as String)),
        summ: $defaultConvert('summ', (v) => (v as num).toDouble()),
        summWithoutDiscount: $defaultConvert(
          'summWithoutDiscount',
          (v) => (v as num).toDouble(),
        ),
        storeId: $defaultConvert('storeId', (v) => v as String),
        token: $defaultConvert('token', (v) => v as String?),
        positions: $defaultConvert(
          'positions',
          (v) => (v as List<dynamic>)
              .map((e) => PurchasePosition.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        bonusesSumm: $defaultConvert(
          'bonusesSumm',
          (v) => (v as num?)?.toDouble() ?? 0.0,
          defaultValue: 0.0,
        ),
      );
      return val;
    });

Map<String, dynamic> _$CustomerApiRequestToJson(_CustomerApiRequest instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'summ': instance.summ,
      'summWithoutDiscount': instance.summWithoutDiscount,
      'storeId': instance.storeId,
      'token': instance.token,
      'positions': instance.positions.map((e) => e.toJson()).toList(),
      'bonusesSumm': instance.bonusesSumm,
    };
