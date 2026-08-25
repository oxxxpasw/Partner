import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_response.freezed.dart';
part 'review_response.g.dart';

@freezed
abstract class ReviewListResponse with _$ReviewListResponse {
  const factory ReviewListResponse({
    required List<ReviewResponse> reviews,
  }) = _ReviewListResponse;

  factory ReviewListResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewListResponseFromJson(json);
}

@freezed
abstract class ReviewResponse with _$ReviewResponse {
  const ReviewResponse._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ReviewResponse({
    required String id,
    int? rate,
    DateTime? date,
    String? address,
    String? divisionId,
    String? divisionName,
    @JsonKey(
      unknownEnumValue: ReviewType.unknown,
      defaultValue: ReviewType.unknown,
    )
    required ReviewType type,
  }) = _ReviewResponse;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);
}

@Freezed(unionKey: 'type', fallbackUnion: 'default')
sealed class ReviewDetailsResponse with _$ReviewDetailsResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ReviewDetailsResponse({
    int? rate,
    DateTime? date,
    String? address,
    String? divisionId,
    String? divisionName,
    String? text,
    String? phone,
    List<String>? photos,
  }) = DefaultReviewDetailsResponse;

  @FreezedUnionValue('Store ID')
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ReviewDetailsResponse.store({
    int? rate,
    DateTime? date,
    String? address,
    String? divisionId,
    String? divisionName,
    String? text,
    String? phone,
    List<String>? photos,
  }) = StoreReviewDetailsResponse;

  @FreezedUnionValue('Purchase ID')
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ReviewDetailsResponse.purchase({
    int? rate,
    DateTime? date,
    String? address,
    String? divisionId,
    String? divisionName,
    String? text,
    String? phone,
    List<String>? photos,
    CompositionOfTheCheckResponse? compositionOfTheCheck,
  }) = PurhcaseReviewDetailsResponse;

  factory ReviewDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewDetailsResponseFromJson(json);
}

@freezed
abstract class CompositionOfTheCheckResponse with _$CompositionOfTheCheckResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory CompositionOfTheCheckResponse({
    DateTime? dateOfPurchase,
    List<CheckPositionResponse>? nomenclature,
    required double quantity,
    required double discountAmount,
    required double salesAmount,
  }) = _CompositionOfTheCheckResponse;

  factory CompositionOfTheCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$CompositionOfTheCheckResponseFromJson(json);
}

@freezed
abstract class CheckPositionResponse with _$CheckPositionResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory CheckPositionResponse({
    String? name,
    double? quantity,
  }) = _CheckPositionResponse;

  factory CheckPositionResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckPositionResponseFromJson(json);
}

enum ReviewType {
  @JsonValue('Store ID')
  storeID,
  @JsonValue('Product ID')
  productID,
  @JsonValue('Purchase ID')
  purchaseID,
  unknown;
}

// class ReviewTypeConverter implements JsonConverter<ReviewType, Object?> {
//   const ReviewTypeConverter();
//
//   @override
//   ReviewType fromJson(Object? json) {
//     try {
//       if (json is String) {
//         return switch (json) {
//           'Store ID' => ReviewType.storeID,
//           'Purchase ID' => ReviewType.purchaseID,
//           'Product ID' => ReviewType.productID,
//           _ => ReviewType.unknown,
//         };
//       }
//
//       if (json is int) {
//         return switch (json) {
//           1 => ReviewType.storeID,
//           2 => ReviewType.purchaseID,
//           3 => ReviewType.productID,
//           _ => ReviewType.unknown,
//         };
//       }
//
//       return ReviewType.unknown;
//     } catch (_) {
//       return ReviewType.unknown;
//     }
//   }
//
//   @override
//   Object? toJson(ReviewType data) {
//     throw UnimplementedError(
//       'ReviewDataResponseConverter does not support toJson.',
//     );
//   }
// }
//
// class ReviewDataResponseConverter
//     implements JsonConverter<ReviewDetailsResponse, Map<String, dynamic>> {
//   const ReviewDataResponseConverter();
//
//   @override
//   ReviewDetailsResponse fromJson(Map<String, dynamic> json) {
//     final type = json['type'];
//
//     return switch (type) {
//       'Store ID' || 2 => StoreReviewDetailsResponse.fromJson(json),
//       'Purchase ID' || 1 => PurhcaseReviewDetailsResponse.fromJson(json),
//       _ => DefaultReviewDetailsResponse.fromJson(json),
//     };
//   }
//
//   @override
//   Map<String, dynamic> toJson(ReviewDetailsResponse data) {
//     throw UnimplementedError(
//       'ReviewDataResponseConverter does not support toJson.',
//     );
//   }
// }

