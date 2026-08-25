import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/connection_status_response/connection_status_response.dart';
import 'package:sosedifedi/domain/bloc/unit_events_cubit/unit_events_cubit.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class UnitEventsScreen extends StatelessWidget implements AutoRouteWrapper {
  const UnitEventsScreen({super.key, @pathParam required this.unitId});

  final String unitId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SrBlocBuilder<UnitEventsCubit, UnitEventsState, UnitEventsSr>(
        onSR: (context, sr) => switch (sr) {
          UnitEventsErrorSr(:final message) => Messenger.showMessage(
              context: context,
              message: message,
            ),
        },
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) => switch (state.status) {
          UnitEventsStateStatus.init ||
          UnitEventsStateStatus.loading =>
            const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          UnitEventsStateStatus.ready => const UnitEventsView(),
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<UnitEventsCubit>(param1: unitId)..loadData(),
      child: this,
    );
  }
}

class UnitEventsView extends StatelessWidget {
  const UnitEventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(
            top: AppInsets.padding32,
            right: AppInsets.padding16,
            left: AppInsets.padding16,
            bottom: AppInsets.padding10,
          ),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.unitEventsScreen_title.tr(context: context),
                  style: TextTheme.of(context).titleLarge,
                ),
                Text(
                  LocaleKeys.unitEventsScreen_interval.tr(context: context),
                  style: TextTheme.of(context).bodySmall?.copyWith(
                        color: ColorScheme.of(context).surfaceContainerHighest,
                      ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            right: AppInsets.padding16,
            left: AppInsets.padding16,
            bottom: AppInsets.padding16,
          ),
          sliver: BlocBuilder<UnitEventsCubit, UnitEventsState>(
            buildWhen: (previous, current) =>
                previous.statuses != current.statuses,
            builder: (context, state) {
              final statuses = state.statuses ?? [];

              if (statuses.isEmpty) {
                return SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppInsets.padding8,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Center(
                      child: Text(
                        LocaleKeys.emptyData.tr(context: context),
                        style: TextTheme.of(context).titleMedium,
                      ),
                    ),
                  ),
                );
              }

              return SliverList.separated(
                itemBuilder: (context, index) => UnitEvent(
                  event: statuses[index],
                ),
                separatorBuilder: (_, __) => const SizedBox(
                  height: AppInsets.padding12,
                ),
                itemCount: statuses.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class UnitEvent extends StatelessWidget {
  const UnitEvent({
    super.key,
    required this.event,
  });

  final ConnectionStatus event;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (event.createdDatetime != null)
          Padding(
            padding: const EdgeInsets.only(bottom: AppInsets.padding2),
            child: Text(
              DateFormat('dd.MM.yyyy HH:mm').format(event.createdDatetime!),
              style: TextTheme.of(context).bodySmall?.copyWith(
                    color: ColorScheme.of(context).surfaceContainerHighest,
                  ),
            ),
          ),
        if (event.status != null)
          Text(
            event.status!,
          ),
      ],
    );
  }
}
