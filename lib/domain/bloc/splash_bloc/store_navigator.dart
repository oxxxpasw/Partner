import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:sosedifedi/data/models/update/update.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:android_intent_plus/android_intent.dart';

typedef OnError = void Function(Object error);

sealed class StoreNavigator {
  static StoreNavigator? getNavigator(AppsStoreLinks? storeLinks) =>
      switch (defaultTargetPlatform) {
        TargetPlatform.android ||
        TargetPlatform.fuchsia =>
          AndroidStoreNavigator(
            marketUrl: storeLinks?.androidMarketUrl,
          ),
        TargetPlatform.iOS || TargetPlatform.macOS => IOSStoreNavigator(
            appStoreUrl: storeLinks?.itunesUrl,
          ),
        _ => null,
      };

  Future<void> sendUserToStore([OnError? onError]);
}

class IOSStoreNavigator extends StoreNavigator {
  IOSStoreNavigator({
    required this.appStoreUrl,
  });

  final String? appStoreUrl;

  @override
  Future<void> sendUserToStore([OnError? onError]) async {
    final appStoreUrl = this.appStoreUrl;
    if (appStoreUrl == null || appStoreUrl.isEmpty) {
      return;
    }
    if (await canLaunchUrlString(appStoreUrl)) {
      try {
        await launchUrlString(
          appStoreUrl,
          mode: LaunchMode.externalNonBrowserApplication,
        );
      } catch (e) {
        onError?.call(e);
      }
    }
  }
}

class AndroidStoreNavigator extends StoreNavigator {
  AndroidStoreNavigator({
    required this.marketUrl,
  });

  final String? marketUrl;

  @override
  Future<void> sendUserToStore([OnError? onError]) async {
    final marketUrl = this.marketUrl;
    if (marketUrl == null || marketUrl.isEmpty) {
      return;
    }
    try {
      return AndroidIntent(
        action: 'action_view',
        data: marketUrl,
      ).launchChooser(tr(LocaleKeys.appMarket_label));
    } catch (e) {
      onError?.call(e);
    }
  }
}
