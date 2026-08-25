part of 'create_new_vendista_request_bloc.dart';

@freezed
sealed class CreateNewVendistaRequestEvent
    with _$CreateNewVendistaRequestEvent {
  const factory CreateNewVendistaRequestEvent.init() = _Init;

  const factory CreateNewVendistaRequestEvent.getTerminalsPressed({
    required String login,
    required String password,
  }) = _GetTerminalsPressed;

  const factory CreateNewVendistaRequestEvent.createPressed({
    required List<int> idVendista,
  }) = _CreatePressed;
}
