import 'package:easy_localization/easy_localization.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

import 'messages.dart';

abstract class Messenger {
  Messenger._();

  static void showMessage({
    required BuildContext context,
    required String message,
    Duration? duration = const Duration(seconds: 3),
    flashStyle = FlashBehavior.floating,
    messageType = MessageType.error,
  }) {
    if (messageType == MessageType.error) {
      message = message.replaceAll(RegExp(r'^Exception:|Exception'), '');
    }
    final title = _getMessageTitle(context, messageType);
    final colors = _getMessageColor(context, messageType);
    showFlash(
      context: context,
      duration: duration,
      builder: (context, controller) {
        return FlashBar(
          dismissDirections: const [
            FlashDismissDirection.endToStart,
            FlashDismissDirection.startToEnd,
          ],
          behavior: flashStyle,
          backgroundColor: colors.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius.large),
          ),
          margin: const EdgeInsets.all(AppInsets.padding16),
          position: FlashPosition.top,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null) ...[
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: colors.foregroundColor,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding8,
                ),
              ],
              Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colors.foregroundColor,
                    ),
              ),
            ],
          ),
          controller: controller,
        );
      },
    );
  }

  static MessageColors _getMessageColor(
      BuildContext context, MessageType messageType) {
    final theme = Theme.of(context);

    final colors =
        theme.extension<CustomThemeExtension>()?.appColors ?? AppColors.base();

    switch (messageType) {
      case MessageType.success:
        return MessageColors(
          foregroundColor: colors.onSuccess,
          backgroundColor: colors.success,
        );
      case MessageType.error:
        return MessageColors(
          foregroundColor: colors.onError,
          backgroundColor: colors.error,
        );
      case MessageType.warning:
        return MessageColors(
          foregroundColor: colors.onWarning,
          backgroundColor: colors.warning,
        );
      case MessageType.message:
        return MessageColors(
          foregroundColor: colors.onPrimary,
          backgroundColor: colors.primary,
        );
    }
  }

  static String? _getMessageTitle(
      BuildContext context, MessageType messageType) {
    switch (messageType) {
      case MessageType.success:
        return context.tr(LocaleKeys.messages_success_label);
      case MessageType.error:
        return context.tr(LocaleKeys.messages_error_label);
      case MessageType.warning:
        return context.tr(LocaleKeys.messages_warning_label);
      case MessageType.message:
        return null;
    }
  }
}

class MessageColors {
  MessageColors({
    required this.foregroundColor,
    required this.backgroundColor,
  });

  final Color backgroundColor;
  final Color foregroundColor;
}
