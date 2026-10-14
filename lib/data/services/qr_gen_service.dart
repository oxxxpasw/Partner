import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

/// QR для точек генерирует бэкенд — пиксель-в-пиксель тот же рендер,
/// что используется для QR-наклеек в CRM.
abstract class QrGenService {
  Future<DefaultResponse<void>> shareQrFromUrl(
    String url, {
    String? name,
  });
}

@Singleton(as: QrGenService)
class QrGenServiceImpl implements QrGenService {
  // Dio здесь без инжекции: injectable_generator резолвил опциональный
  // параметр в безымянный Dio, которого нет в графе, — и $initGetIt падал
  // на старте ("Dio is not registered"), оставляя нативный сплеш навсегда.
  QrGenServiceImpl() : _dio = Dio();

  final Dio _dio;

  @override
  Future<DefaultResponse<void>> shareQrFromUrl(
    String url, {
    String? name,
  }) async {
    try {
      final fileName = '${name ?? 'qr_code'}.png';

      final response = await _dio.get<List<int>>(
        url,
        options: Options(responseType: ResponseType.bytes),
      );

      final file = await _makePngFile(fileName);
      await file.writeAsBytes(response.data ?? const <int>[]);

      final xFile = XFile(file.path);
      await Share.shareXFiles(
        [xFile],
        fileNameOverrides: [fileName],
      );

      await file.delete();

      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<File> _makePngFile(String? fileName) async {
    final directory = await getTemporaryDirectory();
    return File('${directory.path}/$fileName');
  }
}
