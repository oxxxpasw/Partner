// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LinkCardRequestToJson(_LinkCardRequest instance) =>
    <String, dynamic>{
      'sub_id': instance.subId,
      'payment_type': instance.paymentType,
      'token': instance.token,
    };

_LinkCardResponse _$LinkCardResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_LinkCardResponse', json, ($defaultConvert) {
      final val = _LinkCardResponse(
        data: $defaultConvert(
          'data',
          (v) => v == null ? null : Uri.parse(v as String),
        ),
        message: $defaultConvert('message', (v) => v as String?),
        status: $defaultConvert('status', (v) => v as String?),
      );
      return val;
    });
