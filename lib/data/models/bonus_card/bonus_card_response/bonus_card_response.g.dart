// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bonus_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BonusCardResponse _$BonusCardResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_BonusCardResponse',
      json,
      ($defaultConvert) {
        final val = _BonusCardResponse(
          cardNumber: $defaultConvert('CardNumber', (v) => (v as num).toInt()),
          cardType: $defaultConvert(
            'CardType',
            (v) => $enumDecode(_$CardTypeEnumMap, v),
          ),
          cardStatus: $defaultConvert(
            'CardStatus',
            (v) => $enumDecode(_$CardStatusEnumMap, v),
          ),
          purchasesSum: $defaultConvert(
            'PurchasesSum',
            (v) => (v as num?)?.toDouble() ?? 0.0,
            defaultValue: 0.0,
          ),
          bonuses: $defaultConvert(
            'Bonuses',
            (v) => (v as num?)?.toDouble() ?? 0.0,
            defaultValue: 0.0,
          ),
          holdedBonuses: $defaultConvert(
            'HoldedBonuses',
            (v) => (v as num?)?.toDouble() ?? 0.0,
            defaultValue: 0.0,
          ),
          bonusProgramName: $defaultConvert(
            'BonusProgramName',
            (v) => v as String?,
          ),
          dateBonusBurn: $defaultConvert(
            'DateBonusBurn',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          cardProperties: $defaultConvert(
            'CardProperties',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => BonusCardProperty.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          bonusProgramAccounts: $defaultConvert(
            'BonusProgramAccounts',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) => BonusProgramAccountResponse.fromJson(
                        e as Map<String, dynamic>,
                      ),
                    )
                    .toList() ??
                const [],
            defaultValue: const [],
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'cardNumber': 'CardNumber',
        'cardType': 'CardType',
        'cardStatus': 'CardStatus',
        'purchasesSum': 'PurchasesSum',
        'bonuses': 'Bonuses',
        'holdedBonuses': 'HoldedBonuses',
        'bonusProgramName': 'BonusProgramName',
        'dateBonusBurn': 'DateBonusBurn',
        'cardProperties': 'CardProperties',
        'bonusProgramAccounts': 'BonusProgramAccounts',
      },
    );

Map<String, dynamic> _$BonusCardResponseToJson(
  _BonusCardResponse instance,
) => <String, dynamic>{
  'CardNumber': instance.cardNumber,
  'CardType': _$CardTypeEnumMap[instance.cardType]!,
  'CardStatus': _$CardStatusEnumMap[instance.cardStatus]!,
  'PurchasesSum': instance.purchasesSum,
  'Bonuses': instance.bonuses,
  'HoldedBonuses': instance.holdedBonuses,
  'BonusProgramName': instance.bonusProgramName,
  'DateBonusBurn': instance.dateBonusBurn?.toIso8601String(),
  'CardProperties': instance.cardProperties?.map((e) => e.toJson()).toList(),
  'BonusProgramAccounts': instance.bonusProgramAccounts
      .map((e) => e.toJson())
      .toList(),
};

const _$CardTypeEnumMap = {
  CardType.simple: 0,
  CardType.bronze: 1,
  CardType.silver: 2,
  CardType.gold: 3,
  CardType.superCard: 4,
  CardType.discount: 5,
  CardType.certificate: 6,
  CardType.administrator: 255,
};

const _$CardStatusEnumMap = {
  CardStatus.created: 0,
  CardStatus.binded: 1,
  CardStatus.frod: 2,
  CardStatus.trusted: 3,
  CardStatus.blocked: 255,
};

_BonusProgramAccountResponse _$BonusProgramAccountResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate(
  '_BonusProgramAccountResponse',
  json,
  ($defaultConvert) {
    final val = _BonusProgramAccountResponse(
      cardNumber: $defaultConvert('CardNumber', (v) => (v as num?)?.toInt()),
      name: $defaultConvert('Name', (v) => v as String?),
      bonusProgramId: $defaultConvert('BonusProgramId', (v) => v as String?),
      bonusProgramActive: $defaultConvert(
        'BonusProgramActive',
        (v) => v as bool? ?? false,
        defaultValue: false,
      ),
      bonuses: $defaultConvert(
        'Bonuses',
        (v) => (v as num?)?.toDouble() ?? 0.0,
        defaultValue: 0.0,
      ),
      holdedBonuses: $defaultConvert(
        'HoldedBonuses',
        (v) => (v as num?)?.toDouble() ?? 0.0,
        defaultValue: 0.0,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'cardNumber': 'CardNumber',
    'name': 'Name',
    'bonusProgramId': 'BonusProgramId',
    'bonusProgramActive': 'BonusProgramActive',
    'bonuses': 'Bonuses',
    'holdedBonuses': 'HoldedBonuses',
  },
);

Map<String, dynamic> _$BonusProgramAccountResponseToJson(
  _BonusProgramAccountResponse instance,
) => <String, dynamic>{
  'CardNumber': instance.cardNumber,
  'Name': instance.name,
  'BonusProgramId': instance.bonusProgramId,
  'BonusProgramActive': instance.bonusProgramActive,
  'Bonuses': instance.bonuses,
  'HoldedBonuses': instance.holdedBonuses,
};

_BonusCardProperties _$BonusCardPropertiesFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_BonusCardProperties', json, ($defaultConvert) {
      final val = _BonusCardProperties(
        purchasesSumPrevious: $defaultConvert(
          'purchasesSumPrevious',
          (v) => (v as num).toDouble(),
        ),
        purchasesSumNext: $defaultConvert(
          'purchasesSumNext',
          (v) => (v as num?)?.toDouble(),
        ),
        cashback: $defaultConvert('cashback', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$BonusCardPropertiesToJson(
  _BonusCardProperties instance,
) => <String, dynamic>{
  'purchasesSumPrevious': instance.purchasesSumPrevious,
  'purchasesSumNext': instance.purchasesSumNext,
  'cashback': instance.cashback,
};

_BonusCardProperty _$BonusCardPropertyFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_BonusCardProperty', json, ($defaultConvert) {
      final val = _BonusCardProperty(
        id: $defaultConvert('id', (v) => v as String),
        apiName: $defaultConvert(
          'apiName',
          (v) => $enumDecodeNullable(
            _$BonusCardPropertyApiNameEnumMap,
            v,
            unknownValue: JsonKey.nullForUndefinedEnumValue,
          ),
        ),
        localName: $defaultConvert('localName', (v) => v as String),
        value: $defaultConvert('value', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$BonusCardPropertyToJson(_BonusCardProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'apiName': _$BonusCardPropertyApiNameEnumMap[instance.apiName],
      'localName': instance.localName,
      'value': instance.value,
    };

const _$BonusCardPropertyApiNameEnumMap = {
  BonusCardPropertyApiName.nextRecount: 'ТекстСледующегоПересчета',
  BonusCardPropertyApiName.level: 'ТекстСтатусаБП',
  BonusCardPropertyApiName.cashback: 'ТекстКэшбэк',
};
