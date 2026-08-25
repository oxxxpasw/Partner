import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/temperature_response/temperature_response.dart';
import 'package:sosedifedi/data/repository/division_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'unit_temp_state.dart';
part 'unit_temp_cubit.freezed.dart';

@injectable
class UnitTempCubit extends SrCubit<UnitTempState, UnitTempSr> {
  UnitTempCubit({
    required this.divisionRepository,
    @factoryParam required this.unitId,
  }) : super(const UnitTempState());

  @protected
  final DivisionRepository divisionRepository;
  @protected
  final String unitId;

  Future<void> loadData() async {
    emit(state.copyWith(status: UnitTempStateStatus.loading));

    final response = await divisionRepository.getTemperatures(unitId: unitId);

    if (response.hasError) {
      emit(state.copyWith(status: UnitTempStateStatus.init));
      addSr(UnitTempSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(
      state.copyWith(
        status: UnitTempStateStatus.ready,
        temperatures: response.result,
      ),
    );
  }
}
