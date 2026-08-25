import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/reports/reports_response/reports_response.dart';
import 'package:sosedifedi/domain/bloc/division_details_cubit/division_details_cubit.dart';
import 'package:sosedifedi/domain/bloc/open_fridge_bloc/open_fridge_cubit.dart';
import 'package:sosedifedi/domain/models/divisions/division_units/division_unit.dart';
import 'package:sosedifedi/domain/models/divisions/metrics/metric.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/period_selector/period_selector.dart';
import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:sosedifedi/presentation/components/text_loading_placeholder.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:sosedifedi/utils/utils.dart';

const _kLoadingChipPlaceholderWidth = 80.0;
const _kLoadingChipPlaceholderHeight = 36.0;

@RoutePage()
class DivisionDetailsScreen extends StatelessWidget implements AutoRouteWrapper {
  const DivisionDetailsScreen({
    super.key,
    @pathParam required this.divisionId,
  });

  final String divisionId;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return Scaffold(
      backgroundColor: colors.surfaceContainer,
      appBar: CustomAppBar(
        title: BlocBuilder<DivisionDetailsCubit, DivisionDetailsState>(
          buildWhen: (previous, current) =>
              previous.division != current.division,
          builder: (context, state) {
            final division = state.division;
            if (division == null) {
              return const SizedBox.shrink();
            }
            return Text(
              LocaleKeys.divisionDetails_title.tr(
                context: context,
                namedArgs: {
                  "address": division.address ?? '',
                  "name": division.divisionName,
                },
              ),
            );
          },
        ),
        leadingBackgroundColor: colors.surface,
        backgroundColor: colors.surfaceContainer,
      ),
      body: SrBlocBuilder<DivisionDetailsCubit, DivisionDetailsState,
          DivisionDetailsSr>(
        onSR: (context, sr) => switch (sr) {
          DivisionDetailsErrorSr(:final message) => Messenger.showMessage(
              context: context,
              message: message,
            ),
          CreateDivisionDocumentSr(:final store, :final type, :final unitId) =>
            context.router.push(
              FridgeQrScanRoute2(
                store: store,
                fridgeId: unitId,
                creationType: type,
              ),
            ),
          ShowReportScreenSr(:final id, :final unitId) => context.router.push(
              ReportRoute(
                id: id,
                unitId: unitId,
              ),
            ),
          ShowEventsScreenSr(:final unitId) => context.router.push(
              UnitEventsRoute(
                unitId: unitId,
              ),
            ),
          ShowTempScreenSr(:final unitId) => context.router.push(
              UnitTempRoute(
                unitId: unitId,
              ),
            ),
        },
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return switch (state.status) {
            DivisionDetailsStatus.init ||
            DivisionDetailsStatus.loading =>
              const DivisionDetailsLoadingView(),
            DivisionDetailsStatus.ready => const DivisionDetailsView(),
          };
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<DivisionDetailsCubit>(
      create: (context) => GetIt.I.get(param1: divisionId)..loadData(),
      child: this,
    );
  }
}

class DivisionDetailsLoadingView extends StatelessWidget {
  const DivisionDetailsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    Widget generator(_) {
      return Padding(
        padding: const EdgeInsets.only(
          top: AppInsets.padding20,
          left: AppInsets.padding16,
          right: AppInsets.padding16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoadingContainerPlaceholder(
              height: 30,
              width: size.width * 0.7,
              borderRadius: BorderRadius.circular(80),
            ),
            const SizedBox(
              height: AppInsets.padding10,
            ),
            GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: AppInsets.padding8,
                crossAxisSpacing: AppInsets.padding8,
                mainAxisExtent: 41.0,
              ),
              itemBuilder: (context, index) => LoadingContainerPlaceholder(
                borderRadius: BorderRadius.circular(AppBorderRadius.medium),
              ),
              itemCount: 2,
            ),
            const SizedBox(
              height: AppInsets.padding10,
            ),
            GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: AppInsets.padding8,
                crossAxisSpacing: AppInsets.padding8,
                mainAxisExtent: 100.0,
              ),
              itemBuilder: (context, index) => LoadingContainerPlaceholder(
                borderRadius: BorderRadius.circular(AppBorderRadius.medium2),
              ),
              itemCount: 4,
            ),
          ],
        ),
      );
    }

    Widget generator2(_) {
      return Padding(
        padding: const EdgeInsets.only(
          right: AppInsets.padding16,
        ),
        child: LoadingContainerPlaceholder(
          height: _kLoadingChipPlaceholderHeight,
          width: _kLoadingChipPlaceholderWidth,
          borderRadius: BorderRadius.circular(_kLoadingChipPlaceholderHeight),
        ),
      );
    }

    return SafeArea(
      child: ShimmerLoading(
        isLoading: false,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding16,
          ),
          children: [
            SizedBox(
              height: _kLoadingChipPlaceholderHeight,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppInsets.padding16,
                ),
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: List.generate(4, generator2),
              ),
            ),
            ...List.generate(2, generator),
          ],
        ),
      ),
    );
  }
}

