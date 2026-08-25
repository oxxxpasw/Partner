part of 'bonus_program_info_bloc.dart';

@freezed
abstract class BonusProgramInfoState with _$BonusProgramInfoState {
  @Assert('status != BonusProgramInfoStatus.ready || bonusCard != null')
  const factory BonusProgramInfoState({
    @Default(BonusProgramInfoStatus.init) BonusProgramInfoStatus status,
    BonusCardModel? bonusCard,
  }) = _BonusProgramInfoState;
}

enum BonusProgramInfoStatus {
  init,
  loading,
  ready,
}

@freezed
abstract class BonusProgramInfoSr with _$BonusProgramInfoSr {
  const factory BonusProgramInfoSr.error(String error) =
      _BonusProgramInfoErrorSr;
}
