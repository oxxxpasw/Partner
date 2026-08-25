import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendista_request.freezed.dart';

part 'vendista_request.g.dart';

@freezed
abstract class VendistaRequest with _$VendistaRequest {
  const VendistaRequest._();

  const factory VendistaRequest({
    required String code,
    required DateTime date,
    required int idVendista,
    required VendistaRequestStatus status,
  }) = _VendistaRequest;

  factory VendistaRequest.fromJson(Map<String, dynamic> json) =>
      _$VendistaRequestFromJson(json);

  @JsonKey(ignore: true)
  bool get needAdditionalInfo => status == VendistaRequestStatus.verified;
}

enum VendistaRequestStatus {
  underReview,
  rejected,
  verified,
  dataSent,
  closed,
  unknown,
}
