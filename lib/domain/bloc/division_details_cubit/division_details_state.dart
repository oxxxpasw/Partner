part of 'division_details_cubit.dart';

@freezed
abstract class DivisionDetailsState with _$DivisionDetailsState {
  const factory DivisionDetailsState({
    @Default(DivisionDetailsStatus.init) DivisionDetailsStatus status,
    List<DivisionUnit>? units,
    List<MetricPeriodItem>? metricPeriods,
    MetricPeriodItem? period,
    List<ReportResponse>? reports,
    Division? division,
    @Default([]) List<Map<String, dynamic>> ingredients,
  }) = _DivisionDetailsState;
}

@freezed
sealed class DivisionDetailsSr with _$DivisionDetailsSr {
  const factory DivisionDetailsSr.error(String message) =
      DivisionDetailsErrorSr;

  const factory DivisionDetailsSr.createDivisionDocument({
    required Store store,
    required OrderCreationType type,
    required String unitId,
  }) = CreateDivisionDocumentSr;

  const factory DivisionDetailsSr.showReportScreen({
    required String id,
    required String unitId,
  }) = ShowReportScreenSr;

  const factory DivisionDetailsSr.showEventsScreen({
    required String unitId,
  }) = ShowEventsScreenSr;

  const factory DivisionDetailsSr.showTempScreen({
    required String unitId,
  }) = ShowTempScreenSr;
}

enum DivisionDetailsStatus {
  init,
  loading,
  ready,
}
