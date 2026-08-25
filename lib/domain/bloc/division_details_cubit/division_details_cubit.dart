import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/division_mapper.dart';
import 'package:sosedifedi/data/models/reports/reports_response/reports_response.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/division_repository.dart';
import 'package:sosedifedi/data/repository/fridge_repository.dart';
import 'package:sosedifedi/data/repository/qr_gen_repsoitory.dart';
import 'package:sosedifedi/domain/models/divisions/division/division.dart';
import 'package:sosedifedi/domain/models/divisions/division_units/division_unit.dart';
import 'package:sosedifedi/domain/models/metric_periods/metric_periods.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'division_details_cubit.freezed.dart';
part 'division_details_state.dart';

@injectable
class DivisionDetailsCubit
    extends SrCubit<DivisionDetailsState, DivisionDetailsSr> {
  Timer? _autoRefreshTimer;

  DivisionDetailsCubit({
    required this.divisionRepository,
    @factoryParam required this.divisionId,
    required this.divisionMapper,
    required this.qrGenRepository,
    required this.fridgeRepository,
  }) : super(const DivisionDetailsState()) {
    unawaited(_getReports());
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
  final String divisionId;
  @protected
  final DivisionMapper divisionMapper;
  @protected
  final QrGenRepository qrGenRepository;
  @protected
  final FridgeRepository fridgeRepository;

  Future<void> loadData([isRefresh = false]) async {
    if (!isRefresh) {
      emit(
        state.copyWith(status: DivisionDetailsStatus.loading),
      );
    }

    if (state.metricPeriods == null) {
      final periodResponse = await divisionRepository.getMetricPeriods();
      if (periodResponse.hasError) {
        addSr(
          DivisionDetailsSr.error(
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

    final response = await divisionRepository.getDivisionUnits(
      divisionId: divisionId,
      period: period,
    );

    if (response.hasError) {
      addSr(
        DivisionDetailsSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      return addError(response.error);
    }

    emit(
      state.copyWith(
        units: response.result.units,
        division: response.result.division,
        ingredients: response.result.ingredients,
        status: DivisionDetailsStatus.ready,
      ),
    );
  }

  Future<void> _getReports() async {
    final response = await divisionRepository.getReports();
    if (response.isSuccess) {
      emit(
        state.copyWith(reports: response.result),
      );
    }
  }

  onPeriodChanged(MetricPeriodItem period) {
    emit(state.copyWith(period: period));
    loadData();
  }

  void onCreateDivisionDocumentPressed({
    required DivisionUnit divisionUnit,
    required OrderCreationType type,
  }) {
    addSr(
      DivisionDetailsSr.createDivisionDocument(
        store: divisionMapper.mapToDivisionToStore(state.division!),
        type: type,
        unitId: divisionUnit.unitId,
      ),
    );
  }

  void onGenQrPressed({
    required DivisionUnit unit,
  }) async {
    final result = await qrGenRepository.generateQrCodeForUnit(unit: unit);

    if (result.hasError) {
      addSr(
        DivisionDetailsSr.error(
          ErrorMessages.getMessage(result.error),
        ),
      );
      return addError(result.error);
    }
  }

  void onReportPressed(String id, String unitId) {
    addSr(
      DivisionDetailsSr.showReportScreen(
        id: id,
        unitId: unitId,
      ),
    );
  }

  void onEventsPressed(String unitId) {
    addSr(
      DivisionDetailsSr.showEventsScreen(
        unitId: unitId,
      ),
    );
  }

  void onTempPressed(String unitId) {
    addSr(
      DivisionDetailsSr.showTempScreen(
        unitId: unitId,
      ),
    );
  }
}
