part of 'create_new_vendista_request_bloc.dart';

@freezed
abstract class CreateNewVendistaRequestState with _$CreateNewVendistaRequestState {
  const factory CreateNewVendistaRequestState({
    @Default(CreateNewVendistaRequestStatus.init)
    CreateNewVendistaRequestStatus status,
    List<int>? terminals,
  }) = _CreateNewVendistaRequestState;
}

@freezed
sealed class CreateNewVendistaRequestSr with _$CreateNewVendistaRequestSr {
  const factory CreateNewVendistaRequestSr.error(String message) =
      CreateNewVendistaRequestErrorSr;

  const factory CreateNewVendistaRequestSr.created() =
      CreateNewVendistaRequestCreatedSr;

  const factory CreateNewVendistaRequestSr.showCMIdSelectScreen() =
      ShowCMIdSelectScreen;
}

enum CreateNewVendistaRequestStatus {
  init,
  loading,
  ready,
  creating,
  error,
}
