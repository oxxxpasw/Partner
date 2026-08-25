part of 'feedback_cubit.dart';

enum FeedbackType {
  purchase,
  store,
  app,
  other,
}

@freezed
abstract class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    required FeedbackType type,
    @Default(FeedbackStateStatus.init) FeedbackStateStatus status,
    AcceptedOrder? order,
    Store? store,
  }) = _FeedbackState;
}

@freezed
sealed class FeedbackSr with _$FeedbackSr {
  const factory FeedbackSr.showStoreList() = FeedbackShowStoreListSr;

  const factory FeedbackSr.showOrderList() = FeedbackShowOrderListSr;

  const factory FeedbackSr.success() = FeedbackSuccessSr;

  const factory FeedbackSr.error(String error) = FeedbackErrorSr;
}

enum FeedbackStateStatus {
  init,
  ready,
}
