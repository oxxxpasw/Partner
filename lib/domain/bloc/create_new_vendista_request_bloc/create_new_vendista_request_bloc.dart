import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/vendista_requests_repository.dart';
import 'package:sosedifedi/data/repository/feedback_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'create_new_vendista_request_bloc.freezed.dart';
part 'create_new_vendista_request_event.dart';
part 'create_new_vendista_request_state.dart';

@injectable
class CreateNewVendistaRequestBloc extends SrBloc<CreateNewVendistaRequestEvent,
    CreateNewVendistaRequestState, CreateNewVendistaRequestSr> {
  CreateNewVendistaRequestBloc({
    required this.vendistaRequestRepository,
    required this.feedbackRepository,
  }) : super(const CreateNewVendistaRequestState()) {
    on<_Init>(_onInit);

    on<_GetTerminalsPressed>(_onGetTerminalsPressed);

    on<_CreatePressed>(_onCreatePressed);
  }

  @protected
  final VendistaRequestsRepository vendistaRequestRepository;

  @protected
  final FeedbackRepository feedbackRepository;

  @visibleForTesting
  String? login;

  @visibleForTesting
  String? password;

  Future<void> _onInit(
    _Init event,
    Emitter<CreateNewVendistaRequestState> emit,
  ) async {
    login = null;
    password = null;
    emit(state.copyWith(status: CreateNewVendistaRequestStatus.ready));
  }

  Future<void> _onGetTerminalsPressed(
    _GetTerminalsPressed event,
    Emitter<CreateNewVendistaRequestState> emit,
  ) async {
    emit(state.copyWith(status: CreateNewVendistaRequestStatus.loading));
    login = event.login;
    password = event.password;
    final response = await vendistaRequestRepository.getTerminals(
      login: event.login,
      password: event.password,
    );

    if (response.hasError) {
      emit(
        state.copyWith(
          status: CreateNewVendistaRequestStatus.error,
          terminals: [],
        ),
      );
      addSr(
        CreateNewVendistaRequestSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      addError(response.error);
      return;
    }

    addSr(const CreateNewVendistaRequestSr.showCMIdSelectScreen());
    emit(
      state.copyWith(
        status: CreateNewVendistaRequestStatus.ready,
        terminals: response.result,
      ),
    );
  }

  Future<void> _onCreatePressed(
    _CreatePressed event,
    Emitter<CreateNewVendistaRequestState> emit,
  ) async {
    try {
      assert(this.login != null && this.password != null);
      emit(state.copyWith(status: CreateNewVendistaRequestStatus.creating));

      final login = this.login!;
      final password = this.password!;

      final response = await vendistaRequestRepository.createNewRequest(
        login: login,
        password: password,
        idVendista: event.idVendista,
      );

      if (response.hasError) {
        emit(
          state.copyWith(
            status: CreateNewVendistaRequestStatus.ready,
          ),
        );
        addSr(
          CreateNewVendistaRequestSr.error(
            ErrorMessages.getMessage(response.error),
          ),
        );
        addError(response.error);
        return;
      }
      
      await feedbackRepository.sendFeedback(
        kind: 'partner',
        comment: 'Заявка на подключение терминалов Vendista. ID терминалов: ${event.idVendista.join(", ")}',
      );
      
      addSr(const CreateNewVendistaRequestSr.created());
    } catch (e) {
      emit(
        state.copyWith(
          status: CreateNewVendistaRequestStatus.ready,
          terminals: [],
        ),
      );
      addSr(
        CreateNewVendistaRequestSr.error(ErrorMessages.undefinedError),
      );
      addError(e);
    }
  }
}
