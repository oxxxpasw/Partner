// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'good.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Good _$GoodFromJson(Map<String, dynamic> json) => $defaultCreate(
  '_Good',
  json,
  ($defaultConvert) {
    final val = _Good(
      id: $defaultConvert('ID', (v) => v as String),
      price: $defaultConvert('Price', (v) => (v as num).toDouble()),
      oldPrice: $defaultConvert('OldPrice', (v) => (v as num?)?.toDouble()),
      isOnePlusOne: $defaultConvert(
        'IsOnePlusOne',
        (v) => v as bool? ?? false,
        readValue: covertIsOnePlusOne,
        defaultValue: false,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'id': 'ID',
    'price': 'Price',
    'oldPrice': 'OldPrice',
    'isOnePlusOne': 'IsOnePlusOne',
  },
);

Map<String, dynamic> _$GoodToJson(_Good instance) => <String, dynamic>{
  'ID': instance.id,
  'Price': instance.price,
  'OldPrice': instance.oldPrice,
  'IsOnePlusOne': instance.isOnePlusOne,
};
