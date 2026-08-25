part of 'vendista_request_details_bloc.dart';

@freezed
abstract class VendistaRequestDetailsEvent with _$VendistaRequestDetailsEvent {
  const factory VendistaRequestDetailsEvent.init() = _Init;

  const factory VendistaRequestDetailsEvent.regionChanged(String region) =
      _RegionChanged;

  const factory VendistaRequestDetailsEvent.districtChanged(String district) =
      _DistrictChanged;

  const factory VendistaRequestDetailsEvent.confirmPressed({
    required OrganizationType organizationType,
    required String organizationName,
    required String vat,
    required String city,
    required String address,
    required String name,
    required double latitude,
    required double longitude,
  }) = _ConfirmPressed;
}
