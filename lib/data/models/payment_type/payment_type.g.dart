// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashPaymentType _$CashPaymentTypeFromJson(Map<String, dynamic> json) =>
    $defaultCreate('CashPaymentType', json, ($defaultConvert) {
      final val = CashPaymentType(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert(
          'name',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        imageName: $defaultConvert('image_name', (v) => v as String?),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'imageName': 'image_name', r'$type': 'type'});

Map<String, dynamic> _$CashPaymentTypeToJson(CashPaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_name': instance.imageName,
      'type': instance.$type,
    };

CardPaymentType _$CardPaymentTypeFromJson(Map<String, dynamic> json) =>
    $defaultCreate('CardPaymentType', json, ($defaultConvert) {
      final val = CardPaymentType(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert(
          'name',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        imageName: $defaultConvert('image_name', (v) => v as String?),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'imageName': 'image_name', r'$type': 'type'});

Map<String, dynamic> _$CardPaymentTypeToJson(CardPaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_name': instance.imageName,
      'type': instance.$type,
    };

SbpPaymentType _$SbpPaymentTypeFromJson(Map<String, dynamic> json) =>
    $defaultCreate('SbpPaymentType', json, ($defaultConvert) {
      final val = SbpPaymentType(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert(
          'name',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        imageName: $defaultConvert('image_name', (v) => v as String?),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'imageName': 'image_name', r'$type': 'type'});

Map<String, dynamic> _$SbpPaymentTypeToJson(SbpPaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_name': instance.imageName,
      'type': instance.$type,
    };

LinkedCardPaymentType _$LinkedCardPaymentTypeFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('LinkedCardPaymentType', json, ($defaultConvert) {
  final val = LinkedCardPaymentType(
    id: $defaultConvert('id', (v) => v as String),
    name: $defaultConvert('name', (v) => v as String? ?? '', defaultValue: ''),
    imageName: $defaultConvert('image_name', (v) => v as String?),
    data: $defaultConvert(
      'data',
      (v) => LinkedCardData.fromJson(v as Map<String, dynamic>),
    ),
    $type: $defaultConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'imageName': 'image_name', r'$type': 'type'});

Map<String, dynamic> _$LinkedCardPaymentTypeToJson(
  LinkedCardPaymentType instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_name': instance.imageName,
  'data': instance.data.toJson(),
  'type': instance.$type,
};

RegisterCardPaymentType _$RegisterCardPaymentTypeFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('RegisterCardPaymentType', json, ($defaultConvert) {
  final val = RegisterCardPaymentType(
    id: $defaultConvert('id', (v) => v as String),
    name: $defaultConvert('name', (v) => v as String? ?? '', defaultValue: ''),
    imageName: $defaultConvert('image_name', (v) => v as String?),
    $type: $defaultConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'imageName': 'image_name', r'$type': 'type'});

Map<String, dynamic> _$RegisterCardPaymentTypeToJson(
  RegisterCardPaymentType instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_name': instance.imageName,
  'type': instance.$type,
};

ApplePayPaymentType _$ApplePayPaymentTypeFromJson(Map<String, dynamic> json) =>
    $defaultCreate('ApplePayPaymentType', json, ($defaultConvert) {
      final val = ApplePayPaymentType(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert(
          'name',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        imageName: $defaultConvert('image_name', (v) => v as String?),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'imageName': 'image_name', r'$type': 'type'});

Map<String, dynamic> _$ApplePayPaymentTypeToJson(
  ApplePayPaymentType instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_name': instance.imageName,
  'type': instance.$type,
};

UnknownPaymentType _$UnknownPaymentTypeFromJson(Map<String, dynamic> json) =>
    $defaultCreate('UnknownPaymentType', json, ($defaultConvert) {
      final val = UnknownPaymentType(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert(
          'name',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        imageName: $defaultConvert('image_name', (v) => v as String?),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'imageName': 'image_name', r'$type': 'type'});

Map<String, dynamic> _$UnknownPaymentTypeToJson(UnknownPaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_name': instance.imageName,
      'type': instance.$type,
    };

_LinkedCardData _$LinkedCardDataFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_LinkedCardData',
      json,
      ($defaultConvert) {
        final val = _LinkedCardData(
          cardId: $defaultConvert('card_id', (v) => v as String),
          cardNumber: $defaultConvert('card_number', (v) => v as String),
          cardType: $defaultConvert(
            'card_type',
            (v) =>
                $enumDecodeNullable(
                  _$LinkedCardTypeEnumMap,
                  v,
                  unknownValue: LinkedCardType.unknown,
                ) ??
                LinkedCardType.unknown,
            defaultValue: LinkedCardType.unknown,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'cardId': 'card_id',
        'cardNumber': 'card_number',
        'cardType': 'card_type',
      },
    );

Map<String, dynamic> _$LinkedCardDataToJson(_LinkedCardData instance) =>
    <String, dynamic>{
      'card_id': instance.cardId,
      'card_number': instance.cardNumber,
      'card_type': _$LinkedCardTypeEnumMap[instance.cardType]!,
    };

const _$LinkedCardTypeEnumMap = {
  LinkedCardType.visa: 'VISA',
  LinkedCardType.mastercard: 'MASTERCARD',
  LinkedCardType.mir: 'MIR',
  LinkedCardType.unionpay: 'UNIONPAY',
  LinkedCardType.unknown: 'unknown',
};
