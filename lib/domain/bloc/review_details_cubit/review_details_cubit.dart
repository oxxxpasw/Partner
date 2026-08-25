import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/review_repository.dart';
import 'package:sosedifedi/domain/models/review/review.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'review_details_state.dart';
part 'review_details_cubit.freezed.dart';

@injectable
class ReviewDetailsCubit extends SrCubit<ReviewDetailsState, ReviewDetailsSr> {
  ReviewDetailsCubit({
    required this.reviewRepository,
    @factoryParam required this.reviewId,
  }) : super(const ReviewDetailsState());

  @protected
  final ReviewRepository reviewRepository;
  @protected
  final String reviewId;

  Future<void> loadData() async {
    emit(state.copyWith(status: ReviewDetailsStateStatus.loading));

    final response = await reviewRepository.getReviewById(reviewId: reviewId);

    if (response.hasError) {
      addError(response.error);
      addSr(
        ReviewDetailsSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        status: ReviewDetailsStateStatus.ready,
        review: response.result,
      ),
    );
  }
}
