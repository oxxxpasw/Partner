import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart';

part 'review.freezed.dart';

@freezed
abstract class ReviewDetails with _$ReviewDetails {
  const factory ReviewDetails({
    int? rate,
    DateTime? date,
    String? address,
    String? divisionId,
    String? divisionName,
    String? text,
    String? phone,
    List<String>? photos,
  }) = DefaultReviewDetails;

  @FreezedUnionValue('Store ID')
  const factory ReviewDetails.store({
    int? rate,
    DateTime? date,
    String? address,
    String? divisionId,
    String? divisionName,
    String? text,
    String? phone,
    List<String>? photos,
  }) = StoreReviewDetails;

  @FreezedUnionValue('Purchase ID')
  const factory ReviewDetails.purchase({
    int? rate,
    DateTime? date,
    String? address,
    String? divisionId,
    String? divisionName,
    String? text,
    String? phone,
    List<String>? photos,
    CompositionOfTheCheck? compositionOfTheCheck,
  }) = PurhcaseReviewDetails;
}

@freezed
abstract class CompositionOfTheCheck with _$CompositionOfTheCheck {
  const factory CompositionOfTheCheck({
    DateTime? dateOfPurchase,
    List<CheckPosition>? nomenclature,
    required double quantity,
    required double discountAmount,
    required double salesAmount,
  }) = _CompositionOfTheCheck;
}

@freezed
abstract class CheckPosition with _$CheckPosition {
  const factory CheckPosition({
    String? name,
    double? quantity,
  }) = _CheckPosition;
}

@freezed
abstract class Review with _$Review {
  const factory Review({
    required String id,
    required ReviewType type,
    int? rate,
    DateTime? date,
    String? address,
    String? divisionId,
    String? divisionName,
  }) = _Review;
}
