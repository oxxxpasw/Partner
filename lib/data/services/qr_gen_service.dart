import 'dart:io';

import 'package:barcode_image/barcode_image.dart';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class QrGenService {
  Future<DefaultResponse<void>> shareQr(
    String data, {
    QRCorrectionLevel correctionLevel,
    String? name,
  });
}

enum QRCorrectionLevel {
  /// 7% of codewords can be restored.
  low,

  /// 15% of codewords can be restored.
  medium,

  /// 25% of codewords can be restored.
  quartile,

  /// 30% of codewords can be restored
  high,
}

const _kImageSize = 1024;
const _kBarcodeSize = 924;

@Singleton(as: QrGenService)
class QrGenServiceImpl implements QrGenService {
  @override
  Future<DefaultResponse<void>> shareQr(
    String data, {
    QRCorrectionLevel correctionLevel = QRCorrectionLevel.low,
    String? name,
  }) async {
    try {
      final fileName = '${name ?? 'qr_code'}.png';
      final file = await _makePPNGFile(fileName);

      final errorCorrectLevel = switch (correctionLevel) {
        QRCorrectionLevel.low => BarcodeQRCorrectionLevel.low,
        QRCorrectionLevel.medium => BarcodeQRCorrectionLevel.medium,
        QRCorrectionLevel.quartile => BarcodeQRCorrectionLevel.quartile,
        QRCorrectionLevel.high => BarcodeQRCorrectionLevel.high,
      };

      final imageBytes = await compute(
        _createPNGImage,
        (data: data, correctionLevel: errorCorrectLevel),
      );

      await file.writeAsBytes(imageBytes);

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

  Future<File> _makePPNGFile(String? fileName) async {
    final directory = await getTemporaryDirectory();
    return File('${directory.path}/$fileName');
  }
}

Future<Uint8List> _createPNGImage(
  ({
    String data,
    BarcodeQRCorrectionLevel correctionLevel,
  }) params,
) async {
  final bc = Barcode.qrCode(errorCorrectLevel: params.correctionLevel);

  final image = img.Image(
    width: _kImageSize,
    height: _kImageSize,
  );

  img.fill(
    image,
    color: img.ColorRgb8(255, 255, 255),
  );

  const padding = (_kImageSize - _kBarcodeSize) ~/ 2;

  drawBarcode(
    image,
    bc,
    params.data,
    x: padding,
    y: padding,
    width: _kBarcodeSize,
    height: _kBarcodeSize,
    color: 0xFF000000,
  );

  return img.encodePng(image);
}
