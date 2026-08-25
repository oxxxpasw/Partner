import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'connection_status_response.freezed.dart';
part 'connection_status_response.g.dart';

@freezed
abstract class ConnectionStatus with _$ConnectionStatus {
  const factory ConnectionStatus({
    DateTime? createdDatetime,
    String? status,
  }) = _ConnectionStatus;

  factory ConnectionStatus.fromJson(Map<String, dynamic> json) =>
      _$ConnectionStatusFromJson(json);
}
