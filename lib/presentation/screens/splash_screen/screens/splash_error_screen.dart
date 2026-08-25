import 'dart:math' as math;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/domain/bloc/splash_bloc/splash_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/additional_text_theme/additional_text_theme.dart';
import 'package:sosedifedi/presentation/theme/models/app_fonts.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SplashErrorScreen extends StatelessWidget {
  const SplashErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: -math.pi / 12.0,
                      child: Text(
                        context.tr(LocaleKeys.splash_error_label),
                        style: TextStyle(
                          fontFamily: AppFonts.vasekItalic,
                          fontSize: 60.0,
                          height: 0.7,
                          letterSpacing: 0.15,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppInsets.padding48,
                    ),
                    Image.asset('assets/images/rooster_white.png'),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppBorderRadius.large),
                    topRight: Radius.circular(AppBorderRadius.large),
                  )),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(AppInsets.padding16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            context.tr(LocaleKeys.splash_error_title),
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: AppInsets.padding32,
                          ),
                          Text(
                            context.tr(LocaleKeys.splash_error_descr),
                            style: Theme.of(context)
                                .extension<AdditionalTextThemeExtension>()!
                                .titleMediumReg,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: AppInsets.padding32,
                          ),
                          TextButton(
                            onPressed: () => context.read<SplashBloc>().init(),
                            child: Text(
                              context.tr(LocaleKeys.reload),
                            ),
                          ),
                          const Spacer(),
                          const SizedBox(
                            height: AppInsets.padding32,
                          ),
                          Center(
                            child: Image.asset('assets/images/logo_text.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
