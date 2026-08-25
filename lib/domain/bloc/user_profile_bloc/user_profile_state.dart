part of 'user_profile_bloc.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    @Default(UserProfileStatus.init) UserProfileStatus status,
    @Default(false) bool isAuthorized,
    BonusCardModel? bonusCard,
    City? selectedCity,
  }) = _UserProfileState;
}

@freezed
sealed class UserProfileSr with _$UserProfileSr {
  const factory UserProfileSr.error(String message) = UserProfileErrorSr;
  const factory UserProfileSr.openKnowledgeBase(Uri uri) =
      UserProfileOpenKnowledgeBaseSr;
}

enum UserProfileStatus {
  init,
  loading,
  ready,
}
