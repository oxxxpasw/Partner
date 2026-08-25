import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'vendista_request_response.freezed.dart';

part 'vendista_request_response.g.dart';

@freezed
abstract class VendistaRequestItemResponse with _$VendistaRequestItemResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory VendistaRequestItemResponse({
    required String code,
    required DateTime date,
    required int idVendista,
    @JsonKey(
      unknownEnumValue: VendistaRequestStatusResponse.unknown,
      defaultValue: VendistaRequestStatusResponse.unknown,
    )
    required VendistaRequestStatusResponse status,
  }) = _VendistaRequestItemResponse;

  factory VendistaRequestItemResponse.fromJson(Map<String, dynamic> json) =>
      _$VendistaRequestItemResponseFromJson(json);
}

enum VendistaRequestStatusResponse {
  @JsonValue('На рассмотрении')
  underReview,
  @JsonValue('Отклонена')
  rejected,
  @JsonValue('Прошла проверку')
  verified,
  @JsonValue('Данные отправлены')
  dataSent,
  @JsonValue('Закрыта')
  closed,
  unknown,
}
