import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/splash_bloc/splash_bloc.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/splash_control.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class SplashScreen extends StatefulWidget implements AutoRouteWrapper {
  const SplashScreen({
    super.key,
    this.onLoad,
  });

  final void Function(String? initialDeepLink)? onLoad;

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => GetIt.I.get()..init(),
      child: this,
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(), () => SplashControl.remove());
  }

  @override
  Widget build(BuildContext context) {
    return StreamListener<SplashSr>(
      stream: context.read<SplashBloc>().singleResults,
      onData: (sr) => switch (sr) {
        ReadySr(:var initialDeepLink) => widget.onLoad?.call(initialDeepLink),
        ErrorSr(:var error) => () {
            Messenger.showMessage(context: context, message: error);
            return context
                .innerRouterOf<StackRouter>(SplashRoute.name)
                ?.replace(const SplashErrorRoute());
          }(),
        NeedUpdateSr() => context
            .innerRouterOf<StackRouter>(SplashRoute.name)
            ?.replace(const SplashUpdateRoute()),
      },
      child: const AutoRouter(),
    );
  }
}
