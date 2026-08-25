import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

@RoutePage()
class KnowledgeBaseWebviewScreen extends StatefulWidget {
  const KnowledgeBaseWebviewScreen({
    super.key,
    required this.uri,
    this.webViewSettings,
  });

  final Uri uri;
  final InAppWebViewSettings? webViewSettings;

  @override
  State<KnowledgeBaseWebviewScreen> createState() =>
      _KnowledgeBaseWebviewScreenState();
}

class _KnowledgeBaseWebviewScreenState
    extends State<KnowledgeBaseWebviewScreen> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  InAppWebViewSettings get _defaultWebViewSettings => InAppWebViewSettings(
        isInspectable: true,
      );

  @override
  Widget build(BuildContext context) {
    final effectiveWebViewSettings =
        widget.webViewSettings ?? _defaultWebViewSettings;

    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
      ),
      body: SafeArea(
        child: InAppWebView(
          key: webViewKey,
          initialUrlRequest: URLRequest(url: WebUri.uri(widget.uri)),
          initialSettings: effectiveWebViewSettings,
          onWebViewCreated: (controller) async {
            webViewController = controller;
            if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
              await controller.startSafeBrowsing();
            }
          },
          // shouldOverrideUrlLoading: _shouldOverrideUrlLoading,
        ),
      ),
    );
  }

  // Future<NavigationActionPolicy?> _shouldOverrideUrlLoading(
  //   InAppWebViewController controller,
  //   NavigationAction navigationAction,
  // ) async {
  //   final url = navigationAction.request.url;
  //
  //   if (url == null || url.host != widget.uri.host) {
  //     return NavigationActionPolicy.CANCEL;
  //   }
  //   return NavigationActionPolicy.ALLOW;
  // }
}
