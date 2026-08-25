import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/create_new_vendista_request_bloc/create_new_vendista_request_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/popup/popup.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class CreateVendistaRequestScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const CreateVendistaRequestScreen({super.key});

  @override
  State<CreateVendistaRequestScreen> createState() =>
      _CreateVendistaRequestScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CreateNewVendistaRequestBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}

class _CreateVendistaRequestScreenState
    extends State<CreateVendistaRequestScreen> {
  final _routerKey = GlobalKey<AutoRouterState>();

  StackRouter? get _router => _routerKey.currentState?.controller;

  @override
  Widget build(BuildContext context) {
    return StreamListener<CreateNewVendistaRequestSr>(
      stream: context.read<CreateNewVendistaRequestBloc>().singleResults,
      onData: (sr) => switch (sr) {
        CreateNewVendistaRequestErrorSr(:final message) =>
          Messenger.showMessage(
            context: context,
            message: message,
          ),
        CreateNewVendistaRequestCreatedSr() => () async {
            context.router.root.pop();
            if (!context.mounted) return;
            showPopup(
              useRootNavigator: true,
              context: context,
              title: Text(
                LocaleKeys.createVendistaRequestScreen_successScreen_message
                    .tr(context: context),
              ),
              confirmLabel: Text(
                LocaleKeys.createVendistaRequestScreen_successScreen_action
                    .tr(context: context),
              ),
            );
          }(),
        ShowCMIdSelectScreen() => _router?.push(
            const VendistaChooseIdRoute(),
          ),
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            LocaleKeys.createVendistaRequestScreen_title.tr(
              context: context,
            ),
          ),
        ),
        body: SafeArea(
          child: AutoRouter(
            key: _routerKey,
          ),
        ),
      ),
    );
  }
}
