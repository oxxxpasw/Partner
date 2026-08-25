part of 'vendista_request_list_cubit.dart';

@freezed
abstract class VendistaRequestListState with _$VendistaRequestListState {
  const factory VendistaRequestListState({
    @Default(VendistaRequestListStatus.init) VendistaRequestListStatus status,
    List<VendistaRequest>? requests,
  }) = _VendistaRequestListState;
}

@freezed
sealed class VendistaRequestListSr with _$VendistaRequestListSr {
  const factory VendistaRequestListSr.error(String message) =
      VendistaRequestListErrorSr;

  const factory VendistaRequestListSr.openDetails(VendistaRequest request) =
      VendistaRequestListOpenDetailsSr;
}

enum VendistaRequestListStatus {
  init,
  loading,
  ready,
}