class DivisionDetailsView extends StatelessWidget {
  const DivisionDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocBuilder<DivisionDetailsCubit, DivisionDetailsState>(
        builder: (context, state) {
          final units = state.units ?? [];
          return RefreshIndicator(
            onRefresh: () =>
                context.read<DivisionDetailsCubit>().loadData(true),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppInsets.padding8,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: SizedBox(
                      height: 52,
                      child: BlocBuilder<DivisionDetailsCubit,
                          DivisionDetailsState>(
                        buildWhen: (previous, current) =>
                            previous.period != current.period ||
                            previous.metricPeriods != current.metricPeriods,
                        builder: (context, state) {
                          return PeriodSelector(
                            selectedPeriod: state.period!,
                            items: state.metricPeriods ?? [],
                            onPeriodChanged: (period) => context
                                .read<DivisionDetailsCubit>()
                                .onPeriodChanged(period),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppInsets.padding16,
                  ),
                  sliver: SliverList.separated(
                    itemCount: units.length,
                    itemBuilder: (context, index) => DivisionUnitWidget(
                      divisionUnit: units[index],
                    ),
                    separatorBuilder: (_, __) => const SizedBox(
                      height: AppInsets.padding16,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.viewPaddingOf(context).bottom +
                        AppInsets.padding16,
                  ),
                  sliver: const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  ),
                ),
                // SliverPadding(
                //   padding: EdgeInsets.only(
                //     top: AppInsets.padding20,
                //     right: AppInsets.padding16,
                //     bottom: MediaQuery.viewPaddingOf(context).bottom +
                //         AppInsets.padding16,
                //     left: AppInsets.padding16,
                //   ),
                //   sliver: SliverToBoxAdapter(
                //     child: FilledButtonWithArrow(
                //       onPressed: () => context.router.push(
                //         ReviewsRoute(
                //           storeId: state.division?.divisionId,
                //           storeName: state.division?.divisionName,
                //           storeAddress: state.division?.address,
                //         ),
                //       ),
                //       label: Text(
                //         LocaleKeys.divisionDetails_reviews.tr(context: context),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class DivisionUnitWidget extends StatelessWidget {
  const DivisionUnitWidget({
    super.key,
    required this.divisionUnit,
  });

  final DivisionUnit divisionUnit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          divisionUnit.unitName,
          style: TextTheme.of(context).titleMedium,
        ),
        DivisionActions(
          divisionUnit: divisionUnit,
        ),
        BlocBuilder<DivisionDetailsCubit, DivisionDetailsState>(
          builder: (context, state) {
            return DivisionMetricsGridWidget(
              metrics: divisionUnit.metrics,
              reports: state.reports ?? [],
              unit: divisionUnit,
            );
          },
        ),
        if (divisionUnit.type == DivisionUnitType.coffeeMachine)
          const IngredientsWidget(),
      ],
    );
  }
}

class IngredientsWidget extends StatefulWidget {
  const IngredientsWidget({super.key});

