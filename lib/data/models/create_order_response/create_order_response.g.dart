// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_CreateOrderResponse', json, ($defaultConvert) {
      final val = _CreateOrderResponse(
        publicId: $defaultConvert('public_id', (v) => v as String?),
        orderId: $defaultConvert('order_id', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'publicId': 'public_id', 'orderId': 'order_id'});

Map<String, dynamic> _$CreateOrderResponseToJson(
  _CreateOrderResponse instance,
) => <String, dynamic>{
  'public_id': instance.publicId,
  'order_id': instance.orderId,
};
