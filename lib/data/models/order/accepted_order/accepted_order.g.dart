// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accepted_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcceptedOrderResponse _$AcceptedOrderResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate(
  '_AcceptedOrderResponse',
  json,
  ($defaultConvert) {
    final val = _AcceptedOrderResponse(
      data: $defaultConvert(
        'data',
        (v) => AcceptedOrderResponseData.fromJson(v as Map<String, dynamic>),
      ),
      createdDatetime: $defaultConvert(
        'created_datetime',
        (v) => DateTime.parse(v as String),
      ),
      id: $defaultConvert('id', (v) => v as String),
      externalId: $defaultConvert('external_id', (v) => v as String?),
      publicId: $defaultConvert('public_id', (v) => v as String?),
      status: $defaultConvert(
        'status',
        (v) =>
            $enumDecodeNullable(
              _$OrderStatusEnumMap,
              v,
              unknownValue: OrderStatus.unknown,
            ) ??
            OrderStatus.unknown,
        defaultValue: OrderStatus.unknown,
      ),
      statusH: $defaultConvert(
        'status_h',
        (v) => v as String?,
        readValue: _readStatusH,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'createdDatetime': 'created_datetime',
    'externalId': 'external_id',
    'publicId': 'public_id',
    'statusH': 'status_h',
  },
);

Map<String, dynamic> _$AcceptedOrderResponseToJson(
  _AcceptedOrderResponse instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'created_datetime': instance.createdDatetime.toIso8601String(),
  'id': instance.id,
  'external_id': instance.externalId,
  'public_id': instance.publicId,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'status_h': instance.statusH,
};

const _$OrderStatusEnumMap = {
  OrderStatus.readyToStart: 'readyToStart',
  OrderStatus.paid: 'paid',
  OrderStatus.inProgress: 'inProgress',
  OrderStatus.complete: 'printedCheck',
  OrderStatus.cancel: 'cancel',
  OrderStatus.newOrder: 'newOrder',
  OrderStatus.issued: 'issued',
  OrderStatus.overdue: 'overdue',
  OrderStatus.refund: 'refund',
  OrderStatus.unknown: 'unknown',
};

_AcceptedOrderResponseData _$AcceptedOrderResponseDataFromJson(
  Map<String, dynamic> json,
) => $defaultCreate(
  '_AcceptedOrderResponseData',
  json,
  ($defaultConvert) {
    final val = _AcceptedOrderResponseData(
      payment: $defaultConvert(
        'payment',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => AcceptedOrderPaymentResponse.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList() ??
            const [],
        defaultValue: const [],
      ),
      products: $defaultConvert(
        'products',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => AcceptedOrderProductResponse.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList() ??
            const [],
        defaultValue: const [],
      ),
      deliveryName: $defaultConvert('delivery_name', (v) => v as String?),
      phone: $defaultConvert('phone', (v) => v as String?),
      datetime: $defaultConvert(
        'datetime',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      deliveryAddress: $defaultConvert(
        'delivery_address',
        (v) => v == null
            ? null
            : DeliveryAddress.fromJson(v as Map<String, dynamic>),
      ),
      comment: $defaultConvert('comment', (v) => v as String?),
      name: $defaultConvert('name', (v) => v as String?),
      persons: $defaultConvert('persons', (v) => (v as num?)?.toInt()),
      status: $defaultConvert(
        'status',
        (v) =>
            $enumDecodeNullable(
              _$OrderStatusEnumMap,
              v,
              unknownValue: OrderStatus.unknown,
            ) ??
            OrderStatus.unknown,
        defaultValue: OrderStatus.unknown,
      ),
      statusH: $defaultConvert(
        'status_h',
        (v) => v as String?,
        readValue: _readStatusH,
      ),
      originalSumm: $defaultConvert(
        'originalSumm',
        (v) => (v as num?)?.toDouble() ?? 0.0,
        defaultValue: 0.0,
      ),
      point: $defaultConvert('point', (v) => v as String?),
      pointName: $defaultConvert('pointName', (v) => v as String?),
      ofdReceiptUrl: $defaultConvert(
        'ofd_receipt_url',
        (v) => v == null ? null : Uri.parse(v as String),
      ),
      purchaseId: $defaultConvert('purchase_id', (v) => v as String?),
      cardNumber: $defaultConvert('card_number', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'deliveryName': 'delivery_name',
    'deliveryAddress': 'delivery_address',
    'statusH': 'status_h',
    'ofdReceiptUrl': 'ofd_receipt_url',
    'purchaseId': 'purchase_id',
    'cardNumber': 'card_number',
  },
);

Map<String, dynamic> _$AcceptedOrderResponseDataToJson(
  _AcceptedOrderResponseData instance,
) => <String, dynamic>{
  'payment': instance.payment.map((e) => e.toJson()).toList(),
  'products': instance.products.map((e) => e.toJson()).toList(),
  'delivery_name': instance.deliveryName,
  'phone': instance.phone,
  'datetime': instance.datetime?.toIso8601String(),
  'delivery_address': instance.deliveryAddress?.toJson(),
  'comment': instance.comment,
  'name': instance.name,
  'persons': instance.persons,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'status_h': instance.statusH,
  'originalSumm': instance.originalSumm,
  'point': instance.point,
  'pointName': instance.pointName,
  'ofd_receipt_url': instance.ofdReceiptUrl?.toString(),
  'purchase_id': instance.purchaseId,
  'card_number': instance.cardNumber,
};

_AcceptedOrderPaymentResponse _$AcceptedOrderPaymentResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_AcceptedOrderPaymentResponse', json, ($defaultConvert) {
  final val = _AcceptedOrderPaymentResponse(
    sum: $defaultConvert('sum', (v) => (v as num?)?.toDouble()),
    type: $defaultConvert('type', (v) => v as String?),
    name: $defaultConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$AcceptedOrderPaymentResponseToJson(
  _AcceptedOrderPaymentResponse instance,
) => <String, dynamic>{
  'sum': instance.sum,
  'type': instance.type,
  'name': instance.name,
};

_AcceptedOrderProductResponse _$AcceptedOrderProductResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_AcceptedOrderProductResponse', json, ($defaultConvert) {
  final val = _AcceptedOrderProductResponse(
    id: $defaultConvert('id', (v) => v as String),
    price: $defaultConvert('price', (v) => (v as num).toDouble()),
    name: $defaultConvert('name', (v) => v as String?),
    image: $defaultConvert('image', (v) => v as String?),
    modifiers: $defaultConvert(
      'modifiers',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => AcceptedOrderModifierGroup.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
      defaultValue: const [],
    ),
    quantity: $defaultConvert('quantity', (v) => (v as num?)?.toDouble()),
    currencySymbol: $defaultConvert(
      'currencySymbol',
      (v) => v as String? ?? '₽',
      defaultValue: '₽',
    ),
  );
  return val;
});

Map<String, dynamic> _$AcceptedOrderProductResponseToJson(
  _AcceptedOrderProductResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'name': instance.name,
  'image': instance.image,
  'modifiers': instance.modifiers.map((e) => e.toJson()).toList(),
  'quantity': instance.quantity,
  'currencySymbol': instance.currencySymbol,
};

_AcceptedOrderModifierGroup _$AcceptedOrderModifierGroupFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_AcceptedOrderModifierGroup', json, ($defaultConvert) {
  final val = _AcceptedOrderModifierGroup(
    id: $defaultConvert('id', (v) => v as String),
    name: $defaultConvert('name', (v) => v as String?),
    options: $defaultConvert(
      'options',
      (v) => (v as List<dynamic>)
          .map((e) => AcceptedOrderModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$AcceptedOrderModifierGroupToJson(
  _AcceptedOrderModifierGroup instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'options': instance.options.map((e) => e.toJson()).toList(),
};

_AcceptedOrderModifier _$AcceptedOrderModifierFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_AcceptedOrderModifier', json, ($defaultConvert) {
  final val = _AcceptedOrderModifier(
    id: $defaultConvert('id', (v) => v as String),
    name: $defaultConvert('name', (v) => v as String?),
    quantity: $defaultConvert('quantity', (v) => (v as num?)?.toDouble()),
    price: $defaultConvert('price', (v) => (v as num?)?.toDouble()),
  );
  return val;
});

Map<String, dynamic> _$AcceptedOrderModifierToJson(
  _AcceptedOrderModifier instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'quantity': instance.quantity,
  'price': instance.price,
};

_DeliveryAddress _$DeliveryAddressFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_DeliveryAddress', json, ($defaultConvert) {
      final val = _DeliveryAddress(
        street: $defaultConvert('street', (v) => v as String?),
        building: $defaultConvert('building', (v) => v as String?),
        city: $defaultConvert('city', (v) => v as String?),
        house: $defaultConvert('house', (v) => v as String?),
        entrance: $defaultConvert('entrance', (v) => v as String?),
        doorphone: $defaultConvert('doorphone', (v) => v as String?),
        floor: $defaultConvert('floor', (v) => v as String?),
        flat: $defaultConvert('flat', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$DeliveryAddressToJson(_DeliveryAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'building': instance.building,
      'city': instance.city,
      'house': instance.house,
      'entrance': instance.entrance,
      'doorphone': instance.doorphone,
      'floor': instance.floor,
      'flat': instance.flat,
    };
