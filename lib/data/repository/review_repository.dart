import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/review_mapper.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/api1c_service.dart';
import 'package:sosedifedi/domain/models/review/review.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class ReviewRepository {
  const ReviewRepository();

  Future<DefaultResponse<List<Review>>> getReviews({String? storeId});

  Future<DefaultResponse<ReviewDetails>> getReviewById(
      {required String reviewId});
}

@Singleton(as: ReviewRepository)
class ReviewRepositoryImpl implements ReviewRepository {
  const ReviewRepositoryImpl({
    required this.apiService,
    required this.reviewMapper,
    required this.authRepository,
  });

  @protected
  final Api1cService apiService;
  @protected
  final ReviewMapper reviewMapper;
  @protected
  final AuthRepository authRepository;

  @override
  Future<DefaultResponse<List<Review>>> getReviews({String? storeId}) async {
    try {
      final token = authRepository.authData?.user.token;

      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }

      final response = await apiService.getReviews(token: token);

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        response.result.reviews
            .map(reviewMapper.mapReviewFromResponse)
            .toList(),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<ReviewDetails>> getReviewById({
    required String reviewId,
  }) async {
    try {
      final token = authRepository.authData?.user.token;

      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }

      final response = await apiService.getReviewById(
        token: token,
        id: reviewId,
      );

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        reviewMapper.mapReviewDetailsFromResponse(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
