import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/division_repository.dart';
import 'package:sosedifedi/data/repository/vendista_requests_repository.dart';
import 'package:sosedifedi/data/repository/feedback_repository.dart';
import 'package:sosedifedi/domain/models/divisions/division/division.dart';
import 'package:sosedifedi/domain/models/metric_periods/metric_periods.dart';
import 'package:sosedifedi/domain/models/vendista_request/vendista_request.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends SrCubit<HomeState, HomeSr> {
  Timer? _autoRefreshTimer;

  HomeCubit({
    required this.divisionRepository,
    required this.vendistaRequestsRepository,
    required this.appEnvironment,
    required this.feedbackRepository,
  }) : super(const HomeState()) {
    _autoRefreshTimer = Timer.periodic(
      const Duration(minutes: 30),
      (_) => loadData(true),
    );
  }

  @override
  Future<void> close() {
    _autoRefreshTimer?.cancel();
    return super.close();
  }

  @protected
  final DivisionRepository divisionRepository;
  @protected
  final VendistaRequestsRepository vendistaRequestsRepository;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final FeedbackRepository feedbackRepository;

  Future<void> loadData([isRefresh = false]) async {
    if (!isRefresh) {
      emit(state.copyWith(status: HomeStatus.loading));
    }
    if (state.metricPeriods == null) {
      final periodResponse = await divisionRepository.getMetricPeriods();
      if (periodResponse.hasError) {
        addSr(
          HomeSr.error(
            ErrorMessages.getMessage(periodResponse.error),
          ),
        );
        return addError(periodResponse.error);
      }

      emit(
        state.copyWith(
          metricPeriods: periodResponse.result.items,
          period: periodResponse.result.defaultItem,
        ),
      );
    }

    final period = state.period;

    if (period == null) {
      return;
    }

    final response = await divisionRepository.getDivisions(period);
    if (response.hasError) {
      addError(response.error);
      addSr(
        HomeSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      return;
    }

    if (response.result.isNotEmpty) {
      emit(
        state.copyWith(
          divisions: response.result,
          status: HomeStatus.showDivisions,
          vendistaRequests: [],
        ),
      );
      return;
    }

    final vendistaRequestsResponse =
        await vendistaRequestsRepository.getAllRequests();

    if (vendistaRequestsResponse.hasError) {
      addError(vendistaRequestsResponse.error);
      addSr(
        HomeSr.error(
          ErrorMessages.getMessage(vendistaRequestsResponse.error),
        ),
      );
      return;
    }

    if (vendistaRequestsResponse.result.isNotEmpty) {
      emit(
        state.copyWith(
          divisions: [],
          status: HomeStatus.showVendistaRequests,
          vendistaRequests: vendistaRequestsResponse.result,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: HomeStatus.empty,
        divisions: [],
        vendistaRequests: [],
      ),
    );
  }

  onPeriodChanged(MetricPeriodItem period) {
    emit(state.copyWith(period: period));
    loadData();
  }

  void onOpenDetailsPressed(VendistaRequest request) {
    if (request.status != VendistaRequestStatus.verified) return;
    addSr(HomeSr.openDetails(request));
  }

  Future<void> onGoToWebsitePressed() async {
    final response = await feedbackRepository.sendFeedback(
      kind: 'partner',
      comment: 'Заявка на партнерство / покупку оборудования из приложения',
    );
    if (response.hasError) {
      addSr(HomeSr.error('Не удалось отправить заявку'));
    } else {
      addSr(HomeSr.success('Заявка успешно отправлена! Мы свяжемся с вами.'));
    }
  }
}