//
// class ReviewDataResponseConverter
//     implements JsonConverter<ReviewDataResponse?, String?> {
//   const ReviewDataResponseConverter();
//
//   @override
//   ReviewDataResponse? fromJson(String? json) {
//     try {
//       if (json == null) return null;
//
//       final jsonMap = jsonDecode(json) as Map<String, dynamic>;
//
//       return ReviewDataResponse.fromJson(jsonMap);
//     } catch (_) {
//       return null;
//     }
//   }
//
//   @override
//   String? toJson(ReviewDataResponse? data) {
//     throw UnimplementedError(
//       'ReviewDataResponseConverter does not support toJson.',
//     );
//   }
// }
//
// @freezed
// class ReviewDataResponse with _$ReviewDataResponse {
//   const factory ReviewDataResponse({
//     ReviewStoreDataResponse? store,
//     ReviewProductDataResponse? product,
//     ReviewPurchaseDataResponse? purchase,
//   }) = _ReviewDataResponse;
//
//   factory ReviewDataResponse.fromJson(Map<String, dynamic> json) =>
//       _$ReviewDataResponseFromJson(json);
// }
//
// @freezed
// class ReviewStoreDataResponse with _$ReviewStoreDataResponse {
//   const factory ReviewStoreDataResponse({
//     required String id,
//     String? name,
//     String? address,
//   }) = _ReviewStoreDataResponse;
//
//   factory ReviewStoreDataResponse.fromJson(Map<String, dynamic> json) =>
//       _$ReviewStoreDataResponseFromJson(json);
// }
//
// @freezed
// class ReviewProductDataResponse with _$ReviewProductDataResponse {
//   const factory ReviewProductDataResponse({
//     required String id,
//     String? name,
//   }) = _ReviewProductDataResponse;
//
//   factory ReviewProductDataResponse.fromJson(Map<String, dynamic> json) =>
//       _$ReviewProductDataResponseFromJson(json);
// }
//
// @freezed
// class ReviewPurchaseDataResponse with _$ReviewPurchaseDataResponse {
//   const factory ReviewPurchaseDataResponse({
//     required String id,
//     DateTime? createdDatetime,
//     @Default([]) List<ReviewOrderedProductResponse> products,
//     double? total,
//     ReviewStoreDataResponse? store,
//   }) = _ReviewPurchaseDataResponse;
//
//   factory ReviewPurchaseDataResponse.fromJson(Map<String, dynamic> json) =>
//       _$ReviewPurchaseDataResponseFromJson(json);
// }
//
// @freezed
// class ReviewOrderedProductResponse with _$ReviewOrderedProductResponse {
//   const factory ReviewOrderedProductResponse({
//     required String id,
//     required double price,
//     String? name,
//     String? image,
//     @Default([]) List<ReviewOrderedModifierGroupResponse> modifiers,
//     double? quantity,
//     @Default('') @JsonKey(name: 'currencySymbol') String currencySymbol,
//   }) = _ReviewOrderedProductResponse;
//
//   factory ReviewOrderedProductResponse.fromJson(Map<String, dynamic> json) =>
//       _$ReviewOrderedProductResponseFromJson(json);
// }
//
// @freezed
// class ReviewOrderedModifierGroupResponse
//     with _$ReviewOrderedModifierGroupResponse {
//   const factory ReviewOrderedModifierGroupResponse({
//     String? name,
//     required List<ReviewOrderedModifierResponse> options,
//   }) = _ReviewOrderedModifierGroupResponse;
//
//   factory ReviewOrderedModifierGroupResponse.fromJson(
//           Map<String, dynamic> json) =>
//       _$ReviewOrderedModifierGroupResponseFromJson(json);
// }
//
// @freezed
// class ReviewOrderedModifierResponse with _$ReviewOrderedModifierResponse {
//   const factory ReviewOrderedModifierResponse({
//     required String id,
//     String? name,
//     double? quantity,
//     double? price,
//   }) = _ReviewOrderedModifierResponse;
//
//   factory ReviewOrderedModifierResponse.fromJson(Map<String, dynamic> json) =>
//       _$ReviewOrderedModifierResponseFromJson(json);
// }
