import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sosedifedi/data/models/auth_data/auth_data.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/domain/models/customer_account_model/customer_account_model.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/launch_url/launch_url_in_web_view.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

part 'user_profile_bloc.freezed.dart';
part 'user_profile_state.dart';

@injectable
class UserProfileBloc extends SrCubit<UserProfileState, UserProfileSr> {
  UserProfileBloc({
    required this.customerAccountRepository,
    required this.authRepository,
    required this.appEnvironment,
    required this.cityRepository,
    required this.remoteConfigRepository,
  }) : super(const UserProfileState()) {
    _subscription.add(authRepository.tokenStream.listen(_handleAuthEvent));
    _subscription.add(customerAccountRepository.customerAccount
        .listen(_handleAccountEvent, onError: _handleAccountError));
    _subscription.add(cityRepository.selectedCityStream
        .listen(_handleCityEvent, onError: _handleAccountError));
  }

  @protected
  final AuthRepository authRepository;
  @protected
  final CustomerAccountRepository customerAccountRepository;
  @protected
  final CityRepository cityRepository;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final RemoteConfigRepository remoteConfigRepository;

  final _subscription = CompositeSubscription();

  void _handleAuthEvent(AuthData? authData) {
    emit(
      state.copyWith(
        bonusCard: null,
        status: UserProfileStatus.ready,
        isAuthorized: authData != null,
      ),
    );
  }

  void _handleAccountEvent(CustomerAccountModel? customerAccount) {
    emit(
      state.copyWith(
        bonusCard: customerAccount?.card,
      ),
    );
  }

  void _handleCityEvent(City? city) {
    emit(
      state.copyWith(
        selectedCity: city,
      ),
    );
  }

  void _handleAccountError(Object error) {
    emit(
      state.copyWith(
        status: UserProfileStatus.ready,
        bonusCard: null,
      ),
    );
  }

  Future<void> logout() async {
    authRepository.logout();
  }

  Future<void> deleteAccount() async {
    authRepository.deleteAccount();
  }

  // openAboutUs() async {
  //   try {
  //     final uri = '${appEnvironment.apiEndpoint}static/legal/about-us.pdf';
  //     final path =
  //         '${(await getTemporaryDirectory()).path}${Platform.pathSeparator}/downloads/about-us.pdf';
  //     final file = File(path);
  //     final options = NetworkFileOptions(
  //       file: file,
  //       onDone: () async {
  //         await OpenFilex.open(path);
  //       },
  //     );
  //     await NetworkFile.download(uri, options);
  //   } catch (e) {
  //     addError(e);
  //   }
  // }

  Future<void> launchUserAgreement() =>
      launchUrlInBrowser(appEnvironment.legalInfo.userAgreementUrl);

  Future<void> launchPublicOffer() =>
      launchUrlInBrowser(appEnvironment.legalInfo.publicOfferUrl);

  Future<void> launchPrivacyPolicy() =>
      launchUrlInBrowser(appEnvironment.legalInfo.privacyPolicyUrl);

  void launchKnowledgeBase() => addSr(
        UserProfileSr.openKnowledgeBase(
          Uri.parse(appEnvironment.knowledgeBaseUrl),
        ),
      );

  Future<void> onGiveFeedbackPressed() async {
    try {
      final feedbackUri = remoteConfigRepository.config.feedbackUrl;

      if (feedbackUri != null && await canLaunchUrl(feedbackUri)) {
        await launchUrl(
          feedbackUri,
          mode: LaunchMode.externalApplication,
        );
      }
    } catch (e) {
      addError(e);
    }
  }

  Future<void> onOpenNotificationSettingsPressed() async {
    try {
      await AppSettings.openAppSettings(type: AppSettingsType.notification);
    } catch (e) {
      addError(e);
    }
  }

  Future<void> onGoToWebsitePressed() =>
      launchUrlInBrowser(appEnvironment.websiteUrl);

  @override
  Future<void> close() async {
    _subscription.cancel();
    super.close();
  }
}
