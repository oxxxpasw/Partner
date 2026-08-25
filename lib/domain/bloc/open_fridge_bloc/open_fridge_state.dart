part of 'open_fridge_cubit.dart';

@freezed
abstract class OpenFridgeState with _$OpenFridgeState {
  const factory OpenFridgeState({
    @Default(OpenFridgeStateStatus.ready) OpenFridgeStateStatus status,
  }) = _OpenFridgeState;
}

enum OpenFridgeStateStatus {
  loading,
  ready,
}

@freezed
sealed class OpenFridgeSr with _$OpenFridgeSr {
  const factory OpenFridgeSr.error(String message) = OpenFridgeErrorSr;

  const factory OpenFridgeSr.showSuccessMessage() =
      OpenFridgeShowSuccessMessageSr;
}
