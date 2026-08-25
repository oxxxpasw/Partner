part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.init) HomeStatus status,
    List<Division>? divisions,
    List<VendistaRequest>? vendistaRequests,
    List<MetricPeriodItem>? metricPeriods,
    MetricPeriodItem? period,
  }) = _HomeState;
}

enum HomeStatus {
  init,
  loading,
  showDivisions,
  showVendistaRequests,
  empty,
  hasRequests,
}

@freezed
sealed class HomeSr with _$HomeSr {
  const factory HomeSr.error(String error) = HomeErrorSr;
  
  const factory HomeSr.success(String message) = HomeSuccessSr;

  const factory HomeSr.openDetails(VendistaRequest request) =
      HomeSrOpenDetailsSr;
}
