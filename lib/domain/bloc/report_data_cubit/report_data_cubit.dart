import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/division_repository.dart';
import 'package:sosedifedi/domain/models/reports/report_data/report_data.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'report_data_state.dart';
part 'report_data_cubit.freezed.dart';

@injectable
class ReportDataCubit extends SrCubit<ReportDataState, ReportDataSr> {
  Timer? _autoRefreshTimer;

  ReportDataCubit({
    required this.repository,
    @factoryParam required this.id,
    @factoryParam required this.unitId,
  }) : super(const ReportDataState()) {
    _autoRefreshTimer = Timer.periodic(
      const Duration(minutes: 30),
      (_) => loadData(),
    );
  }

  @override
  Future<void> close() {
    _autoRefreshTimer?.cancel();
    return super.close();
  }

  @protected
  final DivisionRepository repository;

  @protected
  final String id;
  @protected
  final String? unitId;

  Future<void> loadData() async {
    emit(state.copyWith(status: ReportDataStatus.loading));

    final startDate = state.startDate ?? DateTime.now().startOfDay;
    final endDate = state.endDate ?? DateTime.now().endOfDay;

    final response = await repository.getReportData(
      id: id,
      unitId: unitId,
      startDate: startDate,
      endDate: endDate,
    );
    if (response.hasError) {
      addError(response.error);
      addSr(ReportDataSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(
      state.copyWith(
        data: response.result,
        status: ReportDataStatus.ready,
        startDate: startDate,
        endDate: endDate,
      ),
    );
  }

  void changePeriod({
    required DateTime start,
    required DateTime end,
  }) {
    emit(
      state.copyWith(
        startDate: start.startOfDay,
        endDate: end.endOfDay,
      ),
    );
    loadData();
  }

  void resetPeriod() {
    emit(
      state.copyWith(
        startDate: DateTime.now().startOfDay,
        endDate: DateTime.now().endOfDay,
      ),
    );
    loadData();
  }
}

extension StartEndDate on DateTime {
  DateTime get startOfDay => DateUtils.dateOnly(this);

  DateTime get endOfDay => DateTime(year, month, day + 1).subtract(
        const Duration(milliseconds: 1),
      );
}
