import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/temperature_response/temperature_response.dart';
import 'package:sosedifedi/domain/bloc/unit_temp_cubit/unit_temp_cubit.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:sosedifedi/utils/utils.dart';

@RoutePage()
class UnitTempScreen extends StatelessWidget implements AutoRouteWrapper {
  const UnitTempScreen({super.key, @pathParam required this.unitId});

  final String unitId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SrBlocBuilder<UnitTempCubit, UnitTempState, UnitTempSr>(
        onSR: (context, sr) => switch (sr) {
          UnitTempErrorSr(:final message) => Messenger.showMessage(
              context: context,
              message: message,
            ),
        },
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) => switch (state.status) {
          UnitTempStateStatus.init ||
          UnitTempStateStatus.loading =>
            const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          UnitTempStateStatus.ready => const UnitTempView(),
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I.get<UnitTempCubit>(param1: unitId)..loadData(),
      child: this,
    );
  }
}

class UnitTempView extends StatelessWidget {
  const UnitTempView({super.key});

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
                  LocaleKeys.unitTempScreen_title.tr(context: context),
                  style: TextTheme.of(context).titleLarge,
                ),
                Text(
                  LocaleKeys.unitTempScreen_interval.tr(context: context),
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
          sliver: BlocBuilder<UnitTempCubit, UnitTempState>(
            buildWhen: (previous, current) =>
                previous.temperatures != current.temperatures,
            builder: (context, state) {
              final temps = state.temperatures ?? [];

              if (temps.isEmpty) {
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
                itemBuilder: (context, index) => UnitTemp(
                  temp: temps[index],
                ),
                separatorBuilder: (_, __) => const SizedBox(
                  height: AppInsets.padding12,
                ),
                itemCount: temps.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class UnitTemp extends StatelessWidget {
  const UnitTemp({
    super.key,
    required this.temp,
  });

  final UnitTemperature temp;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (temp.createdDatetime != null)
          Padding(
            padding: const EdgeInsets.only(bottom: AppInsets.padding2),
            child: Text(
              DateFormat('dd.MM.yyyy HH:mm').format(temp.createdDatetime!),
              style: TextTheme.of(context).bodySmall?.copyWith(
                    color: ColorScheme.of(context).surfaceContainerHighest,
                  ),
            ),
          ),
        if (temp.temperature != null)
          Text(
            LocaleKeys.tempValue.tr(
                context: context, args: [temp.temperature!.toFormatString()]),
          ),
      ],
    );
  }
}
