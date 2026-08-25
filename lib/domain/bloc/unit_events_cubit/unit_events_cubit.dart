import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/connection_status_response/connection_status_response.dart';
import 'package:sosedifedi/data/repository/division_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'unit_events_state.dart';
part 'unit_events_cubit.freezed.dart';

@injectable
class UnitEventsCubit extends SrCubit<UnitEventsState, UnitEventsSr> {
  UnitEventsCubit({
    required this.divisionRepository,
    @factoryParam required this.unitId,
  }) : super(const UnitEventsState());

  @protected
  final DivisionRepository divisionRepository;
  @protected
  final String unitId;

  Future<void> loadData() async {
    emit(state.copyWith(status: UnitEventsStateStatus.loading));

    final response =
        await divisionRepository.getConnectionStatuses(unitId: unitId);

    if (response.hasError) {
      emit(state.copyWith(status: UnitEventsStateStatus.init));
      addSr(UnitEventsSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(
      state.copyWith(
        status: UnitEventsStateStatus.ready,
        statuses: response.result,
      ),
    );
  }
}
