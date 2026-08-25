import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/vendista_requests_repository.dart';
import 'package:sosedifedi/domain/models/vendista_request/vendista_request.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'vendista_request_list_cubit.freezed.dart';
part 'vendista_request_list_state.dart';

@injectable
class VendistaRequestListCubit
    extends SrCubit<VendistaRequestListState, VendistaRequestListSr> {
  VendistaRequestListCubit({
    required this.vendistaRequestsRepository,
  }) : super(const VendistaRequestListState());

  @protected
  final VendistaRequestsRepository vendistaRequestsRepository;

  Future<void> loadData() async {
    if (state.status == VendistaRequestListStatus.init) {
      emit(state.copyWith(status: VendistaRequestListStatus.loading));
    }

    final response = await vendistaRequestsRepository.getAllRequests();
    if (response.hasError) {
      emit(
        state.copyWith(
          status: VendistaRequestListStatus.ready,
          requests: [],
        ),
      );
      addSr(
        VendistaRequestListSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      addError(response.error);
      return;
    }
    emit(
      state.copyWith(
        status: VendistaRequestListStatus.ready,
        requests: response.result,
      ),
    );
  }

  void onOpenDetailsPressed(VendistaRequest request) {
    if (request.status != VendistaRequestStatus.verified) return;
    addSr(VendistaRequestListSr.openDetails(request));
  }
}
