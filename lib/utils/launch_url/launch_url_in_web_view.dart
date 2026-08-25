import 'package:flutter_inappwebview/flutter_inappwebview.dart';

///Запускает [url] с помощью [InAppBrowser.openWithSystemBrowser].
///Позволяет избежать обработку [url] как диплинк для приложения.
Future<void> launchUrlInBrowser(String url) async {
  try {
    await InAppBrowser.openWithSystemBrowser(url: WebUri(url));
  } catch (_) {}
}
