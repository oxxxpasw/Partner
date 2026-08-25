// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PaymentRequestToJson(_PaymentRequest instance) =>
    <String, dynamic>{
      'sub_id': instance.subId,
      'amount': instance.amount,
      'order_id': instance.orderId,
      'payment_type': instance.paymentType,
      'payment_data': instance.paymentData.toJson(),
    };

_PaymentRequestData _$PaymentRequestDataFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_PaymentRequestData',
      json,
      ($defaultConvert) {
        final val = _PaymentRequestData(
          successUrl: $defaultConvert('success_url', (v) => v as String?),
          failureUrl: $defaultConvert('failure_url', (v) => v as String?),
          cardId: $defaultConvert('card_id', (v) => v as String?),
          token: $defaultConvert('token', (v) => v as String?),
          purchaseId: $defaultConvert('purchase_id', (v) => v as String?),
          cardNumber: $defaultConvert('card_number', (v) => v as String?),
          loyalty: $defaultConvert(
            'loyalty',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          bonusAmount: $defaultConvert(
            'bonus_amount',
            (v) => (v as num?)?.toDouble(),
          ),
          applePayToken: $defaultConvert(
            'apple_pay_token',
            (v) => v as String?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'successUrl': 'success_url',
        'failureUrl': 'failure_url',
        'cardId': 'card_id',
        'purchaseId': 'purchase_id',
        'cardNumber': 'card_number',
        'bonusAmount': 'bonus_amount',
        'applePayToken': 'apple_pay_token',
      },
    );

Map<String, dynamic> _$PaymentRequestDataToJson(_PaymentRequestData instance) =>
    <String, dynamic>{
      'success_url': ?instance.successUrl,
      'failure_url': ?instance.failureUrl,
      'card_id': ?instance.cardId,
      'token': ?instance.token,
      'purchase_id': ?instance.purchaseId,
      'card_number': ?instance.cardNumber,
      'loyalty': instance.loyalty,
      'bonus_amount': ?instance.bonusAmount,
      'apple_pay_token': ?instance.applePayToken,
    };
