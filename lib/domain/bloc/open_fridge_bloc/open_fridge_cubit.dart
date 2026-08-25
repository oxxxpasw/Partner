import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/fridge_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'open_fridge_state.dart';
part 'open_fridge_cubit.freezed.dart';

@injectable
class OpenFridgeCubit extends SrCubit<OpenFridgeState, OpenFridgeSr> {
  OpenFridgeCubit({
    @factoryParam required this.fridgeId,
    required this.fridgeRepository,
  }) : super(const OpenFridgeState());

  @protected
  final String fridgeId;
  @protected
  final FridgeRepository fridgeRepository;

  Future<void> onOpenFridgePressed() async {
    emit(
      state.copyWith(
        status: OpenFridgeStateStatus.loading,
      ),
    );

    final response = await fridgeRepository.openFridge(fridgeId);

    emit(
      state.copyWith(
        status: OpenFridgeStateStatus.ready,
      ),
    );
    if (response.hasError) {
      addSr(
        OpenFridgeSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      return addError(response.error);
    }

    addSr(const OpenFridgeSr.showSuccessMessage());
  }
}
