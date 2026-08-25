part of 'unit_temp_cubit.dart';

@freezed
abstract class UnitTempState with _$UnitTempState {
  const factory UnitTempState({
    @Default(UnitTempStateStatus.init) UnitTempStateStatus status,
    List<UnitTemperature>? temperatures,
  }) = _UnitTempState;
}

enum UnitTempStateStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class UnitTempSr with _$UnitTempSr {
  const factory UnitTempSr.error(String message) = UnitTempErrorSr;
}
