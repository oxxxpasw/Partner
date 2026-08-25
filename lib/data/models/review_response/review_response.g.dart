// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewListResponse _$ReviewListResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ReviewListResponse', json, ($defaultConvert) {
      final val = _ReviewListResponse(
        reviews: $defaultConvert(
          'reviews',
          (v) => (v as List<dynamic>)
              .map((e) => ReviewResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReviewListResponseToJson(_ReviewListResponse instance) =>
    <String, dynamic>{
      'reviews': instance.reviews.map((e) => e.toJson()).toList(),
    };

_ReviewResponse _$ReviewResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ReviewResponse', json, ($defaultConvert) {
      final val = _ReviewResponse(
        id: $defaultConvert('id', (v) => v as String),
        rate: $defaultConvert('rate', (v) => (v as num?)?.toInt()),
        date: $defaultConvert(
          'date',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        address: $defaultConvert('address', (v) => v as String?),
        divisionId: $defaultConvert('divisionId', (v) => v as String?),
        divisionName: $defaultConvert('divisionName', (v) => v as String?),
        type: $defaultConvert(
          'type',
          (v) =>
              $enumDecodeNullable(
                _$ReviewTypeEnumMap,
                v,
                unknownValue: ReviewType.unknown,
              ) ??
              ReviewType.unknown,
          defaultValue: ReviewType.unknown,
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReviewResponseToJson(_ReviewResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'date': instance.date?.toIso8601String(),
      'address': instance.address,
      'divisionId': instance.divisionId,
      'divisionName': instance.divisionName,
      'type': _$ReviewTypeEnumMap[instance.type]!,
    };

const _$ReviewTypeEnumMap = {
  ReviewType.storeID: 'Store ID',
  ReviewType.productID: 'Product ID',
  ReviewType.purchaseID: 'Purchase ID',
  ReviewType.unknown: 'unknown',
};

DefaultReviewDetailsResponse _$DefaultReviewDetailsResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('DefaultReviewDetailsResponse', json, ($defaultConvert) {
  final val = DefaultReviewDetailsResponse(
    rate: $defaultConvert('rate', (v) => (v as num?)?.toInt()),
    date: $defaultConvert(
      'date',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    address: $defaultConvert('address', (v) => v as String?),
    divisionId: $defaultConvert('divisionId', (v) => v as String?),
    divisionName: $defaultConvert('divisionName', (v) => v as String?),
    text: $defaultConvert('text', (v) => v as String?),
    phone: $defaultConvert('phone', (v) => v as String?),
    photos: $defaultConvert(
      'photos',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    $type: $defaultConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$DefaultReviewDetailsResponseToJson(
  DefaultReviewDetailsResponse instance,
) => <String, dynamic>{
  'rate': instance.rate,
  'date': instance.date?.toIso8601String(),
  'address': instance.address,
  'divisionId': instance.divisionId,
  'divisionName': instance.divisionName,
  'text': instance.text,
  'phone': instance.phone,
  'photos': instance.photos,
  'type': instance.$type,
};

StoreReviewDetailsResponse _$StoreReviewDetailsResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('StoreReviewDetailsResponse', json, ($defaultConvert) {
  final val = StoreReviewDetailsResponse(
    rate: $defaultConvert('rate', (v) => (v as num?)?.toInt()),
    date: $defaultConvert(
      'date',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    address: $defaultConvert('address', (v) => v as String?),
    divisionId: $defaultConvert('divisionId', (v) => v as String?),
    divisionName: $defaultConvert('divisionName', (v) => v as String?),
    text: $defaultConvert('text', (v) => v as String?),
    phone: $defaultConvert('phone', (v) => v as String?),
    photos: $defaultConvert(
      'photos',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    $type: $defaultConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$StoreReviewDetailsResponseToJson(
  StoreReviewDetailsResponse instance,
) => <String, dynamic>{
  'rate': instance.rate,
  'date': instance.date?.toIso8601String(),
  'address': instance.address,
  'divisionId': instance.divisionId,
  'divisionName': instance.divisionName,
  'text': instance.text,
  'phone': instance.phone,
  'photos': instance.photos,
  'type': instance.$type,
};

PurhcaseReviewDetailsResponse _$PurhcaseReviewDetailsResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('PurhcaseReviewDetailsResponse', json, ($defaultConvert) {
  final val = PurhcaseReviewDetailsResponse(
    rate: $defaultConvert('rate', (v) => (v as num?)?.toInt()),
    date: $defaultConvert(
      'date',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    address: $defaultConvert('address', (v) => v as String?),
    divisionId: $defaultConvert('divisionId', (v) => v as String?),
    divisionName: $defaultConvert('divisionName', (v) => v as String?),
    text: $defaultConvert('text', (v) => v as String?),
    phone: $defaultConvert('phone', (v) => v as String?),
    photos: $defaultConvert(
      'photos',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    compositionOfTheCheck: $defaultConvert(
      'compositionOfTheCheck',
      (v) => v == null
          ? null
          : CompositionOfTheCheckResponse.fromJson(v as Map<String, dynamic>),
    ),
    $type: $defaultConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$PurhcaseReviewDetailsResponseToJson(
  PurhcaseReviewDetailsResponse instance,
) => <String, dynamic>{
  'rate': instance.rate,
  'date': instance.date?.toIso8601String(),
  'address': instance.address,
  'divisionId': instance.divisionId,
  'divisionName': instance.divisionName,
  'text': instance.text,
  'phone': instance.phone,
  'photos': instance.photos,
  'compositionOfTheCheck': instance.compositionOfTheCheck?.toJson(),
  'type': instance.$type,
};

_CompositionOfTheCheckResponse _$CompositionOfTheCheckResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_CompositionOfTheCheckResponse', json, ($defaultConvert) {
  final val = _CompositionOfTheCheckResponse(
    dateOfPurchase: $defaultConvert(
      'dateOfPurchase',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    nomenclature: $defaultConvert(
      'nomenclature',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => CheckPositionResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    quantity: $defaultConvert('quantity', (v) => (v as num).toDouble()),
    discountAmount: $defaultConvert(
      'discountAmount',
      (v) => (v as num).toDouble(),
    ),
    salesAmount: $defaultConvert('salesAmount', (v) => (v as num).toDouble()),
  );
  return val;
});

Map<String, dynamic> _$CompositionOfTheCheckResponseToJson(
  _CompositionOfTheCheckResponse instance,
) => <String, dynamic>{
  'dateOfPurchase': instance.dateOfPurchase?.toIso8601String(),
  'nomenclature': instance.nomenclature?.map((e) => e.toJson()).toList(),
  'quantity': instance.quantity,
  'discountAmount': instance.discountAmount,
  'salesAmount': instance.salesAmount,
};

_CheckPositionResponse _$CheckPositionResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_CheckPositionResponse', json, ($defaultConvert) {
  final val = _CheckPositionResponse(
    name: $defaultConvert('name', (v) => v as String?),
    quantity: $defaultConvert('quantity', (v) => (v as num?)?.toDouble()),
  );
  return val;
});

Map<String, dynamic> _$CheckPositionResponseToJson(
  _CheckPositionResponse instance,
) => <String, dynamic>{'name': instance.name, 'quantity': instance.quantity};
