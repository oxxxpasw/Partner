import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/update/update.dart';
import 'package:sosedifedi/data/repository/update_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/interactor/startup_interactor.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

import 'store_navigator.dart';

part 'splash_bloc.freezed.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends SrCubit<SplashState, SplashSr> {
  SplashBloc({
    required this.updateRepository,
    required this.startupInteractor,
    required this.appEnvironment,
    required this.analystService,
  }) : super(const SplashState.init());

  @protected
  final UpdateRepository updateRepository;
  @protected
  final StartupInteractor startupInteractor;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final AnalystService analystService;

  UpdateData? _updateData;

  AppsStoreLinks? get _storeLinks => _updateData?.updates?.storeLinks;

  Future<void> init() async {
    try {
      emit(const SplashState.loading());
      final deepLink = await getInitialDeepLink();
      analystService.appOpen(deeplink: deepLink);
      final response = await startupInteractor.initialize();
      if (response.hasError) {
        addSr(
          SplashSr.error(ErrorMessages.getMessage(response.error)),
        );
        return;
      }

      final update = await updateRepository.checkUpdates();
      _updateData = update;
      switch (update.type) {
        case UpdateType.immediate:
          addSr(
            const SplashSr.needUpdate(),
          );
        case UpdateType.optional:
        case UpdateType.none:
        addSr(
          SplashSr.ready(
            initialDeepLink: deepLink,
          ),
        );
      }
      _tryUpdateAndroid(update.type);
    } catch (e, stack) {
      addSr(SplashSr.error(ErrorMessages.undefinedError));
      addError(e, stack);
    }
  }

  Future<String?> getInitialDeepLink() {
    return startupInteractor.getInitialDeepLink();
  }

  Future<void> _tryUpdateAndroid(UpdateType updateType) async {
    try {
      if (defaultTargetPlatform != TargetPlatform.android) {
        return;
      }
      final update = await InAppUpdate.checkForUpdate();
      if ((updateType == UpdateType.immediate || update.updatePriority >= 5) &&
          update.updateAvailability == UpdateAvailability.updateAvailable &&
          update.immediateUpdateAllowed) {
        InAppUpdate.performImmediateUpdate();
        return;
      }
      if ((updateType == UpdateType.optional || update.updatePriority >= 2) &&
          update.updateAvailability == UpdateAvailability.updateAvailable &&
          update.flexibleUpdateAllowed) {
        InAppUpdate.completeFlexibleUpdate();
        return;
      }
    } catch (e, stack) {
      addError(e, stack);
    }
  }

  Future<void> sendUserToAppStore() async {
    final navigator = StoreNavigator.getNavigator(_storeLinks);
    if (navigator != null) {
      await navigator.sendUserToStore((e) {
        addError(e);
      });
    }
  }
}
