part of 'review_details_cubit.dart';

@freezed
abstract class ReviewDetailsState with _$ReviewDetailsState {
  const factory ReviewDetailsState({
    @Default(ReviewDetailsStateStatus.init) ReviewDetailsStateStatus status,
    ReviewDetails? review,
  }) = _ReviewDetailsState;
}

enum ReviewDetailsStateStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class ReviewDetailsSr with _$ReviewDetailsSr {
  const factory ReviewDetailsSr.error(String message) = ReviewDetailsErrorSr;
}
