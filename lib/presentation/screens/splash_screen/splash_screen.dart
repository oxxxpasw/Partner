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
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(), () => SplashControl.remove());

    // Страховка от вечного сплэша: если SplashBloc по любой причине не
    // пришлёт событие (медленная сеть, сбой инициализации) — уходим дальше
    // сами через 1.2 с. Паттерн из Client; повторный вызов блокирует _loaded.
    Future.delayed(const Duration(milliseconds: 1200), () {
      if (mounted) {
        _onReady(null);
      }
    });
  }

  void _onReady(String? deepLink) {
    if (_loaded) {
      return;
    }
    _loaded = true;
    try {
      widget.onLoad?.call(deepLink);
    } catch (_) {
      // resolver уже завершён (гонка со reevaluateGuards) — не страшно,
      // главное — уйти со сплэша на главный роут ниже.
    }
    if (!mounted) {
      return;
    }
    // Гарантированный уход со сплэша (паттерн Client): onLoad может
    // упереться в guards, ждущие зависшую инициализацию (Firebase/сеть),
    // и тогда приложение оставалось на SplashLoadingRoute навсегда.
    // Самостоятельно заменяем сплэш на главный роут после текущего frame,
    // чтобы не словить assertion '!_debugDoingUpdate' в restoration.dart.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.router.root.replace(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamListener<SplashSr>(
      stream: context.read<SplashBloc>().singleResults,
      onData: (sr) => switch (sr) {
        ReadySr(:var initialDeepLink) => _onReady(initialDeepLink),
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
