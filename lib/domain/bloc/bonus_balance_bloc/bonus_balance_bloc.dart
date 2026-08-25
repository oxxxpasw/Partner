import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/models/customer_account_model/customer_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bonus_balance_state.dart';
part 'bonus_balance_bloc.freezed.dart';

@injectable
class BonusBalanceBloc extends Cubit<BonusBalanceState> {
  BonusBalanceBloc({
    required this.customerAccountRepository,
    required this.analystService,
  }) : super(const BonusBalanceState()) {
    _subscription = customerAccountRepository.customerAccount.listen((account) {
      emit(
        state.copyWith(
          bonusBalance: account?.card?.bonuses,
        ),
      );
      analystService.bonusCardChanged(
        bonusCard: account?.card?.cardNumber,
      );
    });
  }

  @protected
  final CustomerAccountRepository customerAccountRepository;
  @protected
  final AnalystService analystService;

  StreamSubscription<CustomerAccountModel?>? _subscription;

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
