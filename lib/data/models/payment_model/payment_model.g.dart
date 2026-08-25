// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_PaymentResponse',
      json,
      ($defaultConvert) {
        final val = _PaymentResponse(
          paymentData: $defaultConvert(
            'payment_data',
            (v) => v == null
                ? null
                : PaymentData.fromJson(v as Map<String, dynamic>),
          ),
          paymentRequest: $defaultConvert(
            'payment_request',
            (v) => PaymentRequestData.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'paymentData': 'payment_data',
        'paymentRequest': 'payment_request',
      },
    );

Map<String, dynamic> _$PaymentResponseToJson(_PaymentResponse instance) =>
    <String, dynamic>{
      'payment_data': instance.paymentData?.toJson(),
      'payment_request': instance.paymentRequest.toJson(),
    };

_PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_PaymentData', json, ($defaultConvert) {
      final val = _PaymentData(
        paymentUrl: $defaultConvert(
          'payment_url',
          (v) => v == null ? null : Uri.parse(v as String),
        ),
      );
      return val;
    }, fieldKeyMap: const {'paymentUrl': 'payment_url'});

Map<String, dynamic> _$PaymentDataToJson(_PaymentData instance) =>
    <String, dynamic>{'payment_url': instance.paymentUrl?.toString()};

_PaymentRequestData _$PaymentRequestDataFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_PaymentRequestData', json, ($defaultConvert) {
      final val = _PaymentRequestData(
        amount: $defaultConvert('amount', (v) => (v as num).toDouble()),
        id: $defaultConvert('id', (v) => v as String),
        orderId: $defaultConvert('order_id', (v) => v as String),
        type: $defaultConvert(
          'type',
          (v) => $enumDecode(
            _$PaymentMethodEnumMap,
            v,
            unknownValue: PaymentMethod.unknown,
          ),
        ),
        paymentId: $defaultConvert('payment_id', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'orderId': 'order_id', 'paymentId': 'payment_id'});

Map<String, dynamic> _$PaymentRequestDataToJson(_PaymentRequestData instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'id': instance.id,
      'order_id': instance.orderId,
      'type': _$PaymentMethodEnumMap[instance.type]!,
      'payment_id': instance.paymentId,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'CASH',
  PaymentMethod.card: 'CARD',
  PaymentMethod.sbp: 'SBP',
  PaymentMethod.linkedCard: 'LINKED_CARD',
  PaymentMethod.applePay: 'APPLE_PAY',
  PaymentMethod.unknown: 'unknown',
};

_PaymentStatus _$PaymentStatusFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_PaymentStatus', json, ($defaultConvert) {
      final val = _PaymentStatus(
        status: $defaultConvert(
          'status',
          (v) => $enumDecode(
            _$PaymentStatusEnumMap,
            v,
            unknownValue: PaymentStatus.unknown,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaymentStatusToJson(_PaymentStatus instance) =>
    <String, dynamic>{'status': _$PaymentStatusEnumMap[instance.status]!};

const _$PaymentStatusEnumMap = {
  PaymentStatus.newPayment: 'NEW',
  PaymentStatus.created: 'CREATED',
  PaymentStatus.canceled: 'CANCELED',
  PaymentStatus.overdue: 'OVERDUE',
  PaymentStatus.paid: 'PAID',
  PaymentStatus.notified: 'NOTIFIED',
  PaymentStatus.internalError: 'INTERNAL_ERROR',
  PaymentStatus.processing: 'PROCESSING',
  PaymentStatus.unknown: 'unknown',
};
