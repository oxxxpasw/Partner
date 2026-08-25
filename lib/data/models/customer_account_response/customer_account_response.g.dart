// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerAccountResponse _$CustomerAccountResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_CustomerAccountResponse', json, ($defaultConvert) {
  final val = _CustomerAccountResponse(
    cards: $defaultConvert(
      'Cards',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => BonusCardResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      defaultValue: const [],
    ),
    promotions: $defaultConvert(
      'Promotions',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => PromotionShortInfo.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      defaultValue: const [],
    ),
  );
  return val;
}, fieldKeyMap: const {'cards': 'Cards', 'promotions': 'Promotions'});

Map<String, dynamic> _$CustomerAccountResponseToJson(
  _CustomerAccountResponse instance,
) => <String, dynamic>{
  'Cards': instance.cards.map((e) => e.toJson()).toList(),
  'Promotions': instance.promotions.map((e) => e.toJson()).toList(),
};
