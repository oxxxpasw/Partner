// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_pay_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApplePayResult _$ApplePayResultFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ApplePayResult', json, ($defaultConvert) {
      final val = _ApplePayResult(
        $defaultConvert('token', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ApplePayResultToJson(_ApplePayResult instance) =>
    <String, dynamic>{'token': instance.token};
