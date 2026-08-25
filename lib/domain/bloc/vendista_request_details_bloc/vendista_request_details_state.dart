part of 'vendista_request_details_bloc.dart';

@freezed
abstract class VendistaRequestDetailsState with _$VendistaRequestDetailsState {
  const factory VendistaRequestDetailsState({
    @Default(VendistaRequestDetailsStatus.init)
    VendistaRequestDetailsStatus status,
    List<String>? cities,
    List<String>? districts,
    List<String>? regions,
    List<String>? vat,
    VendistaRequest? request,
    OrgInfo? orgInfo,
    String? selectedRegion,
    String? selectedDistrict,
  }) = _VendistaRequestDetailsState;
}

@freezed
sealed class VendistaRequestDetailsSr with _$VendistaRequestDetailsSr {
  const factory VendistaRequestDetailsSr.error(String message) =
      VendistaRequestDetailsErrorSr;

  const factory VendistaRequestDetailsSr.showLoadingOverlay() =
      VendistaRequestDetailsShowLoadingOverlaySr;

  const factory VendistaRequestDetailsSr.hideLoadingOverlay() =
      VendistaRequestDetailsHideLoadingOverlaySr;

  const factory VendistaRequestDetailsSr.success() =
      VendistaRequestDetailsSuccessSr;
}

enum VendistaRequestDetailsStatus {
  init,
  loading,
  ready,
  updating,
}
