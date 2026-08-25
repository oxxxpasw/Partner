// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerApiPurchase _$CustomerApiPurchaseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_CustomerApiPurchase', json, ($defaultConvert) {
      final val = _CustomerApiPurchase(
        purchase: $defaultConvert(
          'purchase',
          (v) => Purchase.fromJson(v as Map<String, dynamic>),
        ),
        activeCashierShiftId: $defaultConvert(
          'activeCashierShiftId',
          (v) => v as String?,
        ),
        bonusProgramTypesInfo: $defaultConvert(
          'bonusProgramTypesInfo',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) => BonusProgramType.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const [],
          defaultValue: const [],
        ),
      );
      return val;
    });

Map<String, dynamic> _$CustomerApiPurchaseToJson(
  _CustomerApiPurchase instance,
) => <String, dynamic>{
  'purchase': instance.purchase.toJson(),
  'activeCashierShiftId': instance.activeCashierShiftId,
  'bonusProgramTypesInfo': instance.bonusProgramTypesInfo
      .map((e) => e.toJson())
      .toList(),
};

_Purchase _$PurchaseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_Purchase', json, ($defaultConvert) {
      final val = _Purchase(
        id: $defaultConvert('id', (v) => v as String?),
        date: $defaultConvert('date', (v) => DateTime.parse(v as String)),
        summ: $defaultConvert('summ', (v) => (v as num).toDouble()),
        summWithoutDiscount: $defaultConvert(
          'summWithoutDiscount',
          (v) => (v as num).toDouble(),
        ),
        storeId: $defaultConvert('storeId', (v) => v as String),
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
        bonusesCanSpent: $defaultConvert(
          'bonusesCanSpent',
          (v) => (v as num?)?.toDouble() ?? 0.0,
          defaultValue: 0.0,
        ),
        totalBonuses: $defaultConvert(
          'totalBonuses',
          (v) => (v as num?)?.toDouble() ?? 0.0,
          defaultValue: 0.0,
        ),
        checkNumber: $defaultConvert('checkNumber', (v) => v as String?),
        discountLog: $defaultConvert(
          'DiscountLog',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) => DiscountLogItem.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const [],
          defaultValue: const [],
        ),
        cardNumber: $defaultConvert('cardNumber', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'discountLog': 'DiscountLog'});

Map<String, dynamic> _$PurchaseToJson(_Purchase instance) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date.toIso8601String(),
  'summ': instance.summ,
  'summWithoutDiscount': instance.summWithoutDiscount,
  'storeId': instance.storeId,
  'positions': instance.positions.map((e) => e.toJson()).toList(),
  'bonusesSumm': instance.bonusesSumm,
  'bonusesCanSpent': instance.bonusesCanSpent,
  'totalBonuses': instance.totalBonuses,
  'checkNumber': instance.checkNumber,
  'DiscountLog': instance.discountLog.map((e) => e.toJson()).toList(),
  'cardNumber': instance.cardNumber,
};

_PurchasePosition _$PurchasePositionFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_PurchasePosition', json, ($defaultConvert) {
      final val = _PurchasePosition(
        lineNumber: $defaultConvert(
          'lineNumber',
          (v) => (v as num?)?.toInt() ?? 0,
          defaultValue: 0,
        ),
        productCode: $defaultConvert('productCode', (v) => v as String),
        quantity: $defaultConvert('quantity', (v) => (v as num).toDouble()),
        price: $defaultConvert('price', (v) => (v as num).toDouble()),
        summ: $defaultConvert('summ', (v) => (v as num).toDouble()),
        summWithoutDiscount: $defaultConvert(
          'summWithoutDiscount',
          (v) => (v as num).toDouble(),
        ),
        groupCode: $defaultConvert('groupCode', (v) => v as String?),
        barCode: $defaultConvert('barCode', (v) => v as String?),
        bonusesSumm: $defaultConvert(
          'bonusesSumm',
          (v) => (v as num?)?.toDouble() ?? 0.0,
          defaultValue: 0.0,
        ),
      );
      return val;
    });

Map<String, dynamic> _$PurchasePositionToJson(_PurchasePosition instance) =>
    <String, dynamic>{
      'lineNumber': instance.lineNumber,
      'productCode': instance.productCode,
      'quantity': instance.quantity,
      'price': instance.price,
      'summ': instance.summ,
      'summWithoutDiscount': instance.summWithoutDiscount,
      'groupCode': instance.groupCode,
      'barCode': instance.barCode,
      'bonusesSumm': instance.bonusesSumm,
    };

_BonusProgramType _$BonusProgramTypeFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_BonusProgramType', json, ($defaultConvert) {
      final val = _BonusProgramType(
        bonusProgramTypeName: $defaultConvert(
          'bonusProgramTypeName',
          (v) => v as String?,
        ),
        bonusesCurrentActiveBalance: $defaultConvert(
          'bonusesCurrentActiveBalance',
          (v) => (v as num?)?.toDouble(),
        ),
        bonusesCanSpent: $defaultConvert(
          'bonusesCanSpent',
          (v) => (v as num?)?.toDouble(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$BonusProgramTypeToJson(_BonusProgramType instance) =>
    <String, dynamic>{
      'bonusProgramTypeName': instance.bonusProgramTypeName,
      'bonusesCurrentActiveBalance': instance.bonusesCurrentActiveBalance,
      'bonusesCanSpent': instance.bonusesCanSpent,
    };

_DiscountLogItem _$DiscountLogItemFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_DiscountLogItem',
      json,
      ($defaultConvert) {
        final val = _DiscountLogItem(
          type: $defaultConvert(
            'Type',
            (v) => $enumDecodeNullable(
              _$DiscountLogTypeEnumMap,
              v,
              unknownValue: DiscountLogType.unknown,
            ),
          ),
          discountValue: $defaultConvert(
            'DiscountValue',
            (v) => (v as num?)?.toDouble(),
          ),
          line: $defaultConvert(
            'Line',
            (v) => v == null
                ? null
                : PurchasePosition.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'type': 'Type',
        'discountValue': 'DiscountValue',
        'line': 'Line',
      },
    );

Map<String, dynamic> _$DiscountLogItemToJson(_DiscountLogItem instance) =>
    <String, dynamic>{
      'Type': _$DiscountLogTypeEnumMap[instance.type],
      'DiscountValue': instance.discountValue,
      'Line': instance.line?.toJson(),
    };

const _$DiscountLogTypeEnumMap = {
  DiscountLogType.auto: 1,
  DiscountLogType.manual: 2,
  DiscountLogType.autoProduct: 3,
  DiscountLogType.manualProduct: 4,
  DiscountLogType.card: 5,
  DiscountLogType.bonuses: 6,
  DiscountLogType.summ: 7,
  DiscountLogType.autoSummOnProduct: 8,
  DiscountLogType.minCost: 16,
  DiscountLogType.maxDiscount: 32,
  DiscountLogType.disableSale: 64,
  DiscountLogType.unknown: 'unknown',
};
