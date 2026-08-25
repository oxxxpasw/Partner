import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';

@singleton
class FeedbackRepository {
  FeedbackRepository(
    this._appEnvironment,
    this._authRepository,
  );

  final AppEnvironment _appEnvironment;
  final AuthRepository _authRepository;
  final Dio _dio = Dio();

  Future<ApiResponse<CommonResponseError, void>> sendFeedback({
    required String kind,
    String? comment,
  }) async {
    try {
      final token = await _authRepository.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }

      final url = '${_appEnvironment.apiEndpoint}v1/feedback';
      final response = await _dio.post(
        url,
        data: {
          'kind': kind,
          'comment': comment,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
        return const ApiResponse.success(null);
      } else {
        return ApiResponse.error(CommonResponseError.undefinedError(response.data));
      }
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
