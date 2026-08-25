import 'package:dio/dio.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:uuid/uuid.dart';

import '../../utils/dio_error_handler/dio_error_handler.dart';

extension JsonRpcExtension<DE> on DioErrorHandler<DE> {
  Future<ApiResponse<CommonResponseError<DE>, T>> jsonRpc<T>({
    required Dio client,
    required String method,
    String path = '',
    Object? params,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    bool test = false,
  }) async {
    options ??= Options();
    final response = await processRequest<Response<dynamic>>(
      () => client.post(
        path,
        data: {
          'jsonrpc': '2.0',
          'method': method,
          'params': params,
          'id': const Uuid().v4(),
        },
        options: options!.copyWith(
          headers: {
            ...?options.headers,
          },
        ),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      ),
      test,
    );
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result.data['result'] as T);
  }
}
