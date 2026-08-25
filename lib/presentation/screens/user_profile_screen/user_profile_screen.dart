import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/user_profile_bloc/user_profile_bloc.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class UserProfileScreen extends StatelessWidget implements AutoRouteWrapper {
  const UserProfileScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UserProfileBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamListener<UserProfileSr>(
      stream: context.read<UserProfileBloc>().singleResults,
      onData: (sr) => switch (sr) {
        UserProfileErrorSr(:final message) => Messenger.showMessage(
            context: context,
            message: message,
          ),
        UserProfileOpenKnowledgeBaseSr(:final uri) => context.router.push(
            KnowledgeBaseWebviewRoute(uri: uri),
          ),
      },
      child: const AutoRouter(),
    );
  }
}