  @override
  State<IngredientsWidget> createState() => _IngredientsWidgetState();
}

class _IngredientsWidgetState extends State<IngredientsWidget> {
  int _selectedCategoryIndex = 0;

  static const _categories = [
    {
      'title': '☕ База',
      'keys': ['кофе', 'сухая', 'молок', 'шоколад'],
    },
    {
      'title': '🥤 Смеси и сироп',
      'keys': ['раф', 'банан', 'малин', 'кокос', 'сироп'],
    },
    {
      'title': '📦 Расходники',
      'keys': ['стакан', 'крышка', 'салфетка', 'трубочка', 'палочка', 'сахар', 'вода'],
    },
    {
      'title': 'Все (16)',
      'keys': <String>[],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DivisionDetailsCubit, DivisionDetailsState>(
      buildWhen: (previous, current) =>
          previous.ingredients != current.ingredients,
      builder: (context, state) {
        final ingredients = state.ingredients;
        if (ingredients.isEmpty) {
          return const SizedBox.shrink();
        }

        final selectedKeys =
            _categories[_selectedCategoryIndex]['keys'] as List<String>;
        final filtered = selectedKeys.isEmpty
            ? ingredients
            : ingredients.where((item) {
                final name = (item['name'] as String? ?? '').toLowerCase();
                return selectedKeys.any((k) => name.contains(k));
              }).toList();

        return Padding(
          padding: const EdgeInsets.only(top: AppInsets.padding16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ингредиенты',
                    style: TextTheme.of(context).titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    '${filtered.length} из ${ingredients.length}',
                    style: TextTheme.of(context).bodySmall?.copyWith(
                          color: Theme.of(context)
                              .extension<CustomThemeExtension>()
                              ?.labelColor,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: AppInsets.padding8),
              // Category Filter Chips
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(_categories.length, (idx) {
                    final isSelected = _selectedCategoryIndex == idx;
                    return Padding(
                      padding: const EdgeInsets.only(right: AppInsets.padding8),
                      child: ChoiceChip(
                        label: Text(
                          _categories[idx]['title'] as String,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight:
                                isSelected ? FontWeight.w600 : FontWeight.w500,
                            color: isSelected ? Colors.white : null,
                          ),
                        ),
                        selected: isSelected,
                        selectedColor: const Color(0xFF194F2F),
                        backgroundColor: ColorScheme.of(context).surface,
                        showCheckmark: false,
                        side: BorderSide(
                          color: isSelected
                              ? const Color(0xFF194F2F)
                              : Colors.grey.withOpacity(0.2),
                        ),
                        onSelected: (selected) {
                          if (selected) {
                            setState(() {
                              _selectedCategoryIndex = idx;
                            });
                          }
                        },
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: AppInsets.padding10),
              GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: AppInsets.padding8,
                  crossAxisSpacing: AppInsets.padding8,
                  mainAxisExtent: 90.0,
                ),
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final item = filtered[index];
                  final name = item['name'] as String? ?? '';
                  final amount =
                      (item['current_amount'] as num?)?.toDouble() ?? 0;
                  final unit = item['unit'] as String? ?? 'г';
                  final isLow = item['low_stock'] as bool? ?? false;

                  return Card(
                    color: ColorScheme.of(context).surface,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppBorderRadius.medium2),
                      side: isLow
                          ? const BorderSide(
                              color: Color(0xFFE56A54), width: 1.5)
                          : BorderSide.none,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppInsets.padding12,
                        vertical: AppInsets.padding8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextTheme.of(context).bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                amount == amount.roundToDouble()
                                    ? amount.toInt().toString()
                                    : amount.toStringAsFixed(1),
                                style: TextTheme.of(context)
                                    .titleLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: isLow
                                          ? const Color(0xFFE56A54)
                                          : null,
                                    ),
                              ),
                              const Spacer(),
                              Text(
                                unit,
                                style: TextTheme.of(context)
                                    .bodySmall
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .extension<CustomThemeExtension>()
                                          ?.labelColor,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class DivisionMetricsGridWidget extends StatelessWidget {
  const DivisionMetricsGridWidget({
    super.key,
    required this.metrics,
    required this.reports,
    required this.unit,
  });

  final List<Metric> metrics;
  final DivisionUnit unit;
  final List<ReportResponse> reports;

  @override
  Widget build(BuildContext context) {
    if (metrics.isEmpty) {
      return const SizedBox.shrink();
    }

    final children = <Widget>[];

    for (final metric in metrics) {
      children.add(
        DivisionUnitMetricWidget(
          metric: metric,
        ),
      );
    }

    for (final report in reports) {
      children.add(
        ReportWidget(
          report: report,
          unit: unit,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: AppInsets.padding10,
      ),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: AppInsets.padding8,
          crossAxisSpacing: AppInsets.padding8,
          mainAxisExtent: 100.0,
        ),
        itemBuilder: (context, index) => children[index],
        itemCount: children.length,
      ),
    );
  }
}

class ReportWidget extends StatelessWidget {
  const ReportWidget({
    super.key,
    required this.report,
    required this.unit,
  });

  final ReportResponse report;
  final DivisionUnit unit;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return Card(
      color: colors.primary.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.medium2),
      ),
      child: InkWell(
        onTap: () => context.read<DivisionDetailsCubit>().onReportPressed(
              report.id,
              unit.unitId,
            ),
        child: Padding(
          padding: const EdgeInsets.all(
            AppInsets.padding12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.divisionDetails_report.tr(context: context),
                maxLines: 1,
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: colors.primary,
                    ),
              ),
              Text(
                report.name,
                style: TextTheme.of(context).titleLarge,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DivisionUnitMetricWidget extends StatelessWidget {
  const DivisionUnitMetricWidget({
    super.key,
    required this.metric,
  });

  final Metric metric;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomThemeExtension>();

    return Card(
      color: ColorScheme.of(context).surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.medium2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          AppInsets.padding12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    metric.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                const SizedBox(
                  width: AppInsets.padding2,
                ),
                Text(
                  metric.diffInPercentString,
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: switch (metric.diffInPercent) {
                          > 0 => colors?.positive,
                          < 0 => colors?.negative,
                          _ => colors?.labelColor,
                        },
                      ),
                ),
              ],
            ),
            Text(
              metric.fact.toFormatString(),
              style: TextTheme.of(context).titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class DivisionActions extends StatelessWidget {
  const DivisionActions({
    super.key,
    required this.divisionUnit,
  });

  final DivisionUnit divisionUnit;

  @override
  Widget build(BuildContext context) {
    final List<Widget> actions = switch (divisionUnit.type) {
      DivisionUnitType.fridge => _getActionsForFridge(context),
      DivisionUnitType.coffeeMachine => _getActionsForCoffeeMachine(context),
      DivisionUnitType.unknown => [],
    };

    if (actions.isEmpty) {
      return const SizedBox.shrink();
    }

    return TextButtonTheme(
      data: TextButtonThemeData(
        style: TextButtonTheme.of(context).style?.copyWith(
              backgroundColor:
                  WidgetStatePropertyAll(ColorScheme.of(context).surface),
              padding: const WidgetStatePropertyAll(EdgeInsets.zero),
            ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppInsets.padding10,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: AppInsets.padding8,
              ),
              child: SizedBox(
                height: 80.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: AppInsets.padding8,
                  children: [
                    Expanded(
                      child: DivisionEventCard(
                        unitId: divisionUnit.unitId,
                        event: divisionUnit.lastConnection,
                        isConnected: divisionUnit.isConnected,
                      ),
                    ),
                    if (divisionUnit.type == DivisionUnitType.fridge)
                      Expanded(
                        child: DivisionTempCard(
                          unitId: divisionUnit.unitId,
                          temp: divisionUnit.lastTemperature,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: AppInsets.padding8,
                crossAxisSpacing: AppInsets.padding8,
                mainAxisExtent: 41.0,
              ),
              itemBuilder: (context, index) => actions[index],
              itemCount: actions.length,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _getActionsForFridge(BuildContext context) {
    return [
      TextButton(
        onPressed: () => context
            .read<DivisionDetailsCubit>()
            .onGenQrPressed(unit: divisionUnit),
        child: Text(
          LocaleKeys.divisionDetails_fridgeActions_downloadQr
              .tr(context: context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      TextButton(
        onPressed: () => onDiscardingPressed(context),
        child: Text(
          LocaleKeys.divisionDetails_fridgeActions_discarding
              .tr(context: context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      OpenFridgeButton(
        unitId: divisionUnit.unitId,
      ),
      TextButton(
        onPressed: () => onInventarizationPressed(context),
        child: Text(
          LocaleKeys.divisionDetails_fridgeActions_inventarization
              .tr(context: context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ];
  }

  Future<void> onInventarizationPressed(BuildContext context) async {
    final result = await showAdaptiveConfirmDialog(
      context: context,
      title: Text(
        LocaleKeys.divisionDetails_inventarization_question
            .tr(context: context),
      ),
    );

    if (!context.mounted || result == ConfirmDialogResult.cancel) {
      return;
    }

    context.read<DivisionDetailsCubit>().onCreateDivisionDocumentPressed(
          divisionUnit: divisionUnit,
          type: OrderCreationType.inventarization,
        );
  }

  void onDiscardingPressed(BuildContext context) {
    context.read<DivisionDetailsCubit>().onCreateDivisionDocumentPressed(
          divisionUnit: divisionUnit,
          type: OrderCreationType.discarding,
        );
  }

  List<Widget> _getActionsForCoffeeMachine(BuildContext context) {
    return [
      TextButton(
        onPressed: () => context
            .read<DivisionDetailsCubit>()
            .onGenQrPressed(unit: divisionUnit),
        child: Text(
          LocaleKeys.divisionDetails_coffeeMachineActions_downloadQr
              .tr(context: context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ];
  }
}

class DivisionTempCard extends StatelessWidget {
  const DivisionTempCard({
    super.key,
    required this.temp,
    required this.unitId,
  });

  final String unitId;
  final double? temp;

  @override
  Widget build(BuildContext context) {
    final String text;

    if (temp case double temp) {
      text = LocaleKeys.divisionDetails_lastVal.tr(
        context: context,
        args: [
          LocaleKeys.tempValue.tr(
            context: context,
            args: [temp.toFormatString() ?? ''],
          )
        ],
      );
    } else {
      text = LocaleKeys.emptyData.tr(context: context);
    }

    return DivisionCard(
      color: const Color(0xFF2B2B2B),
      foregroundColor: Colors.white,
      title: LocaleKeys.divisionDetails_temp.tr(context: context),
      value: text,
      onPressed: () =>
          context.read<DivisionDetailsCubit>().onTempPressed(unitId),
    );
  }
}

class DivisionEventCard extends StatelessWidget {
  const DivisionEventCard({
    super.key,
    required this.event,
    required this.unitId,
    this.isConnected = true,
  });

  final String unitId;
  final String? event;
  final bool isConnected;

  @override
  Widget build(BuildContext context) {
    final event = this.event;

    final String text;
    if (event != null && event.isNotEmpty) {
      text = LocaleKeys.divisionDetails_lastVal.tr(
        context: context,
        args: [event],
      );
    } else {
      text = LocaleKeys.emptyData.tr(context: context);
    }

    final Color? color;

    if (isConnected) {
      color = null;
    } else {
      color = Theme.of(context).extension<CustomThemeExtension>()?.negative;
    }

    return DivisionCard(
      title: LocaleKeys.divisionDetails_events.tr(context: context),
      value: text,
      color: color,
      onPressed: () =>
          context.read<DivisionDetailsCubit>().onEventsPressed(unitId),
    );
  }
}

class DivisionCard extends StatelessWidget {
  const DivisionCard({
    super.key,
    required this.value,
    required this.title,
    this.onPressed,
    this.color,
    this.foregroundColor,
  });

  final String value;
  final String title;
  final Color? color;
  final Color? foregroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    final color = this.color ?? colors.primary;
    final foregroundColor = this.foregroundColor ?? colors.onPrimary;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppBorderRadius.medium2,
        ),
      ),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          AppBorderRadius.medium2,
        ),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppInsets.padding16,
            vertical: AppInsets.padding12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextTheme.of(context).titleSmall?.copyWith(
                      color: foregroundColor,
                    ),
              ),
              const SizedBox(
                height: AppInsets.padding8,
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: foregroundColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(
                        AppBorderRadius.medium,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppInsets.padding4),
                      child: Center(
                        child: Text(
                          value,
                          overflow: TextOverflow.ellipsis,
                          style: TextTheme.of(context).bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: foregroundColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OpenFridgeButton extends StatelessWidget {
  const OpenFridgeButton({super.key, required this.unitId});

  final String unitId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OpenFridgeCubit>(
      create: (context) => GetIt.I.get(param1: unitId),
      child: const OpenFridgeButtonWidget(),
    );
  }
}

class OpenFridgeButtonWidget extends StatelessWidget {
  const OpenFridgeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<OpenFridgeCubit, OpenFridgeState, OpenFridgeSr>(
      onSR: (context, sr) => switch (sr) {
        OpenFridgeShowSuccessMessageSr() => () {
            HapticFeedback.mediumImpact();
            context.showToast(
              const DeviceSuccessToastWidget(),
              duration: const Duration(seconds: 5),
            );
          }(),
        OpenFridgeErrorSr(:final message) => context.showToast(
            DeviceErrorToastWidget(
              message: message,
            ),
            backgroundColor: ColorScheme.of(context).error,
          ),
      },
      builder: (context, state) {
        final isLoading = state.status == OpenFridgeStateStatus.loading;

        final VoidCallback? onPressed;
        final Widget child;

        if (isLoading) {
          onPressed = null;
          child = const CircularProgressIndicator.adaptive(
            strokeWidth: 2.0,
          );
        } else {
          onPressed =
              () => context.read<OpenFridgeCubit>().onOpenFridgePressed();
          child = Text(
            LocaleKeys.divisionDetails_fridgeActions_open.tr(context: context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          );
        }

        return TextButton(
          onPressed: onPressed,
          child: child,
        );
      },
    );
  }
}

class DeviceErrorToastWidget extends StatelessWidget {
  const DeviceErrorToastWidget({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return Row(
      spacing: AppInsets.padding8,
      children: [
        Icon(
          Icons.close,
          color: colors.onError,
        ),
        Text(
          message,
          style: TextStyle(
            color: colors.onError,
          ),
        ),
      ],
    );
  }
}

class DeviceSuccessToastWidget extends StatefulWidget {
  const DeviceSuccessToastWidget({super.key});

  @override
  State<DeviceSuccessToastWidget> createState() =>
      _DeviceSuccessToastWidgetState();
}

class _DeviceSuccessToastWidgetState extends State<DeviceSuccessToastWidget> {
  Timer? _timer;

  int timeInSec = 5;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), _onTimerTick);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _onTimerTick(Timer timer) {
    setState(() {
      timeInSec--;
      if (timeInSec <= 0) {
        timer.cancel();
        _timer == null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppInsets.padding8,
      children: [
        Icon(
          DerevenkaDobrenkaIcons.check,
          color: ColorScheme.of(context).primary,
        ),
        Text(
          LocaleKeys.divisionDetails_fridgeOpenedMessage
              .tr(context: context, args: [timeInSec.toString()]),
        ),
      ],
    );
  }
}
