import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_data_request.freezed.dart';
part 'new_data_request.g.dart';

@Freezed(toJson: true)
abstract class NewDataRequest with _$NewDataRequest {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory NewDataRequest({
    required OrganizationType entityType,
    required String organization,
    required String vat,
    required String city,
    required String address,
    required String locationName,
    required double latitude,
    required double longitude,
    required String requestId,
  }) = _NewDataRequest;
}

enum OrganizationType {
  @JsonValue(0)
  individual,
  @JsonValue(1)
  legal,
}
