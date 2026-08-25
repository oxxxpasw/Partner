part of 'unit_events_cubit.dart';

@freezed
abstract class UnitEventsState with _$UnitEventsState {
  const factory UnitEventsState({
    @Default(UnitEventsStateStatus.init) UnitEventsStateStatus status,
    List<ConnectionStatus>? statuses,
  }) = _UnitEventsState;
}

enum UnitEventsStateStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class UnitEventsSr with _$UnitEventsSr {
  const factory UnitEventsSr.error(String message) = UnitEventsErrorSr;
}
