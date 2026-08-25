// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_quantity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreQuantity _$StoreQuantityFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_StoreQuantity', json, ($defaultConvert) {
      final val = _StoreQuantity(
        storeId: $defaultConvert('storeId', (v) => v as String),
        quantity: $defaultConvert('quantity', (v) => (v as num?)?.toDouble()),
        quantityText: $defaultConvert('quantityText', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$StoreQuantityToJson(_StoreQuantity instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'quantity': instance.quantity,
      'quantityText': instance.quantityText,
    };
