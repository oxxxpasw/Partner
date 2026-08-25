part of 'report_data_cubit.dart';

@freezed
abstract class ReportDataState with _$ReportDataState {
  const factory ReportDataState({
    @Default(ReportDataStatus.init) ReportDataStatus status,
    ReportData? data,
    DateTime? startDate,
    DateTime? endDate,
  }) = _ReportDataState;
}

enum ReportDataStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class ReportDataSr with _$ReportDataSr {
  const factory ReportDataSr.error(String message) = ReportDataErrorSr;
}
