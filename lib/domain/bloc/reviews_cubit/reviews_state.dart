part of 'reviews_cubit.dart';

@freezed
abstract class ReviewsState with _$ReviewsState {
  @Assert('status != ReviewsStatus.ready || reviews != null')
  const factory ReviewsState({
    @Default(ReviewsStatus.initial) ReviewsStatus status,
    List<Review>? reviews,
  }) = _ReviewsState;
}

enum ReviewsStatus {
  initial,
  loading,
  ready,
}

@freezed
sealed class ReviewsSr with _$ReviewsSr {
  const factory ReviewsSr.error(String error) = ReviewsErrorSr;
}
