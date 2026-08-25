import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/home_cubit/home_cubit.dart';
import 'package:sosedifedi/domain/models/divisions/division/division.dart';
import 'package:sosedifedi/domain/models/divisions/metrics/metric.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/components/period_selector/period_selector.dart';
import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:sosedifedi/presentation/components/text_loading_placeholder.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/screens/vendista_requests_screen/vendista_requests_screen.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

const _kLoadingPlaceholderHeight = 160.0;
const _kLoadingChipPlaceholderWidth = 80.0;
const _kLoadingChipHeight = 36.0;

@RoutePage()
class HomeScreen extends StatefulWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => GetIt.I.get()..loadData(),
      child: this,
    );
  }
}

class _HomeScreenState extends State<HomeScreen> with AutoRouteAware {
  AutoRouteObserver? _observer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    _observer?.subscribe(this, context.routeData);
  }

  @override
  void dispose() {
    _observer?.unsubscribe(this);
    super.dispose();
  }

  @override
  didPopNext() {
    context.read<HomeCubit>().loadData(true);
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        leadingBackgroundColor: colors.surface,
        backgroundColor: colors.surfaceContainer,
        centerTitle: false,
        leadingWidth: 0,
        title: Text(
          LocaleKeys.homeScreen_title.tr(context: context),
          style: TextTheme.of(context).headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () => context.router.push(
              const UserProfileRoute(),
            ),
            icon: Icon(
              size: 34,
              color: ColorScheme.of(context).primary,
              DerevenkaDobrenkaIcons.personSharp,
            ),
          )
        ],
      ),
      backgroundColor: colors.surfaceContainer,
      body: SrBlocBuilder<HomeCubit, HomeState, HomeSr>(
        onSR: (context, sr) => switch (sr) {
          HomeErrorSr(:var error) =>
            Messenger.showMessage(context: context, message: error),
          HomeSuccessSr(:var message) =>
            Messenger.showMessage(context: context, message: message),
          HomeSrOpenDetailsSr(:final request) => context.router.push(
              VendistaRequestDetailsRoute(request: request),
            ),
        },
        buildWhen: (previousState, currentState) =>
            previousState.status != currentState.status ||
            previousState.divisions?.isEmpty != currentState.divisions?.isEmpty,
        builder: (context, state) {
          return switch (state.status) {
            HomeStatus.init || HomeStatus.loading => const HomeLoadingView(),
            HomeStatus.showDivisions => const HomeView(),
            HomeStatus.showVendistaRequests => const HomeRequestsView(),
            HomeStatus.empty => const HomeEmptyView(),
            HomeStatus.hasRequests => const HomeHasRequestsView(),
          };
        },
      ),
    );
  }
}

class HomeLoadingView extends StatelessWidget {
  const HomeLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: false,
      child: LayoutBuilder(builder: (context, constraints) {
        const spacing = AppInsets.padding16;

        final height = constraints.maxHeight - _kLoadingChipHeight - spacing;

        final int itemCount = (height / _kLoadingPlaceholderHeight).ceil();

        return ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: spacing,
              ),
              child: SizedBox(
                height: _kLoadingChipHeight,
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppInsets.padding16,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(4, _genChip),
                ),
              ),
            ),
            ...List.generate(itemCount, _genDiv),
          ],
        );
      }),
    );
  }

  Widget _genDiv(_) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppInsets.padding10,
        left: AppInsets.padding16,
        right: AppInsets.padding16,
      ),
      child: LoadingContainerPlaceholder(
        height: _kLoadingPlaceholderHeight,
        borderRadius: BorderRadius.circular(
          AppBorderRadius.large,
        ),
      ),
    );
  }

  Widget _genChip(_) {
    return SizedBox(
      height: _kLoadingChipHeight,
      child: Padding(
        padding: const EdgeInsets.only(
          right: AppInsets.padding4,
        ),
        child: LoadingContainerPlaceholder(
          height: double.infinity,
          width: _kLoadingChipPlaceholderWidth,
          borderRadius: BorderRadius.circular(_kLoadingChipHeight),
        ),
      ),
    );
  }
}

