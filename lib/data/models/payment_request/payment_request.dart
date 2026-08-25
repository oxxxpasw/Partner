import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request.freezed.dart';
part 'payment_request.g.dart';

@Freezed(toJson: true)
abstract class PaymentRequest with _$PaymentRequest {
  const factory PaymentRequest({
    required String subId,
    required double amount,
    required String orderId,
    required String paymentType,
    required PaymentRequestData paymentData,
  }) = _PaymentRequest;
}

@Freezed(toJson: true)
abstract class PaymentRequestData with _$PaymentRequestData {
  @JsonSerializable(includeIfNull: false)
  const factory PaymentRequestData({
    String? successUrl,
    String? failureUrl,
    String? cardId,
    String? token,
    String? purchaseId,
    String? cardNumber,
    @Default(false) bool loyalty,
    double? bonusAmount,
    String? applePayToken,
  }) = _PaymentRequestData;
}
