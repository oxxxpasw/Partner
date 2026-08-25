import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'feedback_cubit.freezed.dart';
part 'feedback_state.dart';

@injectable
class FeedbackCubit extends SrCubit<FeedbackState, FeedbackSr> {
  FeedbackCubit(@factoryParam FeedbackType type)
      : super(FeedbackState(type: type));

  void init() {
    switch (state.type) {
      case FeedbackType.purchase:
        addSr(const FeedbackSr.showOrderList());
      case FeedbackType.store:
        addSr(const FeedbackSr.showStoreList());
      case FeedbackType.app:
      case FeedbackType.other:
        break;
    }
    emit(
      state.copyWith(
        status: FeedbackStateStatus.ready,
      ),
    );
  }
}