class HomeHasRequestsView extends StatelessWidget {
  const HomeHasRequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppInsets.padding16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    LocaleKeys.homeScreen_hasRequestsView_title
                        .tr(context: context),
                    style: TextTheme.of(context).bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding20,
                  ),
                  FilledButtonWithArrow(
                    onPressed: () =>
                        context.router.push(const VendistaRequestsRoute()),
                    label: Text(
                      LocaleKeys.homeScreen_hasRequestsView_action
                          .tr(context: context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class HomeEmptyView extends StatefulWidget {
  const HomeEmptyView({super.key});

  @override
  State<HomeEmptyView> createState() => _HomeEmptyViewState();
}

class _HomeEmptyViewState extends State<HomeEmptyView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.router.push(const CreateVendistaRequestRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppInsets.padding16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    LocaleKeys.homeScreen_emptyView_createRequest_title
                        .tr(context: context),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding10,
                  ),
                  FilledButtonWithArrow(
                    onPressed: () => context.router.push(
                      const CreateVendistaRequestRoute(),
                    ),
                    label: Text(
                      LocaleKeys.homeScreen_emptyView_createRequest_action
                          .tr(context: context),
                    ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding32,
                  ),
                  Text(
                    LocaleKeys.homeScreen_emptyView_goToWebsite_title
                        .tr(context: context),
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding10,
                  ),
                  FilledButtonWithArrow(
                    onPressed: () =>
                        context.read<HomeCubit>().onGoToWebsitePressed(),
                    label: Text(
                      LocaleKeys.homeScreen_emptyView_goToWebsite_action
                          .tr(context: context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: IconButton.filled(
        style: IconButton.styleFrom(
          minimumSize: Size.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppBorderRadius.medium,
            ),
          ),
        ),
        onPressed: () => context.router.push(const QrScanRoute()),
        icon: const Icon(
          DerevenkaDobrenkaIcons.scanOutline,
          size: 60,
        ),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previousState, currentState) =>
            previousState.divisions != currentState.divisions,
        builder: (context, state) {
          final divisions = state.divisions ?? [];
          return RefreshIndicator(
            onRefresh: () => context.read<HomeCubit>().loadData(true),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(
                    bottom: AppInsets.padding16,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: SizedBox(
                      height: _kLoadingChipHeight,
                      child: BlocBuilder<HomeCubit, HomeState>(
                        buildWhen: (previous, current) =>
                            previous.period != current.period ||
                            previous.metricPeriods != current.metricPeriods,
                        builder: (context, state) {
                          return PeriodSelector(
                            selectedPeriod: state.period!,
                            items: state.metricPeriods ?? [],
                            onPeriodChanged: (period) => context
                                .read<HomeCubit>()
                                .onPeriodChanged(period),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    right: AppInsets.padding16,
                    bottom: MediaQuery.viewPaddingOf(context).bottom +
                        AppInsets.padding16,
                    left: AppInsets.padding16,
                  ),
                  sliver: SliverList.separated(
                    itemBuilder: (_, index) => DivisionWidget(
                      division: divisions[index],
                      onPressed: () {
                        final division = divisions[index];
                        context.router.push(
                          DivisionDetailsRoute(
                            divisionId: division.divisionId,
                          ),
                        );
                      },
                    ),
                    separatorBuilder: (_, __) => const SizedBox(
                      height: AppInsets.padding10,
                    ),
                    itemCount: divisions.length,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomeRequestsView extends StatelessWidget {
  const HomeRequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previousState, currentState) =>
          previousState.vendistaRequests != currentState.vendistaRequests,
      builder: (context, state) {
        final vendistaRequests = state.vendistaRequests ?? [];

        return RefreshIndicator(
          onRefresh: () => context.read<HomeCubit>().loadData(true),
          child: ListView.separated(
            padding: EdgeInsets.only(
              top: AppInsets.padding16,
              right: AppInsets.padding16,
              bottom: MediaQuery.viewPaddingOf(context).bottom +
                  AppInsets.padding16,
              left: AppInsets.padding16,
            ),
            itemBuilder: (_, index) => VendistaRequestItemWidget(
              request: vendistaRequests[index],
              onPressed: () {
                context.read<HomeCubit>().onOpenDetailsPressed(
                      vendistaRequests[index],
                    );
              },
            ),
            separatorBuilder: (_, __) => const SizedBox(
              height: AppInsets.padding10,
            ),
            itemCount: vendistaRequests.length,
          ),
        );
      },
    );
  }
}

class DivisionWidget extends StatelessWidget {
  const DivisionWidget({
    super.key,
    required this.division,
    this.onPressed,
  });

  final Division division;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomThemeExtension>()!;
    final borderRadius = BorderRadius.circular(AppBorderRadius.large);

    return Card(
      color: colors.primaryBackground,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(
          // color: division.status == DivisionStatus.enabled
          //     ? Colors.transparent
          //     : colors.error,
          color: ColorScheme.of(context).surfaceContainerHigh,
          width: 1,
        ),
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(
            AppInsets.padding16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppInsets.padding16,
            children: [
              Text(
                LocaleKeys.homeScreen_view_divisionCard_title.tr(
                  context: context,
                  namedArgs: {
                    'name': division.divisionName,
                    'address': division.address ?? '',
                  },
                ),
                style: TextTheme.of(context).titleMedium,
              ),
              if (division.metrics.isNotEmpty)
                DivisionMetrics(
                  metrics: division.metrics,
                )
            ],
          ),
        ),
      ),
    );
  }
}

class DivisionMetrics extends StatelessWidget {
  const DivisionMetrics({
    super.key,
    required this.metrics,
  });

  final List<Metric> metrics;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppInsets.padding4,
      children: metrics.map((e) => DivisionMetric(metric: e)).toList(),
    );
  }
}

class DivisionMetric extends StatelessWidget {
  const DivisionMetric({
    super.key,
    required this.metric,
  });

  final Metric metric;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomThemeExtension>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          metric.title,
          style: TextTheme.of(context).bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        RichText(
          text: TextSpan(
            style: TextTheme.of(context).bodyMedium,
            children: [
              TextSpan(
                text: '${metric.fact} ',
                style: TextTheme.of(context).bodyMedium,
              ),
              TextSpan(
                text: '(${metric.diffInPercentString})',
                style: TextStyle(
                  color: switch (metric.diffInPercent) {
                    > 0 => colors?.positive,
                    < 0 => colors?.negative,
                    _ => colors?.labelColor,
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
