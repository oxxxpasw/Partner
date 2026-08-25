import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/vendista_request_list_cubit/vendista_request_list_cubit.dart';
import 'package:sosedifedi/domain/models/vendista_request/vendista_request.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class VendistaRequestsScreen extends StatelessWidget implements AutoRouteWrapper {
  const VendistaRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        leadingBackgroundColor: colors.surface,
        backgroundColor: colors.surfaceContainer,
        title: Text(
          LocaleKeys.vendistaRequestsScreen_title.tr(context: context),
        ),
      ),
      backgroundColor: colors.surfaceContainer,
      body: SafeArea(
        child: SrBlocBuilder<VendistaRequestListCubit, VendistaRequestListState,
            VendistaRequestListSr>(
          onSR: (context, sr) => switch (sr) {
            VendistaRequestListErrorSr(:final message) => Messenger.showMessage(
                context: context,
                message: message,
              ),
            VendistaRequestListOpenDetailsSr(:final request) =>
              context.router.push(
                VendistaRequestDetailsRoute(request: request),
              ),
          },
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) => switch (state.status) {
            VendistaRequestListStatus.init ||
            VendistaRequestListStatus.loading =>
              const VendistaRequestsLoadingView(),
            VendistaRequestListStatus.ready => const VendistaRequestsView(),
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<VendistaRequestListCubit>(
      create: (context) => GetIt.I.get()..loadData(),
      child: this,
    );
  }
}

class VendistaRequestsLoadingView extends StatelessWidget {
  const VendistaRequestsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

class VendistaRequestsView extends StatelessWidget {
  const VendistaRequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child:
              BlocBuilder<VendistaRequestListCubit, VendistaRequestListState>(
            buildWhen: (previous, current) =>
                previous.requests != current.requests,
            builder: (context, state) {
              final requests = state.requests ?? [];
              return RefreshIndicator(
                child: ListView.separated(
                  padding: const EdgeInsets.only(
                    top: AppInsets.padding16,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                  ),
                  itemBuilder: (context, index) {
                    final request = requests[index];
                    return VendistaRequestItemWidget(
                      request: request,
                      onPressed: () => context
                          .read<VendistaRequestListCubit>()
                          .onOpenDetailsPressed(request),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: AppInsets.padding10,
                  ),
                  itemCount: requests.length,
                ),
                onRefresh: () =>
                    context.read<VendistaRequestListCubit>().loadData(),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: AppInsets.padding16,
            right: AppInsets.padding16,
            bottom: AppInsets.padding16,
            top: 0,
          ),
          child: FilledButtonWithArrow(
            onPressed: () => onCreateRequestPressed(context),
            label: Text(
              LocaleKeys.vendistaRequestsScreen_createRequest
                  .tr(context: context),
            ),
          ),
        )
      ],
    );
  }

  Future<void> onCreateRequestPressed(BuildContext context) async {
    await context.router.push(
      const CreateVendistaRequestRoute(),
    );
    if (!context.mounted) return;
    context.read<VendistaRequestListCubit>().loadData();
  }
}

class VendistaRequestItemWidget extends StatelessWidget {
  const VendistaRequestItemWidget({
    super.key,
    required this.request,
    this.onPressed,
  });

  final VendistaRequest request;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final enabled = request.needAdditionalInfo;

    final colors = ColorScheme.of(context);

    final backgroundColor = switch (request.status) {
      VendistaRequestStatus.rejected ||
      VendistaRequestStatus.closed =>
        colors.surfaceContainer,
      VendistaRequestStatus.underReview ||
      VendistaRequestStatus.verified ||
      VendistaRequestStatus.dataSent ||
      VendistaRequestStatus.unknown =>
        colors.surface,
    };

    final shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppBorderRadius.large,
        ),
        side: BorderSide(
          width: 2.0,
          color: colors.surfaceContainerHigh,
        ));

    return Card(
      color: backgroundColor,
      shape: shape,
      child: InkWell(
        onTap: enabled ? onPressed : null,
        customBorder: shape,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppInsets.padding16,
            vertical: AppInsets.padding12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      LocaleKeys.vendistaRequestsScreen_requestItem_title.tr(
                        context: context,
                        args: [
                          DateFormat('dd.MM.yyyy').format(request.date),
                        ],
                      ),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  VendistaRequestItemStatusWidget(
                    status: request.status,
                  ),
                ],
              ),
              const SizedBox(height: AppInsets.padding8),
              Text(
                LocaleKeys.vendistaRequestsScreen_requestItem_id.tr(
                  context: context,
                  args: [
                    request.idVendista.toString(),
                  ],
                ),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              if (enabled)
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppInsets.padding8,
                  ),
                  child: Text(
                    LocaleKeys.vendistaRequestsScreen_requestItem_action
                        .tr(context: context),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context)
                              .extension<CustomThemeExtension>()
                              ?.positive,
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

class VendistaRequestItemStatusWidget extends StatelessWidget {
  const VendistaRequestItemStatusWidget({
    super.key,
    required this.status,
  });

  final VendistaRequestStatus status;

  @override
  Widget build(BuildContext context) {
    final title = switch (status) {
      VendistaRequestStatus.rejected =>
        LocaleKeys.vendistaRequestsScreen_requestStatus_rejected,
      VendistaRequestStatus.underReview =>
        LocaleKeys.vendistaRequestsScreen_requestStatus_underReview,
      VendistaRequestStatus.verified =>
        LocaleKeys.vendistaRequestsScreen_requestStatus_verified,
      VendistaRequestStatus.dataSent =>
        LocaleKeys.vendistaRequestsScreen_requestStatus_dataSent,
      VendistaRequestStatus.closed =>
        LocaleKeys.vendistaRequestsScreen_requestStatus_closed,
      VendistaRequestStatus.unknown => null,
    };

    if (title == null) {
      return const SizedBox.shrink();
    }

    final colors = Theme.of(context).extension<CustomThemeExtension>();

    final color = switch (status) {
      VendistaRequestStatus.rejected => colors?.negative,
      VendistaRequestStatus.underReview => colors?.yellow500,
      VendistaRequestStatus.verified => colors?.positive,
      VendistaRequestStatus.unknown => null,
      VendistaRequestStatus.dataSent => const Color(0xFF008AAB),
      VendistaRequestStatus.closed => colors?.negative,
    };

    return Text(
      title.tr(context: context),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: color,
            fontWeight: FontWeight.w500,
          ),
    );
  }
}
