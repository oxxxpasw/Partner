// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fridge_stock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FridgeStockItemDto _$FridgeStockItemDtoFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_FridgeStockItemDto', json, ($defaultConvert) {
      final val = _FridgeStockItemDto(
        productId: $defaultConvert('product_id', (v) => v as String),
        name: $defaultConvert('name', (v) => v as String),
        barcode: $defaultConvert('barcode', (v) => v as String),
        price: $defaultConvert(
          'price',
          (v) => (v as num?)?.toDouble() ?? 0,
          defaultValue: 0,
        ),
        quantity: $defaultConvert(
          'quantity',
          (v) => (v as num?)?.toDouble() ?? 0,
          defaultValue: 0,
        ),
      );
      return val;
    }, fieldKeyMap: const {'productId': 'product_id'});

Map<String, dynamic> _$FridgeStockItemDtoToJson(_FridgeStockItemDto instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'barcode': instance.barcode,
      'price': instance.price,
      'quantity': instance.quantity,
    };

_FridgeStockResponse _$FridgeStockResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_FridgeStockResponse', json, ($defaultConvert) {
      final val = _FridgeStockResponse(
        device: $defaultConvert(
          'device',
          (v) => FridgeStockDeviceDto.fromJson(v as Map<String, dynamic>),
        ),
        items: $defaultConvert(
          'items',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) =>
                        FridgeStockItemDto.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const [],
          defaultValue: const [],
        ),
      );
      return val;
    });

Map<String, dynamic> _$FridgeStockResponseToJson(
  _FridgeStockResponse instance,
) => <String, dynamic>{
  'device': instance.device.toJson(),
  'items': instance.items.map((e) => e.toJson()).toList(),
};

_FridgeStockDeviceDto _$FridgeStockDeviceDtoFromJson(
  Map<String, dynamic> json,
) => $defaultCreate(
  '_FridgeStockDeviceDto',
  json,
  ($defaultConvert) {
    final val = _FridgeStockDeviceDto(
      id: $defaultConvert('id', (v) => v as String),
      name: $defaultConvert(
        'name',
        (v) => v as String? ?? '',
        defaultValue: '',
      ),
      mqttId: $defaultConvert('mqtt_id', (v) => v as String?),
      storeId: $defaultConvert('store_id', (v) => v as String?),
      storeName: $defaultConvert('store_name', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'mqttId': 'mqtt_id',
    'storeId': 'store_id',
    'storeName': 'store_name',
  },
);

Map<String, dynamic> _$FridgeStockDeviceDtoToJson(
  _FridgeStockDeviceDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'mqtt_id': instance.mqttId,
  'store_id': instance.storeId,
  'store_name': instance.storeName,
};

_FridgeStockMovementDto _$FridgeStockMovementDtoFromJson(
  Map<String, dynamic> json,
) => $defaultCreate(
  '_FridgeStockMovementDto',
  json,
  ($defaultConvert) {
    final val = _FridgeStockMovementDto(
      id: $defaultConvert('id', (v) => v as String),
      kind: $defaultConvert(
        'kind',
        (v) => v as String? ?? 'inventory',
        defaultValue: 'inventory',
      ),
      productName: $defaultConvert('product_name', (v) => v as String?),
      quantity: $defaultConvert(
        'quantity',
        (v) => (v as num?)?.toDouble() ?? 0,
        defaultValue: 0,
      ),
      note: $defaultConvert('note', (v) => v as String?),
      createdAt: $defaultConvert('created_at', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'productName': 'product_name', 'createdAt': 'created_at'},
);

Map<String, dynamic> _$FridgeStockMovementDtoToJson(
  _FridgeStockMovementDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'kind': instance.kind,
  'product_name': instance.productName,
  'quantity': instance.quantity,
  'note': instance.note,
  'created_at': instance.createdAt,
};
